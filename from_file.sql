create table ies_temp (
    NU_ANO_CENSO varchar(4),
    CO_IES integer,
    primary key(CO_IES),
    NO_IES varchar(200),
    SG_IES varchar(20),
    CO_MANTENEDORA integer,
    NO_MANTENEDORA varchar(200),
    TP_CATEGORIA_ADMINISTRATIVA integer,
    TP_ORGANIZACAO_ACADEMICA integer,
    CO_REGIAO integer,
    CO_UF integer,
    CO_MUNICIPIO integer,
    IN_CAPITAL integer,
    QT_TEC_TOTAL integer,
    QT_TEC_FUNDAMENTAL_INCOMP_FEM integer,
    QT_TEC_FUNDAMENTAL_INCOMP_MASC integer,
    QT_TEC_FUNDAMENTAL_COMP_FEM integer,
    QT_TEC_FUNDAMENTAL_COMP_MASC integer,
    QT_TEC_MEDIO_FEM integer,
    QT_TEC_MEDIO_MASC integer,
    QT_TEC_SUPERIOR_FEM integer,
    QT_TEC_SUPERIOR_MASC integer,
    QT_TEC_ESPECIALIZACAO_FEM integer,
    QT_TEC_ESPECIALIZACAO_MASC integer,
    QT_TEC_MESTRADO_FEM integer,
    QT_TEC_MESTRADO_MASC integer,
    QT_TEC_DOUTORADO_FEM integer,
    QT_TEC_DOUTORADO_MASC integer,
    IN_ACESSO_PORTAL_CAPES boolean,
    IN_ACESSO_OUTRAS_BASES boolean,
    IN_REPOSITORIO_INSTITUCIONAL boolean,
    IN_BUSCA_INTEGRADA boolean,
    IN_SERVICO_INTERNET boolean,
    IN_PARTICIPA_REDE_SOCIAL boolean,
    IN_CATALOGO_ONLINE boolean,
    QT_PERIODICO_ELETRONICO integer,
    QT_LIVRO_ELETRONICO integer,
    TP_REFERENTE integer,
    VL_RECEITA_PROPRIA float,
    VL_RECEITA_TRANSFERENCIA float,
    VL_RECEITA_OUTRA float,
    VL_DESPESA_PESSOAL_DOCENTE float,
    VL_DESPESA_PESSOAL_TECNICO float,
    VL_DESPESA_PESSOAL_ENCARGO float,
    VL_DESPESA_CUSTEIO float,
    VL_DESPESA_INVESTIMENTO float,
    VL_DESPESA_PESQUISA float,
    VL_DESPESA_OUTRA float
);

create table aluno_temp (

    NU_ANO_CENSO integer,
    CO_IES integer,
    TP_CATEGORIA_ADMINISTRATIVA integer,
    TP_ORGANIZACAO_ACADEMICA integer,
    CO_CURSO integer,
    CO_CURSO_POLO integer,
    TP_TURNO integer,
    TP_GRAU_ACADEMICO integer,
    TP_MODALIDADE_ENSINO integer,
    TP_NIVEL_ACADEMICO integer,
    CO_OCDE_AREA_GERAL varchar(1),
    CO_OCDE_AREA_ESPECIFICA varchar(2),
    CO_OCDE_AREA_DETALHADA varchar(3),
    CO_OCDE varchar(6),
    CO_ALUNO bigint,
    CO_ALUNO_CURSO integer,
    primary key(CO_ALUNO_CURSO),

    CO_ALUNO_CURSO_ORIGEM integer,
    TP_COR_RACA integer,
    TP_SEXO integer,
    NU_ANO_NASCIMENTO integer,
    NU_MES_NASCIMENTO integer,
    NU_DIA_NASCIMENTO integer,
    NU_IDADE integer,
    TP_NACIONALIDADE integer,
    CO_PAIS_ORIGEM integer,
    CO_UF_NASCIMENTO integer,
    CO_MUNICIPIO_NASCIMENTO integer,
    TP_DEFICIENCIA integer,
    IN_DEFICIENCIA_AUDITIVA boolean,
    IN_DEFICIENCIA_FISICA boolean,
    IN_DEFICIENCIA_INTELECTUAL boolean,
    IN_DEFICIENCIA_MULTIPLA boolean,
    IN_DEFICIENCIA_SURDEZ boolean,
    IN_DEFICIENCIA_SURDOCEGUEIRA boolean,
    IN_DEFICIENCIA_BAIXA_VISAO boolean,
    IN_DEFICIENCIA_CEGUEIRA boolean,
    IN_DEFICIENCIA_SUPERDOTACAO boolean,
    IN_TGD_AUTISMO_INFANTIL boolean,
    IN_TGD_SINDROME_ASPERGER boolean,
    IN_TGD_SINDROME_RETT boolean,
    IN_TGD_TRANSTOR_DESINTEGRATIVO boolean,
    TP_SITUACAO integer,
    QT_CARGA_HORARIA_TOTAL integer,
    QT_CARGA_HORARIA_INTEG integer,
    DT_INGRESSO_CURSO varchar(10),
    IN_INGRESSO_VESTIBULAR boolean,
    IN_INGRESSO_ENEM boolean,
    IN_INGRESSO_AVALIACAO_SERIADA boolean,
    IN_INGRESSO_SELECAO_SIMPLIFICA boolean,
    IN_INGRESSO_OUTRO_TIPO_SELECAO boolean,
    IN_INGRESSO_VAGA_REMANESC boolean,
    IN_INGRESSO_VAGA_PROG_ESPECIAL boolean,
    IN_INGRESSO_TRANSF_EXOFFICIO boolean,
    IN_INGRESSO_DECISAO_JUDICIAL boolean,
    IN_INGRESSO_CONVENIO_PECG boolean,
    IN_INGRESSO_EGRESSO boolean,
    IN_INGRESSO_OUTRA_FORMA boolean,
    IN_RESERVA_VAGAS boolean,
    IN_RESERVA_ETNICO boolean,
    IN_RESERVA_DEFICIENCIA boolean,
    IN_RESERVA_ENSINO_PUBLICO boolean,
    IN_RESERVA_RENDA_FAMILIAR boolean,
    IN_RESERVA_OUTRA boolean,
    IN_FINANCIAMENTO_ESTUDANTIL boolean,
    IN_FIN_REEMB_FIES boolean,
    IN_FIN_REEMB_ESTADUAL boolean,
    IN_FIN_REEMB_MUNICIPAL boolean,
    IN_FIN_REEMB_PROG_IES boolean,
    IN_FIN_REEMB_ENT_EXTERNA boolean,
    IN_FIN_REEMB_OUTRA boolean,
    IN_FIN_NAOREEMB_PROUNI_INTEGR boolean,
    IN_FIN_NAOREEMB_PROUNI_PARCIAL boolean,
    IN_FIN_NAOREEMB_ESTADUAL boolean,
    IN_FIN_NAOREEMB_MUNICIPAL boolean,
    IN_FIN_NAOREEMB_PROG_IES boolean,
    IN_FIN_NAOREEMB_ENT_EXTERNA boolean,
    IN_FIN_NAOREEMB_OUTRA boolean,
    IN_APOIO_SOCIAL boolean,
    IN_APOIO_ALIMENTACAO boolean,
    IN_APOIO_BOLSA_PERMANENCIA boolean,
    IN_APOIO_BOLSA_TRABALHO boolean,
    IN_APOIO_MATERIAL_DIDATICO boolean,
    IN_APOIO_MORADIA boolean,
    IN_APOIO_TRANSPORTE boolean,
    IN_ATIVIDADE_EXTRACURRICULAR boolean,
    IN_COMPLEMENTAR_ESTAGIO boolean,
    IN_COMPLEMENTAR_EXTENSAO boolean,
    IN_COMPLEMENTAR_MONITORIA boolean,
    IN_COMPLEMENTAR_PESQUISA boolean,
    IN_BOLSA_ESTAGIO boolean,
    IN_BOLSA_EXTENSAO boolean,
    IN_BOLSA_MONITORIA boolean,
    IN_BOLSA_PESQUISA boolean,
    TP_ESCOLA_CONCLUSAO_ENS_MEDIO integer,
    IN_ALUNO_PARFOR boolean,
    TP_SEMESTRE_CONCLUSAO integer,
    TP_SEMESTRE_REFERENCIA integer,
    IN_MOBILIDADE_ACADEMICA boolean,
    TP_MOBILIDADE_ACADEMICA integer,
    TP_MOBILIDADE_ACADEMICA_INTERN integer,
    CO_IES_DESTINO integer,
    CO_PAIS_DESTINO integer,
    IN_MATRICULA boolean,
    IN_CONCLUINTE boolean,
    IN_INGRESSO_TOTAL boolean,
    IN_INGRESSO_VAGA_NOVA boolean,
    IN_INGRESSO_PROCESSO_SELETIVO boolean,
    NU_ANO_INGRESSO integer
);

