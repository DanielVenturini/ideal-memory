﻿drop schema public cascade;

create schema public;

create table regiao (
    CO_REGIAO integer primary key
);

create table uf (
    CO_UF integer,
    primary key(CO_UF),

    CO_REGIAO integer,

    foreign key (CO_REGIAO) references regiao
);

create table municipio (
    CO_MUNICIPIO integer,
    primary key(CO_MUNICIPIO),

    CO_UF integer,
    IN_CAPITAL boolean,

    foreign key (CO_UF) references uf
);

create table docente (
    CO_MUNICIPIO_NASCIMENTO integer,
    foreign key (CO_MUNICIPIO_NASCIMENTO) references municipio (CO_MUNICIPIO),

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

create table ocde(
    CO_OCDE varchar(6),
    primary key (CO_OCDE),

    CO_OCDE_AREA_GERAL integer,
    NO_OCDE_AREA_GERAL varchar(36),
    CO_OCDE_AREA_ESPECIFICA integer,
    NO_OCDE_AREA_ESPECIFICA varchar(44),
    CO_OCDE_AREA_DETALHADA integer,
    NO_OCDE_AREA_DETALHADA varchar(64),
    NO_OCDE varchar(86)
);