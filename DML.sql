COPY individuo(nome, cpf)
FROM 'C:\csvbd\individuo.csv'
DELIMITER ';'
CSV HEADER;

COPY partido(cod_partido, nome, sigla)
FROM 'C:\csvbd\partido.csv'
DELIMITER ';'
CSV HEADER;

COPY candidato(cpf, partido)
FROM 'C:\csvbd\candidato.csv'
DELIMITER ';'
CSV HEADER;

COPY localidade(id, nome,uf)
FROM 'C:\csvbd\localidade_ibge.csv'
DELIMITER ';'
CSV HEADER;


COPY cargo(nome, uf, localidade, quant_eleitos)
FROM 'C:\csvbd\cargo.csv'
DELIMITER ';'
CSV HEADER;

COPY candidatura(cod_candidatura, nome_cargo, uf, localidade, CPF_candidato, ano)
FROM 'C:\csvbd\candidatura.csv'
DELIMITER ';'
CSV HEADER;

COPY pleito(cod_candidatura, num_votos, resultado)
FROM 'C:\csvbd\pleito.csv'
DELIMITER ';'
CSV HEADER;

COPY programa_partido(cod_partido, descricao)
FROM 'C:\csvbd\programa_partido.csv'
DELIMITER ';'
CSV HEADER;

COPY processo_judicial(CPF,num_processo,status_procedente,data_julgamento)
FROM 'C:\csvbd\processo_judicial.csv'
DELIMITER ';'
CSV HEADER;

COMMIT;


/*
FALTA:
individuo_juridico
participante_equipe_apoio
*/