create table curso_temp (
    NU_ANO_CENSO integer,
    CO_IES integer,
    TP_CATEGORIA_ADMINISTRATIVA integer,
    TP_ORGANIZACAO_ACADEMICA integer,
    CO_LOCAL_OFERTA integer,
    CO_UF integer,
    CO_MUNICIPIO integer,
    IN_CAPITAL boolean,
    CO_CURSO integer,
    primary key(CO_CURSO),

    NO_CURSO varchar(200),
    TP_SITUACAO integer,
    CO_OCDE_AREA_GERAL varchar(1),
    CO_OCDE_AREA_ESPECIFICA varchar(2),
    CO_OCDE_AREA_DETALHADA varchar(3),
    CO_OCDE varchar(6),
    TP_GRAU_ACADEMICO integer,
    TP_MODALIDADE_ENSINO integer,
    TP_NIVEL_ACADEMICO integer,
    IN_GRATUITO boolean,
    TP_ATRIBUTO_INGRESSO integer,
    NU_CARGA_HORARIA integer,
    DT_INICIO_FUNCIONAMENTO varchar(10),
    DT_AUTORIZACAO_CURSO varchar(10),
    IN_AJUDA_DEFICIENTE boolean,
    IN_MATERIAL_DIGITAL boolean,
    IN_MATERIAL_AMPLIADO boolean,
    IN_MATERIAL_TATIL boolean,
    IN_MATERIAL_IMPRESSO boolean,
    IN_MATERIAL_AUDIO boolean,
    IN_MATERIAL_BRAILLE boolean,
    IN_MATERIAL_LIBRAS boolean,
    IN_DISCIPLINA_LIBRAS boolean,
    IN_TRADUTOR_LIBRAS boolean,
    IN_GUIA_INTERPRETE boolean,
    IN_RECURSOS_COMUNICACAO boolean,
    IN_RECURSOS_INFORMATICA boolean,
    IN_INTEGRAL boolean,
    IN_MATUTINO boolean,
    IN_VESPERTINO boolean,
    IN_NOTURNO boolean,
    NU_INTEGRALIZACAO_INTEGRAL float,
    NU_INTEGRALIZACAO_MATUTINO float,
    NU_INTEGRALIZACAO_VESPERTINO float,
    NU_INTEGRALIZACAO_NOTURNO float,
    NU_INTEGRALIZACAO_EAD float,
    IN_OFERECE_DISC_SEMI_PRES boolean,
    NU_PERC_CARGA_SEMI_PRES float,
    IN_POSSUI_LABORATORIO boolean,
    QT_INSC_VAGA_NOVA_INTEGRAL integer,
    QT_INSC_VAGA_NOVA_MATUTINO integer,
    QT_INSC_VAGA_NOVA_VESPERTINO integer,
    QT_INSC_VAGA_NOVA_NOTURNO integer,
    QT_INSC_VAGA_NOVA_EAD integer,
    QT_INSC_VAGA_REMAN_INTEGRAL integer,
    QT_INSC_VAGA_REMAN_MATUTINO integer,
    QT_INSC_VAGA_REMAN_VESPERTINO integer,
    QT_INSC_VAGA_REMAN_NOTURNO integer,
    QT_INSC_VAGA_REMAN_EAD integer,
    QT_INSC_PROG_ESP_INTEGRAL integer,
    QT_INSC_PROG_ESP_MATUTINO integer,
    QT_INSC_PROG_ESP_VESPERTINO integer,
    QT_INSC_PROG_ESP_NOTURNO integer,
    QT_INSC_PROG_ESP_EAD integer,
    QT_INSC_PRINCIPAL_INTEGRAL integer,
    QT_INSC_PRINCIPAL_MATUTINO integer,
    QT_INSC_PRINCIPAL_VESPERTINO integer,
    QT_INSC_PRINCIPAL_NOTURNO integer,
    QT_INSC_PRINCIPAL_EAD integer,
    QT_INSC_OUTRA_VAGA_INTEGRAL integer,
    QT_INSC_OUTRA_VAGA_MATUTINO integer,
    QT_INSC_OUTRA_VAGA_VESPERTINO integer,
    QT_INSC_OUTRA_VAGA_NOTURNO integer,
    QT_INSC_OUTRA_VAGA_EAD integer,
    QT_INSC_ANUAL_INTEGRAL integer,
    QT_INSC_ANUAL_MATUTINO integer,
    QT_INSC_ANUAL_VESPERTINO integer,
    QT_INSC_ANUAL_NOTURNO integer,
    QT_INSC_ANUAL_EAD integer,
    QT_VAGAS_NOVAS_INTEGRAL integer,
    QT_VAGAS_NOVAS_MATUTINO integer,
    QT_VAGAS_NOVAS_VESPERTINO integer,
    QT_VAGAS_NOVAS_NOTURNO integer,
    QT_VAGAS_NOVAS_EAD integer,
    QT_VAGAS_REMAN_INTEGRAL integer,
    QT_VAGAS_REMAN_MATUTINO integer,
    QT_VAGAS_REMAN_VESPERTINO integer,
    QT_VAGAS_REMAN_NOTURNO integer,
    QT_VAGAS_REMAN_EAD integer,
    QT_VAGAS_PROG_ESP_INTEGRAL integer,
    QT_VAGAS_PROG_ESP_MATUTINO integer,
    QT_VAGAS_PROG_ESP_VESPERTINO integer,
    QT_VAGAS_PROG_ESP_NOTURNO integer,
    QT_VAGAS_PROG_ESP_EAD integer,
    QT_VAGAS_PRINCIPAL_INTEGRAL integer,
    QT_VAGAS_PRINCIPAL_MATUTINO integer,
    QT_VAGAS_PRINCIPAL_VESPERTINO integer,
    QT_VAGAS_PRINCIPAL_NOTURNO integer,
    QT_VAGAS_PRINCIPAL_EAD integer,
    QT_VAGAS_OUTRAS_INTEGRAL integer,
    QT_VAGAS_OUTRAS_MATUTINO integer,
    QT_VAGAS_OUTRAS_VESPERTINO integer,
    QT_VAGAS_OUTRAS_NOTURNO integer,
    QT_VAGAS_OUTRAS_EAD integer,
    QT_VAGAS_ANUAL_INTEGRAL integer,
    QT_VAGAS_ANUAL_MATUTINO integer,
    QT_VAGAS_ANUAL_VESPERTINO integer,
    QT_VAGAS_ANUAL_NOTURNO integer,
    QT_VAGAS_ANUAL_EAD integer,
    QT_MATRICULA_TOTAL integer,
    QT_CONCLUINTE_TOTAL integer,
    QT_INGRESSO_TOTAL integer,
    QT_INGRESSO_VAGA_NOVA integer,
    QT_INGRESSO_PROCESSO_SELETIVO integer,
    QT_VAGA_TOTAL integer
);

