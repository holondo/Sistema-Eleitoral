from flask.templating import render_template
from flask.wrappers import Request
import psycopg2
from psycopg2.extensions import AsIs
from flask import Flask, url_for, redirect, request
import config

app = Flask(__name__, template_folder='templates')

connection = psycopg2.connect(host='localhost',
    database=config.DB_DATABASE,
    user=config.DB_USER,
    password=config.DB_PWD)

cursor = connection.cursor()

def getTable(query):
    cursor.execute(query)
    headers = [info[0] for info in cursor.description]
    rows = cursor.fetchall()

    return headers, rows

#individuos
@app.route('/individuo')
def individuo():
    headers, rows = getTable('select cpf, nome, case when status_limpa = true then \'Ficha limpa\' else \'Ficha suja\' end from individuo')
    return render_template("table_entity.html", tablename="individuo", tableHeaders=headers, tableData=rows)

@app.route('/ficha_limpa')
def ficha_limpa():
    headers, rows = getTable('select cpf, nome, case when status_limpa = true then \'Ficha limpa\' else \'Ficha suja\' end from individuo where status_limpa = true')
    return render_template("table_entity.html", tablename="individuo", tableHeaders=headers, tableData=rows)

@app.route('/processo_judicial')
def processo_judicial():
    headers, rows = getTable('select num_processo, cpf, case when status_procedente = true then \'Culpado\' else \'Inocente\' end as Veredito, data_julgamento from processo_judicial')
    return render_template("table_entity.html", tablename="processo_judicial", tableHeaders=headers, tableData=rows)

@app.route('/partido')
def partido():
    headers, rows = getTable('select cod_partido, nome, prog.descricao from partido natural join programa_partido prog')
    return render_template("table_entity.html", tablename="partido", tableHeaders=headers, tableData=rows)

@app.route('/candidato')
def candidato():
    headers, rows = getTable('select c.cpf, i.nome, p.nome as nome_partido from candidato c join individuo i on c.cpf = i.cpf join partido p on p.cod_partido = c.partido')
    return render_template("table_entity.html", tablename="candidato", tableHeaders=headers, tableData=rows)


@app.route('/individuo_juridico')
def individuo_juridico():
    headers, rows = getTable('select cnpj, nome from individuo_juridico')
    return render_template("table_entity.html", tablename="individuo_juridico", tableHeaders=headers, tableData=rows)

@app.route('/cargo')
def cargo():
    headers, rows = getTable('select nome, localidade, quant_eleitos from cargo')
    return render_template("table_relation.html", tablename="cargo", tableHeaders=headers, tableData=rows)

@app.route('/localidade')
def localidade():
    query = '''select l.id, l.tipo, 
        case 
            when l.tipo = 'cidade' then c.nome
            when l.tipo = 'estado' then e.nome
            when l.tipo = 'federacao' then f.nome
        end as nome,
        case
            when l.tipo = 'cidade' then c.uf
            when l.tipo = 'estado' then e.uf
            else 'Federacao'
        end as UF
        from localidade l
        left join federacao f on l.id = f.id
        left join estado e on l.id = e.id
        left join cidade c on c.id = l.id
        order by l.tipo; '''
    headers, rows = getTable(query)
    return render_template("table_entity.html", tablename="localidade", tableHeaders=headers, tableData=rows)

@app.route('/doacao_pf')
def doacao_pf():
    headers, rows = getTable('select cod_doacao, cpf as Doador, cod_candidatura, valor from doacao_pf')
    return render_template("table_entity.html", tablename="doacao_pf", tableHeaders=headers, tableData=rows)

@app.route('/doacao_pj')
def doacao_pj():
    headers, rows = getTable('select dpj.CNPJ, dpj.cod_candidatura, ij.nome, dpj.valor from doacao_pj dpj natural join individuo_juridico ij')
    return render_template("table_relation.html", tablename="doacao_pj", tableHeaders=headers, tableData=rows)

@app.route('/')
@app.route('/candidatura/')
def candidatura():
    orderBy = request.args.get('orderBy', default='ano', type=str)
    query = '''select c.cod_candidatura, i.nome, i.cpf, c.nome_cargo, 
        case 
            when l.tipo = 'cidade' then ci.nome
            when l.tipo = 'estado' then e.nome
            when l.tipo = 'federacao' then f.nome
        end as Localidade,
        c.ano 
        from candidatura c 
        join individuo i on i.cpf = c.cpf_candidato
        join
        (localidade l
        left join federacao f on l.id = f.id
        left join estado e on l.id = e.id
        left join cidade ci on ci.id = l.id) on l.id = localidade
        order by %s'''
    headers, rows = getTable(query%orderBy)
    return render_template("candidatura.html", tablename="candidatura", tableHeaders=headers, tableData=rows)

@app.route('/pleito/<id>/')
def pleito(id):
    headers, rows = getTable('select cod_candidatura, num_votos as "Numero de votos", case when resultado = true then \'Eleito\' else \'N??o Eleito\' end as Resultado, ano from pleito where cod_candidatura = %s'%id)
    return render_template("table_entity.html", tablename="pleito", tableHeaders=headers, tableData=rows)

@app.route('/participante_equipe_apoio')
def equipe_apoio():
    headers, rows = getTable('select p.cod_candidatura, i.nome as "Nome Candidato", count(p.cpf) as Numero_Participantes from participante_equipe_apoio p natural join candidatura c join individuo i on i.cpf = c.CPF_candidato group by cod_candidatura, i.nome')
    return render_template("equipes.html", tableHeaders=headers, tableData=rows)    

@app.route('/participante_equipe_apoio/<candidatura>')
def participante_equipe_apoio(candidatura):
    headers, rows = getTable('select cod_participante, cod_candidatura, i.nome, ano from participante_equipe_apoio natural join individuo i where cod_candidatura = %s'%candidatura)
    return render_template("table_entity.html", tablename= 'participante_equipe_apoio', tableHeaders=headers, tableData=rows)

@app.route('/delete/<tablename>/<id>/')
def delete_entity(tablename, id):
    key = request.args.get('key', default='id', type=str)
    cursor.execute('delete from %s where %s = %s', (AsIs(tablename), AsIs(key), id))
    #connection.commit()
    
    return redirect(request.referrer)

@app.route('/delete/<tablename>/<id1>/<id2>/')
def delete_relation(tablename, id1, id2):
    key1 = request.args.get('key1', default='id', type=str)
    key2 = request.args.get('key2', default='id', type=str)
    cursor.execute('delete from %s where %s = %s and %s = %s', (AsIs(tablename), AsIs(key1), id1, AsIs(key2), id2))
    #connection.commit()
    
    return redirect(request.referrer)

@app.route('/doacao_pj/<CNPJ>/<candidatura>')
def excluir_doacao_pj(CNPJ, candidatura):
    cursor.execute("delete from doacao_pj where CNPJ= %s and cod_candidatura = %s", (CNPJ, candidatura))
    return redirect(url_for("doacao_pj"))


if __name__ == '__main__':
    app.run(debug=True)
