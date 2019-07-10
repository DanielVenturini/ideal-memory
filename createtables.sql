drop schema public cascade;
create schema public;

create table regiao (
    CO_REGIAO integer primary key
);

create table uf (
    CO_UF integer,
    CO_REGIAO integer,

    primary key(CO_UF, CO_REGIAO),
    foreign key (CO_REGIAO) references regiao ON DELETE CASCADE
);

create table municipio (
    CO_MUNICIPIO integer,
    primary key(CO_MUNICIPIO, CO_REGIAO, CO_UF),

    CO_REGIAO integer,
    CO_UF integer,
    IN_CAPITAL boolean,

    foreign key (CO_UF, CO_REGIAO) references uf ON DELETE CASCADE
);

create table ies (
    CO_IES integer,
    primary key(CO_IES),

    NO_IES varchar(200),
    SG_IES varchar(20),
    CO_MANTENEDORA integer,
    NO_MANTENEDORA varchar(200),
    TP_CATEGORIA_ADMINISTRATIVA integer,
    TP_ORGANIZACAO_ACADEMICA integer,

    CO_MUNICIPIO integer,
    foreign key (CO_MUNICIPIO) references municipio (CO_MUNICIPIO),

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

create table docente (
    CO_MUNICIPIO_NASCIMENTO integer,
    CO_REGIAO integer,
    CO_UF integer,
    foreign key (CO_MUNICIPIO_NASCIMENTO, CO_REGIAO, CO_UF) references municipio (CO_MUNICIPIO, CO_REGIAO, CO_UF),

    CO_DOCENTE bigint,
    primary key (CO_DOCENTE),

    TP_ESCOLARIDADE integer,
    TP_SEXO integer,
    NU_ANO_NASCIMENTO integer,
    NU_MES_NASCIMENTO integer,
    NU_DIA_NASCIMENTO integer,
    NU_IDADE integer,
    TP_COR_RACA integer,
    CO_PAIS_ORIGEM integer,
    TP_NACIONALIDADE integer,
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
    IN_ATUACAO_GESTAO boolean ,
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

create table aluno (
    CO_MUNICIPIO_NASCIMENTO integer,
    foreign key (CO_MUNICIPIO_NASCIMENTO) references municipio (CO_MUNICIPIO),

    CO_ALUNO bigint,
    primary key (CO_ALUNO),

    TP_COR_RACA integer,
    TP_SEXO integer,
    NU_ANO_NASCIMENTO integer,
    NU_MES_NASCIMENTO integer,
    NU_DIA_NASCIMENTO integer,
    NU_IDADE integer,
    TP_NACIONALIDADE integer,
    CO_PAIS_ORIGEM integer,
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
    TP_ESCOLA_CONCLUSAO_ENS_MEDIO integer,
    IN_ALUNO_PARFOR boolean,
    IN_MOBILIDADE_ACADEMICA boolean,
    TP_MOBILIDADE_ACADEMICA integer,
    TP_MOBILIDADE_ACADEMICA_INTERN integer,
    CO_IES_DESTINO integer,
    CO_PAIS_DESTINO integer
);

create table curso (

    CO_MUNICIPIO integer,
    foreign key (CO_MUNICIPIO) references municipio(CO_MUNICIPIO),

    CO_CURSO integer,
    primary key(CO_CURSO),

    NO_CURSO varchar(200),
    TP_SITUACAO integer,
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
    NU_INTEGRALIZACAO_INTEGRAL integer,
    NU_INTEGRALIZACAO_MATUTINO integer,
    NU_INTEGRALIZACAO_VESPERTINO integer,
    NU_INTEGRALIZACAO_NOTURNO integer,
    NU_INTEGRALIZACAO_EAD integer,
    IN_OFERECE_DISC_SEMI_PRES boolean,
    NU_PERC_CARGA_SEMI_PRES integer,
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
    VL_DESPESA_INVESTIMENTO float,
    VL_DESPESA_PESQUISA float,
    VL_DESPESA_OUTRA float
);

create table local_oferta(
    CO_MUNICIPIO integer,
    foreign key (CO_MUNICIPIO) references municipio(CO_MUNICIPIO),
        
    CO_LOCAL_OFERTA integer,
    primary key (CO_LOCAL_OFERTA),

    NO_LOCAL_OFERTA varchar(255),
    IN_SEDE boolean,
    CO_CURSO_POLO integer,
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

create table curso_ies(
    CO_CURSO integer,
    CO_IES integer,
    foreign key (CO_CURSO) references curso(CO_CURSO),
    foreign key (CO_IES) references ies(CO_IES),
    primary key (CO_CURSO, CO_IES)
);

create table curso_local(
    CO_CURSO integer,
    CO_LOCAL_OFERTA integer,
    foreign key (CO_CURSO) references curso(CO_CURSO),
    foreign key (CO_LOCAL_OFERTA) references local_oferta(CO_LOCAL_OFERTA),
    primary key (CO_CURSO, CO_LOCAL_OFERTA)
);

create table aluno_curso (
    CO_ALUNO bigint,
    foreign key(CO_ALUNO) references aluno(CO_ALUNO),
    CO_CURSO integer,
    foreign key(CO_CURSO) references curso(CO_CURSO),

    CO_ALUNO_CURSO integer,
    CO_ALUNO_CURSO_ORIGEM integer,

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

create table docente_ies (
    CO_DOCENTE bigint,
    foreign key(CO_DOCENTE) references docente(CO_DOCENTE),

    CO_IES integer,
    foreign key (CO_IES) references ies(CO_IES),

    CO_DOCENTE_IES integer,
    TP_SITUACAO integer,
    TP_REGIME_TRABALHO integer
);

---------------------------------------------------------OCDE---------------------------------------------------------------------

CREATE TABLE OCDE_AREA_GERAL (
   co_ocde_area_geral CHAR(1) PRIMARY KEY,
   no_ocde_area_geral VARCHAR(36)
);

CREATE TABLE OCDE_AREA_ESPECIFICA (
   co_ocde_area_especifica CHAR(2) PRIMARY KEY,
   no_ocde_area_especifica VARCHAR(44),
   co_ocde_area_geral CHAR(1) REFERENCES OCDE_AREA_GERAL(co_ocde_area_geral)
);

CREATE TABLE OCDE_AREA_DETALHADA (
   co_ocde_area_detalhada CHAR(3) PRIMARY KEY,
   no_ocde_area_detalhada VARCHAR(64),
   co_ocde_area_especifica CHAR(2) REFERENCES OCDE_AREA_ESPECIFICA(co_ocde_area_especifica)
);

CREATE TABLE OCDE (
  NU_ANO_CENSO SMALLINT,
  CO_OCDE_AREA_DETALHADA CHAR(3) REFERENCES OCDE_AREA_DETALHADA(CO_OCDE_AREA_DETALHADA),
  CO_OCDE CHAR(6),
  NO_OCDE VARCHAR(83),
  PRIMARY KEY (NU_ANO_CENSO,CO_OCDE)
);

CREATE TABLE OCDE_TEMP (
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

------------------------------------------INSERINDO VALORES----------------------------------------------
----------------------------OCDE-------------------------------
INSERT INTO OCDE_AREA_GERAL( CO_OCDE_AREA_GERAL, NO_OCDE_AREA_GERAL)
SELECT DISTINCT CO_OCDE_AREA_GERAL, NO_OCDE_AREA_GERAL FROM ocde_temp
ORDER BY CO_OCDE_AREA_GERAL;

INSERT INTO OCDE_AREA_ESPECIFICA(CO_OCDE_AREA_ESPECIFICA,  NO_OCDE_AREA_ESPECIFICA, CO_OCDE_AREA_GERAL)
SELECT DISTINCT CO_OCDE_AREA_ESPECIFICA,  NO_OCDE_AREA_ESPECIFICA, CO_OCDE_AREA_GERAL FROM ocde_temp
ORDER BY CO_OCDE_AREA_ESPECIFICA;

INSERT INTO OCDE_AREA_DETALHADA(CO_OCDE_AREA_DETALHADA,  NO_OCDE_AREA_DETALHADA, CO_OCDE_AREA_ESPECIFICA )
SELECT DISTINCT CO_OCDE_AREA_DETALHADA,  NO_OCDE_AREA_DETALHADA, CO_OCDE_AREA_ESPECIFICA FROM ocde_temp
ORDER BY CO_OCDE_AREA_ESPECIFICA;

INSERT INTO OCDE(CO_OCDE, NO_OCDE, CO_OCDE_AREA_DETALHADA, NU_ANO_CENSO)
SELECT DISTINCT CO_OCDE, NO_OCDE, CO_OCDE_AREA_DETALHADA, NU_ANO_CENSO FROM ocde_temp
ORDER BY CO_OCDE;

------------------------REGIAO, UF e MUNICIPIO-------------------------------
insert into regiao values (1),(2),(3),(4),(5);

INSERT INTO uf ( CO_UF, CO_REGIAO)
SELECT DISTINCT CO_UF, CO_REGIAO FROM ies_temp;

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