create table local_oferta_temp (
    NU_ANO_CENSO integer,
    CO_LOCAL_OFERTA integer,
    NO_LOCAL_OFERTA varchar(255),
    CO_IES integer,
    CO_UF integer,
    CO_MUNICIPIO integer,
    IN_CAPITAL boolean,
    IN_SEDE boolean,
    CO_CURSO_POLO integer,
    CO_CURSO integer,
    primary key(CO_LOCAL_OFERTA,CO_IES,CO_CURSO),

    IN_LOCAL_OFERTA_NEAD boolean,
    IN_LOCAL_OFERTA_UAB boolean,
    IN_LOCAL_OFERTA_REITORIA boolean,
    IN_LOCAL_OFERTA_POLO boolean,
    IN_LOCAL_OFERTA_UNID_ACADEMICA boolean,
    QT_COMPUTADOR_DISCENTE integer,
    IN_ACESSIBILIDADE boolean,
    IN_SINALIZACAO_TATIL boolean,
    IN_RAMPA_ACESSO_CORRIMAO boolean,
    IN_ENTRADA_SAIDA_DIMENSAO boolean,
    IN_AMBIENTE_DESOBSTRUIDO boolean,
    IN_SINALIZACAO_SONORA boolean,
    IN_SINALIZACAO_VISUAL boolean,
    IN_EQUIPAMENTO_ELETROMECANICO boolean,
    IN_BANHEIRO_ADAPTADO boolean,
    IN_ESPACO_ATENDIMENTO_ADAPTADO boolean,
    IN_MOBILIARIO_ADAPTADO boolean,
    IN_BEBEDOURO_LAVABO_ADAPTADO boolean,
    IN_RESTAURANTE_UNIVERSITARIO boolean,
    IN_QUADRA_POLIESPORTIVA boolean,
    IN_PISCINA boolean,
    IN_QUADRA_COBERTA_GINASIO boolean,
    IN_CINEMA boolean,
    IN_VESTIARIO boolean,
    IN_SERVICOS boolean,
    IN_ESTACIONAMENTO_DOCENTE boolean,
    IN_CANTINA_LANCHONETE boolean,
    IN_PISTA_ATLETISMO boolean,
    IN_CAMPO_PRATICA_ESPORTIVA boolean,
    IN_AUDITORIO_TEATRO boolean,
    IN_REDE_SEM_FIO_COMU_ACADEMICA boolean,
    IN_POSTO_ATENDIMENTO_1_SOCORRO boolean,
    IN_BICICLETARIO boolean,
    IN_ESTACIONAMENTO_ALUNO boolean,
    IN_MORADIA_ESTUDANTIL boolean,
    IN_EQUIPA_VIDEOCONFERENCIA boolean,
    IN_SALA_COORDENACAO_POLO boolean,
    IN_MICROCOMPUTADOR boolean,
    IN_POSSUI_INTERNET_BANDA_LARGA boolean,
    IN_SALA_ATENDIMENTO_TUTOR boolean
);

CREATE TABLE ocde_temp (
  NU_ANO_CENSO SMALLINT,
  CO_OCDE_AREA_GERAL CHAR(1),
  NO_OCDE_AREA_GERAL VARCHAR(36),
  CO_OCDE_AREA_ESPECIFICA CHAR(2),
  NO_OCDE_AREA_ESPECIFICA VARCHAR(44),
  CO_OCDE_AREA_DETALHADA CHAR(3),
  NO_OCDE_AREA_DETALHADA VARCHAR(64),
  CO_OCDE CHAR(6),
  NO_OCDE VARCHAR(83)
);

