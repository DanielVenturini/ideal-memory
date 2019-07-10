drop table if exists TP_CATEGORIA_ADMINISTRATIVA;

create table TP_CATEGORIA_ADMINISTRATIVA (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_ORGANIZACAO_ACADEMICA;

create table TP_ORGANIZACAO_ACADEMICA (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_TURNO;

create table TP_TURNO (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_GRAU_ACADEMICO;

create table TP_GRAU_ACADEMICO (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_MODALIDADE_ENSINO;

create table TP_MODALIDADE_ENSINO (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_NIVEL_ACADEMICO;

create table TP_NIVEL_ACADEMICO (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_COR_RACA;

create table TP_COR_RACA (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_SEXO;

create table TP_SEXO (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_NACIONALIDADE;

create table TP_NACIONALIDADE (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_DEFICIENCIA;

create table TP_DEFICIENCIA (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_SITUACAO;

create table TP_SITUACAO (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_ESCOLA_CONCLUSAO_ENS_MEDIO;

create table TP_ESCOLA_CONCLUSAO_ENS_MEDIO (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_SEMESTRE_CONCLUSAO;

create table TP_SEMESTRE_CONCLUSAO (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_SEMESTRE_REFERENCIA;

create table TP_SEMESTRE_REFERENCIA (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_MOBILIDADE_ACADEMICA;

create table TP_MOBILIDADE_ACADEMICA (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_MOBILIDADE_ACADEMICA_INTERN;

create table TP_MOBILIDADE_ACADEMICA_INTERN (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_ATRIBUTO_INGRESSO;

create table TP_ATRIBUTO_INGRESSO (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_REFERENTE;

create table TP_REFERENTE (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_ESCOLARIDADE;

create table TP_ESCOLARIDADE (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_REGIME_TRABALHO;

create table TP_REGIME_TRABALHO (
    codigo integer primary key,
    nome varchar(200)
);

drop table if exists TP_VISITANTE_IFES_VINCULO;

create table TP_VISITANTE_IFES_VINCULO (
    codigo integer primary key,
    nome varchar(200)
);