create table docente_temp (
    NU_ANO_CENSO integer,
    CO_IES integer,
    TP_CATEGORIA_ADMINISTRATIVA integer,
    TP_ORGANIZACAO_ACADEMICA integer,
    CO_DOCENTE_IES integer,
    CO_DOCENTE bigint,

    primary key(CO_DOCENTE_IES),
    TP_SITUACAO integer,
    TP_ESCOLARIDADE integer,
    TP_REGIME_TRABALHO integer,
    TP_SEXO integer,
    NU_ANO_NASCIMENTO integer,
    NU_MES_NASCIMENTO integer,
    NU_DIA_NASCIMENTO integer,
    NU_IDADE integer,
    TP_COR_RACA integer,
    CO_PAIS_ORIGEM integer,
    TP_NACIONALIDADE integer,
    CO_UF_NASCIMENTO integer,
    CO_MUNICIPIO_NASCIMENTO integer,
    TP_DEFICIENCIA integer,
    IN_DEFICIENCIA_CEGUEIRA boolean,
    IN_DEFICIENCIA_BAIXA_VISAO boolean,
    IN_DEFICIENCIA_SURDEZ boolean,
    IN_DEFICIENCIA_AUDITIVA boolean,
    IN_DEFICIENCIA_FISICA boolean,
    IN_DEFICIENCIA_SURDOCEGUEIRA boolean,
    IN_DEFICIENCIA_MULTIPLA boolean,
    IN_DEFICIENCIA_INTELECTUAL boolean,
    IN_ATUACAO_EAD boolean,
    IN_ATUACAO_EXTENSAO boolean,
    IN_ATUACAO_GESTAO boolean,
    IN_ATUACAO_GRAD_PRESENCIAL boolean,
    IN_ATUACAO_POS_EAD boolean,
    IN_ATUACAO_POS_PRESENCIAL boolean,
    IN_ATUACAO_SEQUENCIAL boolean,
    IN_ATUACAO_PESQUISA boolean,
    IN_BOLSA_PESQUISA boolean,
    IN_SUBSTITUTO boolean,
    IN_EXERCICIO_DATA_REFERENCIA boolean,
    IN_VISITANTE boolean,
    TP_VISITANTE_IFES_VINCULO integer
);

COPY ies_temp FROM '/home/luiz/Downloads/Microdados_Educacao_Superior_2017/DADOS/DM_IES.CSV' USING delimiters '|' CSV HEADER NULL AS ''  encoding 'latin1';
COPY aluno_temp FROM '/home/luiz/Downloads/Microdados_Educacao_Superior_2017/DADOS/DM_ALUNO.CSV' USING delimiters '|' CSV HEADER NULL AS ''  encoding 'latin1';
COPY curso_temp FROM '/home/luiz/Downloads/Microdados_Educacao_Superior_2017/DADOS/DM_CURSO.CSV' USING delimiters '|' CSV HEADER NULL AS ''  encoding 'latin1';
COPY local_oferta_temp FROM '/home/luiz/Downloads/Microdados_Educacao_Superior_2017/DADOS/DM_LOCAL_OFERTA.CSV' USING delimiters '|' CSV HEADER NULL AS ''  encoding 'latin1';
COPY ocde_temp FROM '/home/luiz/Downloads/Microdados_Educacao_Superior_2017/DADOS/TB_AUX_AREA_OCDE.CSV' USING delimiters '|' CSV HEADER NULL AS ''  encoding 'latin1';
COPY docente_temp FROM '/home/luiz/Downloads/Microdados_Educacao_Superior_2017/DADOS/DM_DOCENTE.CSV' USING delimiters '|' CSV HEADER NULL AS ''  encoding 'latin1';

--DROP TABLE ies_temp;
--DROP TABLE aluno_temp;
--DROP TABLE curso_temp;
--DROP TABLE local_oferta_temp;
--DROP TABLE ocde_temp;
--INSERT INTO municipio ( CO_MUNICIPIO, CO_UF, IN_CAPITAL, CO_REGIAO)
--SELECT DISTINCT CO_MUNICIPIO, CO_UF, IN_CAPITAL, CO_REGIAO FROM aux_insert_municipio;

--select * from aux_insert_municipio where in_capital != false;

select * from municipio;
create table aux_insert_municipio (
    id serial primary key,
    CO_MUNICIPIO integer,
    CO_UF integer,
    IN_CAPITAL boolean,
    CO_REGIAO integer
);

--INSERT INTO aux_insert_municipio (CO_MUNICIPIO, CO_UF, IN_CAPITAL)
--            SELECT DISTINCT CO_MUNICIPIO, CO_UF, cast(IN_CAPITAL AS boolean) AS boolean FROM [ies_temp, curso_temp, local_oferta_temp];

--update aux_insert_municipio as ax SET co_regiao = (select co_regiao from uf as u where u.co_uf = ax.co_uf);

--INSERT INTO municipio (CO_MUNICIPIO, CO_UF, IN_CAPITAL, CO_REGIAO)
--            SELECT DISTINCT CO_MUNICIPIO, CO_UF, IN_CAPITAL, CO_REGIAO FROM aux_insert_municipio;

INSERT INTO docente (
    CO_MUNICIPIO_NASCIMENTO,
    CO_DOCENTE,
    TP_SEXO,
    NU_ANO_NASCIMENTO,
    NU_MES_NASCIMENTO,
    NU_DIA_NASCIMENTO,
    NU_IDADE,
    TP_COR_RACA,
    CO_PAIS_ORIGEM,
    TP_NACIONALIDADE,
    TP_DEFICIENCIA,
    IN_DEFICIENCIA_CEGUEIRA,
    IN_DEFICIENCIA_BAIXA_VISAO,
    IN_DEFICIENCIA_SURDEZ,
    IN_DEFICIENCIA_AUDITIVA,
    IN_DEFICIENCIA_FISICA,
    IN_DEFICIENCIA_SURDOCEGUEIRA,
    IN_DEFICIENCIA_MULTIPLA,
    IN_DEFICIENCIA_INTELECTUAL
) SELECT DISTINCT 
    CO_MUNICIPIO_NASCIMENTO,
    CO_DOCENTE,
    TP_SEXO,
    NU_ANO_NASCIMENTO,
    NU_MES_NASCIMENTO,
    NU_DIA_NASCIMENTO,
    NU_IDADE,
    TP_COR_RACA,
    CO_PAIS_ORIGEM,
    TP_NACIONALIDADE,
    TP_DEFICIENCIA,
    IN_DEFICIENCIA_CEGUEIRA,
    IN_DEFICIENCIA_BAIXA_VISAO,
    IN_DEFICIENCIA_SURDEZ,
    IN_DEFICIENCIA_AUDITIVA,
    IN_DEFICIENCIA_FISICA,
    IN_DEFICIENCIA_SURDOCEGUEIRA,
    IN_DEFICIENCIA_MULTIPLA,
    IN_DEFICIENCIA_INTELECTUAL
from docente_temp;

update docente as dc SET co_regiao = (select co_regiao from municipio as m where m.co_municipio = dc.co_municipio_nascimento);
update docente as dc SET co_uf = (select co_uf from municipio as m where m.co_municipio = dc.co_municipio_nascimento);

INSERT INTO ies (
    CO_IES,
    NO_IES,
    SG_IES,
    CO_MANTENEDORA,
    NO_MANTENEDORA,
    TP_CATEGORIA_ADMINISTRATIVA,
    TP_ORGANIZACAO_ACADEMICA,
    CO_MUNICIPIO,
    CO_REGIAO,
    CO_UF,
    QT_TEC_TOTAL,
    QT_TEC_FUNDAMENTAL_INCOMP_FEM,
    QT_TEC_FUNDAMENTAL_INCOMP_MASC,
    QT_TEC_FUNDAMENTAL_COMP_FEM,
    QT_TEC_FUNDAMENTAL_COMP_MASC,
    QT_TEC_MEDIO_FEM,
    QT_TEC_MEDIO_MASC,
    QT_TEC_SUPERIOR_FEM,
    QT_TEC_SUPERIOR_MASC,
    QT_TEC_ESPECIALIZACAO_FEM,
    QT_TEC_ESPECIALIZACAO_MASC,
    QT_TEC_MESTRADO_FEM,
    QT_TEC_MESTRADO_MASC,
    QT_TEC_DOUTORADO_FEM,
    QT_TEC_DOUTORADO_MASC,
    IN_ACESSO_PORTAL_CAPES,
    IN_ACESSO_OUTRAS_BASES,
    IN_REPOSITORIO_INSTITUCIONAL,
    IN_BUSCA_INTEGRADA,
    IN_SERVICO_INTERNET,
    IN_PARTICIPA_REDE_SOCIAL,
    IN_CATALOGO_ONLINE,
    QT_PERIODICO_ELETRONICO,
    QT_LIVRO_ELETRONICO,
    TP_REFERENTE,
    VL_RECEITA_PROPRIA,
    VL_RECEITA_TRANSFERENCIA,
    VL_RECEITA_OUTRA,
    VL_DESPESA_PESSOAL_DOCENTE,
    VL_DESPESA_PESSOAL_TECNICO,
    VL_DESPESA_PESSOAL_ENCARGO,
    VL_DESPESA_CUSTEIO,
    VL_DESPESA_INVESTIMENTO,
    VL_DESPESA_PESQUISA,
    VL_DESPESA_OUTRA
 ) SELECT DISTINCT 
    CO_IES,
    NO_IES,
    SG_IES,
    CO_MANTENEDORA,
    NO_MANTENEDORA,
    TP_CATEGORIA_ADMINISTRATIVA,
    TP_ORGANIZACAO_ACADEMICA,
    CO_MUNICIPIO,
    CO_REGIAO,
    CO_UF,
    QT_TEC_TOTAL,
    QT_TEC_FUNDAMENTAL_INCOMP_FEM,
    QT_TEC_FUNDAMENTAL_INCOMP_MASC,
    QT_TEC_FUNDAMENTAL_COMP_FEM,
    QT_TEC_FUNDAMENTAL_COMP_MASC,
    QT_TEC_MEDIO_FEM,
    QT_TEC_MEDIO_MASC,
    QT_TEC_SUPERIOR_FEM,
    QT_TEC_SUPERIOR_MASC,
    QT_TEC_ESPECIALIZACAO_FEM,
    QT_TEC_ESPECIALIZACAO_MASC,
    QT_TEC_MESTRADO_FEM,
    QT_TEC_MESTRADO_MASC,
    QT_TEC_DOUTORADO_FEM,
    QT_TEC_DOUTORADO_MASC,
    IN_ACESSO_PORTAL_CAPES,
    IN_ACESSO_OUTRAS_BASES,
    IN_REPOSITORIO_INSTITUCIONAL,
    IN_BUSCA_INTEGRADA,
    IN_SERVICO_INTERNET,
    IN_PARTICIPA_REDE_SOCIAL,
    IN_CATALOGO_ONLINE,
    QT_PERIODICO_ELETRONICO,
    QT_LIVRO_ELETRONICO,
    TP_REFERENTE,
    VL_RECEITA_PROPRIA,
    VL_RECEITA_TRANSFERENCIA,
    VL_RECEITA_OUTRA,
    VL_DESPESA_PESSOAL_DOCENTE,
    VL_DESPESA_PESSOAL_TECNICO,
    VL_DESPESA_PESSOAL_ENCARGO,
    VL_DESPESA_CUSTEIO,
    VL_DESPESA_INVESTIMENTO,
    VL_DESPESA_PESQUISA,
    VL_DESPESA_OUTRA
FROM ies_temp;

INSERT INTO docente_ies (
    CO_DOCENTE,
    CO_IES,
    CO_DOCENTE_IES,
    TP_ESCOLARIDADE,
    TP_SITUACAO,
    TP_REGIME_TRABALHO,
    IN_ATUACAO_EAD,
    IN_ATUACAO_EXTENSAO,
    IN_ATUACAO_GESTAO ,
    IN_ATUACAO_GRAD_PRESENCIAL,
    IN_ATUACAO_POS_EAD,
    IN_ATUACAO_POS_PRESENCIAL,
    IN_ATUACAO_SEQUENCIAL,
    IN_ATUACAO_PESQUISA,
    IN_BOLSA_PESQUISA,
    IN_SUBSTITUTO,
    IN_EXERCICIO_DATA_REFERENCIA,
    IN_VISITANTE,
    TP_VISITANTE_IFES_VINCULO
) SELECT DISTINCT
    CO_DOCENTE,
    CO_IES,
    CO_DOCENTE_IES,
    TP_ESCOLARIDADE,
    TP_SITUACAO,
    TP_REGIME_TRABALHO,
    IN_ATUACAO_EAD,
    IN_ATUACAO_EXTENSAO,
    IN_ATUACAO_GESTAO ,
    IN_ATUACAO_GRAD_PRESENCIAL,
    IN_ATUACAO_POS_EAD,
    IN_ATUACAO_POS_PRESENCIAL,
    IN_ATUACAO_SEQUENCIAL,
    IN_ATUACAO_PESQUISA,
    IN_BOLSA_PESQUISA,
    IN_SUBSTITUTO,
    IN_EXERCICIO_DATA_REFERENCIA,
    IN_VISITANTE,
    TP_VISITANTE_IFES_VINCULO
FROM docente_temp;

INSERT INTO local_oferta (
    CO_MUNICIPIO,
    CO_UF,        
    CO_LOCAL_OFERTA,
    NO_LOCAL_OFERTA,
    IN_SEDE,
    IN_LOCAL_OFERTA_NEAD,
    IN_LOCAL_OFERTA_UAB,
    IN_LOCAL_OFERTA_REITORIA,
    IN_LOCAL_OFERTA_POLO,
    IN_LOCAL_OFERTA_UNID_ACADEMICA,
    QT_COMPUTADOR_DISCENTE,
    IN_ACESSIBILIDADE,
    IN_SINALIZACAO_TATIL,
    IN_RAMPA_ACESSO_CORRIMAO,
    IN_ENTRADA_SAIDA_DIMENSAO,
    IN_AMBIENTE_DESOBSTRUIDO,
    IN_SINALIZACAO_SONORA,
    IN_SINALIZACAO_VISUAL,
    IN_EQUIPAMENTO_ELETROMECANICO,
    IN_BANHEIRO_ADAPTADO,
    IN_ESPACO_ATENDIMENTO_ADAPTADO,
    IN_MOBILIARIO_ADAPTADO,
    IN_BEBEDOURO_LAVABO_ADAPTADO,
    IN_RESTAURANTE_UNIVERSITARIO,
    IN_QUADRA_POLIESPORTIVA,
    IN_PISCINA,
    IN_QUADRA_COBERTA_GINASIO,
    IN_CINEMA,
    IN_VESTIARIO,
    IN_SERVICOS,
    IN_ESTACIONAMENTO_DOCENTE,
    IN_CANTINA_LANCHONETE,
    IN_PISTA_ATLETISMO,
    IN_CAMPO_PRATICA_ESPORTIVA,
    IN_AUDITORIO_TEATRO,
    IN_REDE_SEM_FIO_COMU_ACADEMICA,
    IN_POSTO_ATENDIMENTO_1_SOCORRO,
    IN_BICICLETARIO,
    IN_ESTACIONAMENTO_ALUNO,
    IN_MORADIA_ESTUDANTIL,
    IN_EQUIPA_VIDEOCONFERENCIA,
    IN_SALA_COORDENACAO_POLO,
    IN_MICROCOMPUTADOR,
    IN_POSSUI_INTERNET_BANDA_LARGA,
    IN_SALA_ATENDIMENTO_TUTOR
) SELECT DISTINCT
CO_MUNICIPIO,
    CO_UF,        
    CO_LOCAL_OFERTA,
    NO_LOCAL_OFERTA,
    IN_SEDE,
    IN_LOCAL_OFERTA_NEAD,
    IN_LOCAL_OFERTA_UAB,
    IN_LOCAL_OFERTA_REITORIA,
    IN_LOCAL_OFERTA_POLO,
    IN_LOCAL_OFERTA_UNID_ACADEMICA,
    QT_COMPUTADOR_DISCENTE,
    IN_ACESSIBILIDADE,
    IN_SINALIZACAO_TATIL,
    IN_RAMPA_ACESSO_CORRIMAO,
    IN_ENTRADA_SAIDA_DIMENSAO,
    IN_AMBIENTE_DESOBSTRUIDO,
    IN_SINALIZACAO_SONORA,
    IN_SINALIZACAO_VISUAL,
    IN_EQUIPAMENTO_ELETROMECANICO,
    IN_BANHEIRO_ADAPTADO,
    IN_ESPACO_ATENDIMENTO_ADAPTADO,
    IN_MOBILIARIO_ADAPTADO,
    IN_BEBEDOURO_LAVABO_ADAPTADO,
    IN_RESTAURANTE_UNIVERSITARIO,
    IN_QUADRA_POLIESPORTIVA,
    IN_PISCINA,
    IN_QUADRA_COBERTA_GINASIO,
    IN_CINEMA,
    IN_VESTIARIO,
    IN_SERVICOS,
    IN_ESTACIONAMENTO_DOCENTE,
    IN_CANTINA_LANCHONETE,
    IN_PISTA_ATLETISMO,
    IN_CAMPO_PRATICA_ESPORTIVA,
    IN_AUDITORIO_TEATRO,
    IN_REDE_SEM_FIO_COMU_ACADEMICA,
    IN_POSTO_ATENDIMENTO_1_SOCORRO,
    IN_BICICLETARIO,
    IN_ESTACIONAMENTO_ALUNO,
    IN_MORADIA_ESTUDANTIL,
    IN_EQUIPA_VIDEOCONFERENCIA,
    IN_SALA_COORDENACAO_POLO,
    IN_MICROCOMPUTADOR,
    IN_POSSUI_INTERNET_BANDA_LARGA,
    IN_SALA_ATENDIMENTO_TUTOR
FROM local_oferta_temp;

INSERT INTO curso (
    CO_CURSO,
    NU_ANO_CENSO,
    CO_OCDE,
    NO_CURSO,
    TP_SITUACAO,
    TP_GRAU_ACADEMICO,
    TP_MODALIDADE_ENSINO,
    TP_NIVEL_ACADEMICO,
    IN_GRATUITO,
    TP_ATRIBUTO_INGRESSO,
    NU_CARGA_HORARIA,
    DT_INICIO_FUNCIONAMENTO,
    DT_AUTORIZACAO_CURSO,
    IN_AJUDA_DEFICIENTE,
    IN_MATERIAL_DIGITAL,
    IN_MATERIAL_AMPLIADO,
    IN_MATERIAL_TATIL,
    IN_MATERIAL_IMPRESSO,
    IN_MATERIAL_AUDIO,
    IN_MATERIAL_BRAILLE,
    IN_MATERIAL_LIBRAS,
    IN_DISCIPLINA_LIBRAS,
    IN_TRADUTOR_LIBRAS,
    IN_GUIA_INTERPRETE,
    IN_RECURSOS_COMUNICACAO,
    IN_RECURSOS_INFORMATICA,
    IN_INTEGRAL,
    IN_MATUTINO,
    IN_VESPERTINO,
    IN_NOTURNO,
    NU_INTEGRALIZACAO_INTEGRAL,
    NU_INTEGRALIZACAO_MATUTINO,
    NU_INTEGRALIZACAO_VESPERTINO,
    NU_INTEGRALIZACAO_NOTURNO,
    NU_INTEGRALIZACAO_EAD,
    IN_OFERECE_DISC_SEMI_PRES,
    NU_PERC_CARGA_SEMI_PRES,
    IN_POSSUI_LABORATORIO,
    QT_INSC_VAGA_NOVA_INTEGRAL,
    QT_INSC_VAGA_NOVA_MATUTINO,
    QT_INSC_VAGA_NOVA_VESPERTINO,
    QT_INSC_VAGA_NOVA_NOTURNO,
    QT_INSC_VAGA_NOVA_EAD,
    QT_INSC_VAGA_REMAN_INTEGRAL,
    QT_INSC_VAGA_REMAN_MATUTINO,
    QT_INSC_VAGA_REMAN_VESPERTINO,
    QT_INSC_VAGA_REMAN_NOTURNO,
    QT_INSC_VAGA_REMAN_EAD,
    QT_INSC_PROG_ESP_INTEGRAL,
    QT_INSC_PROG_ESP_MATUTINO,
    QT_INSC_PROG_ESP_VESPERTINO,
    QT_INSC_PROG_ESP_NOTURNO,
    QT_INSC_PROG_ESP_EAD,
    QT_INSC_PRINCIPAL_INTEGRAL,
    QT_INSC_PRINCIPAL_MATUTINO,
    QT_INSC_PRINCIPAL_VESPERTINO,
    QT_INSC_PRINCIPAL_NOTURNO,
    QT_INSC_PRINCIPAL_EAD,
    QT_INSC_OUTRA_VAGA_INTEGRAL,
    QT_INSC_OUTRA_VAGA_MATUTINO,
    QT_INSC_OUTRA_VAGA_VESPERTINO,
    QT_INSC_OUTRA_VAGA_NOTURNO,
    QT_INSC_OUTRA_VAGA_EAD,
    QT_INSC_ANUAL_INTEGRAL,
    QT_INSC_ANUAL_MATUTINO,
    QT_INSC_ANUAL_VESPERTINO,
    QT_INSC_ANUAL_NOTURNO,
    QT_INSC_ANUAL_EAD
) SELECT DISTINCT
    CO_CURSO,
    NU_ANO_CENSO,
    CO_OCDE,
    NO_CURSO,
    TP_SITUACAO,
    TP_GRAU_ACADEMICO,
    TP_MODALIDADE_ENSINO,
    TP_NIVEL_ACADEMICO,
    IN_GRATUITO,
    TP_ATRIBUTO_INGRESSO,
    NU_CARGA_HORARIA,
    DT_INICIO_FUNCIONAMENTO,
    DT_AUTORIZACAO_CURSO,
    IN_AJUDA_DEFICIENTE,
    IN_MATERIAL_DIGITAL,
    IN_MATERIAL_AMPLIADO,
    IN_MATERIAL_TATIL,
    IN_MATERIAL_IMPRESSO,
    IN_MATERIAL_AUDIO,
    IN_MATERIAL_BRAILLE,
    IN_MATERIAL_LIBRAS,
    IN_DISCIPLINA_LIBRAS,
    IN_TRADUTOR_LIBRAS,
    IN_GUIA_INTERPRETE,
    IN_RECURSOS_COMUNICACAO,
    IN_RECURSOS_INFORMATICA,
    IN_INTEGRAL,
    IN_MATUTINO,
    IN_VESPERTINO,
    IN_NOTURNO,
    NU_INTEGRALIZACAO_INTEGRAL,
    NU_INTEGRALIZACAO_MATUTINO,
    NU_INTEGRALIZACAO_VESPERTINO,
    NU_INTEGRALIZACAO_NOTURNO,
    NU_INTEGRALIZACAO_EAD,
    IN_OFERECE_DISC_SEMI_PRES,
    NU_PERC_CARGA_SEMI_PRES,
    IN_POSSUI_LABORATORIO,
    QT_INSC_VAGA_NOVA_INTEGRAL,
    QT_INSC_VAGA_NOVA_MATUTINO,
    QT_INSC_VAGA_NOVA_VESPERTINO,
    QT_INSC_VAGA_NOVA_NOTURNO,
    QT_INSC_VAGA_NOVA_EAD,
    QT_INSC_VAGA_REMAN_INTEGRAL,
    QT_INSC_VAGA_REMAN_MATUTINO,
    QT_INSC_VAGA_REMAN_VESPERTINO,
    QT_INSC_VAGA_REMAN_NOTURNO,
    QT_INSC_VAGA_REMAN_EAD,
    QT_INSC_PROG_ESP_INTEGRAL,
    QT_INSC_PROG_ESP_MATUTINO,
    QT_INSC_PROG_ESP_VESPERTINO,
    QT_INSC_PROG_ESP_NOTURNO,
    QT_INSC_PROG_ESP_EAD,
    QT_INSC_PRINCIPAL_INTEGRAL,
    QT_INSC_PRINCIPAL_MATUTINO,
    QT_INSC_PRINCIPAL_VESPERTINO,
    QT_INSC_PRINCIPAL_NOTURNO,
    QT_INSC_PRINCIPAL_EAD,
    QT_INSC_OUTRA_VAGA_INTEGRAL,
    QT_INSC_OUTRA_VAGA_MATUTINO,
    QT_INSC_OUTRA_VAGA_VESPERTINO,
    QT_INSC_OUTRA_VAGA_NOTURNO,
    QT_INSC_OUTRA_VAGA_EAD,
    QT_INSC_ANUAL_INTEGRAL,
    QT_INSC_ANUAL_MATUTINO,
    QT_INSC_ANUAL_VESPERTINO,
    QT_INSC_ANUAL_NOTURNO,
    QT_INSC_ANUAL_EAD
FROM curso_temp;

INSERT INTO curso_polo(
    CO_CURSO_POLO,
    CO_CURSO,
    CO_LOCAL_OFERTA
) SELECT DISTINCT
    CO_CURSO_POLO,
    CO_CURSO,
    CO_LOCAL_OFERTA
FROM local_oferta_temp;

INSERT INTO curso_ies (
    CO_CURSO,
    CO_IES
) SELECT DISTINCT
    CO_CURSO,
    CO_IES
FROM curso_temp;

INSERT INTO aluno (
    CO_MUNICIPIO_NASCIMENTO,
    CO_UF,
    CO_ALUNO,
    TP_COR_RACA,
    TP_SEXO,
    NU_ANO_NASCIMENTO,
    NU_MES_NASCIMENTO,
    NU_DIA_NASCIMENTO,
    NU_IDADE,
    TP_NACIONALIDADE,
    CO_PAIS_ORIGEM,
    TP_DEFICIENCIA,
    IN_DEFICIENCIA_AUDITIVA,
    IN_DEFICIENCIA_FISICA,
    IN_DEFICIENCIA_INTELECTUAL,
    IN_DEFICIENCIA_MULTIPLA,
    IN_DEFICIENCIA_SURDEZ,
    IN_DEFICIENCIA_SURDOCEGUEIRA,
    IN_DEFICIENCIA_BAIXA_VISAO,
    IN_DEFICIENCIA_CEGUEIRA,
    IN_DEFICIENCIA_SUPERDOTACAO,
    IN_TGD_AUTISMO_INFANTIL,
    IN_TGD_SINDROME_ASPERGER,
    IN_TGD_SINDROME_RETT,
    IN_TGD_TRANSTOR_DESINTEGRATIVO
) SELECT DISTINCT 
    CO_MUNICIPIO_NASCIMENTO,
    CO_UF_NASCIMENTO,
    CO_ALUNO,
    TP_COR_RACA,
    TP_SEXO,
    NU_ANO_NASCIMENTO,
    NU_MES_NASCIMENTO,
    NU_DIA_NASCIMENTO,
    NU_IDADE,
    TP_NACIONALIDADE,
    CO_PAIS_ORIGEM,
    TP_DEFICIENCIA,
    IN_DEFICIENCIA_AUDITIVA,
    IN_DEFICIENCIA_FISICA,
    IN_DEFICIENCIA_INTELECTUAL,
    IN_DEFICIENCIA_MULTIPLA,
    IN_DEFICIENCIA_SURDEZ,
    IN_DEFICIENCIA_SURDOCEGUEIRA,
    IN_DEFICIENCIA_BAIXA_VISAO,
    IN_DEFICIENCIA_CEGUEIRA,
    IN_DEFICIENCIA_SUPERDOTACAO,
    IN_TGD_AUTISMO_INFANTIL,
    IN_TGD_SINDROME_ASPERGER,
    IN_TGD_SINDROME_RETT,
    IN_TGD_TRANSTOR_DESINTEGRATIVO
from aux_aluno;

update aluno as a SET co_regiao = (select co_regiao from uf as u where u.co_municipio = a.co_municipio_nascimento);

    INSERT INTO aluno_curso (
    CO_ALUNO,
    CO_CURSO,
    CO_ALUNO_CURSO,
    CO_ALUNO_CURSO_ORIGEM,
    TP_SITUACAO,
    QT_CARGA_HORARIA_TOTAL,
    QT_CARGA_HORARIA_INTEG,
    DT_INGRESSO_CURSO,
    IN_INGRESSO_VESTIBULAR,
    IN_INGRESSO_ENEM,
    IN_INGRESSO_AVALIACAO_SERIADA,
    IN_INGRESSO_SELECAO_SIMPLIFICA,
    IN_INGRESSO_OUTRO_TIPO_SELECAO,
    IN_INGRESSO_VAGA_REMANESC,
    IN_INGRESSO_VAGA_PROG_ESPECIAL,
    IN_INGRESSO_TRANSF_EXOFFICIO,
    IN_INGRESSO_DECISAO_JUDICIAL,
    IN_INGRESSO_CONVENIO_PECG,
    IN_INGRESSO_EGRESSO,
    IN_INGRESSO_OUTRA_FORMA,
    IN_RESERVA_VAGAS,
    IN_RESERVA_ETNICO,
    IN_RESERVA_DEFICIENCIA,
    IN_RESERVA_ENSINO_PUBLICO,
    IN_RESERVA_RENDA_FAMILIAR,
    IN_MOBILIDADE_ACADEMICA,
    TP_MOBILIDADE_ACADEMICA,
    TP_MOBILIDADE_ACADEMICA_INTERN,
) SELECT DISTINCT 
    CO_ALUNO,
    CO_CURSO,
    CO_ALUNO_CURSO,
    CO_ALUNO_CURSO_ORIGEM,
    TP_SITUACAO,
    QT_CARGA_HORARIA_TOTAL,
    QT_CARGA_HORARIA_INTEG,
    DT_INGRESSO_CURSO,
    IN_INGRESSO_VESTIBULAR,
    IN_INGRESSO_ENEM,
    IN_INGRESSO_AVALIACAO_SERIADA,
    IN_INGRESSO_SELECAO_SIMPLIFICA,
    IN_INGRESSO_OUTRO_TIPO_SELECAO,
    IN_INGRESSO_VAGA_REMANESC,
    IN_INGRESSO_VAGA_PROG_ESPECIAL,
    IN_INGRESSO_TRANSF_EXOFFICIO,
    IN_INGRESSO_DECISAO_JUDICIAL,
    IN_INGRESSO_CONVENIO_PECG,
    IN_INGRESSO_EGRESSO,
    IN_INGRESSO_OUTRA_FORMA,
    IN_RESERVA_VAGAS,
    IN_RESERVA_ETNICO,
    IN_RESERVA_DEFICIENCIA,
    IN_RESERVA_ENSINO_PUBLICO,
    IN_RESERVA_RENDA_FAMILIAR,
    IN_MOBILIDADE_ACADEMICA,
    TP_MOBILIDADE_ACADEMICA,
    TP_MOBILIDADE_ACADEMICA_INTERN,
FROM aux_aluno;