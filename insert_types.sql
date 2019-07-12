insert into TP_CATEGORIA_ADMINISTRATIVA values
(1, $$Pública Federal$$),
(2, $$Pública Estadual$$),
(3, $$Pública Municipal$$),
(4, $$Privada com fins lucrativos$$),
(5, $$Privada sem fins lucrativos$$),
(6, $$Privada confessional$$),
(7, $$Especial$$);

insert into TP_ORGANIZACAO_ACADEMICA values
(1, $$Universidade$$),
(2, $$Centro Universitário$$),
(3, $$Faculdade$$),
(4, $$Instituto Federal de Educação, Ciência e Tecnologia$$),
(5, $$Centro Federal de Educação Tecnológica$$);

insert into TP_TURNO values
(1, $$Matutino$$),
(2, $$Vespertino$$),
(3, $$Noturno$$),
(4, $$Integral$$);

insert into TP_GRAU_ACADEMICO values
(1, $$Bacharelado$$),
(2, $$Licenciatura$$),
(3, $$Tecnológico$$),
(4, $$Bacharelado e Licenciatura$$);

insert into TP_MODALIDADE_ENSINO values
(1, $$Presencial$$),
(2, $$Curso a distância$$);

insert into TP_NIVEL_ACADEMICO values
(1, $$Graduação$$),
(2, $$Seqüencial de Formação Específica$$);

insert into TP_COR_RACA values
(0, $$Aluno não quis declarar cor/raça$$),
(1, $$Branca$$),
(2, $$Preta$$),
(3, $$Parda$$),
(4, $$Amarela$$),
(5, $$Indígena$$),
(9, $$Não dispõe da informação (Não resposta)$$);

insert into TP_SEXO values
(1, $$Feminino$$),
(2, $$Masculino$$);

insert into TP_NACIONALIDADE values
(1, $$Brasileira$$),
(2, $$Brasileira - nascido no exterior ou naturalizado$$),
(3, $$Estrangeira$$);

insert into TP_DEFICIENCIA values
(0, $$Não$$),
(1, $$Sim$$),
(9, $$Não dispõe de informação (Não resposta)$$);

insert into TP_SITUACAO_ALUNO values
(2, $$Cursando$$),
(3, $$Matrícula trancada$$),
(4, $$Desvinculado do curso$$),
(5, $$Transferido para outro curso da mesma IES$$),
(6, $$Formado$$),
(7, $$Falecido$$);

insert into TP_SITUACAO_DOCENTE values
(1, $$Em exercício$$),
(2, $$Afastado para qualificação$$),
(3, $$Afastado para exercício em outros órgãos/entidades$$),
(4, $$Afastado por outros motivos$$),
(5, $$Afastado para tratamento de saúde$$),
(6, $$Falecido$$);

insert into TP_SITUACAO_CURSO values
(1, $$Em atividade$$),
(2, $$Extinto$$),
(3, $$Em extinção$$);

insert into TP_ESCOLA_CONCLUSAO_ENS_MEDIO values
(1, $$Pública$$),
(2, $$Privada$$),
(9, $$Não dispõe da informação (Não resposta)$$);

insert into TP_SEMESTRE_CONCLUSAO values
(1, $$Primeiro semestre$$),
(2, $$Segundo semestre$$);

insert into TP_SEMESTRE_REFERENCIA values
(1, $$Primeiro semestre$$),
(2, $$Segundo semestre$$);

insert into TP_MOBILIDADE_ACADEMICA values
(1, $$Nacional$$),
(2, $$Internacional$$);

insert into TP_MOBILIDADE_ACADEMICA_INTERN values
(1, $$Intercâmbio$$),
(2, $$Ciências sem fronteiras$$);

insert into TP_ATRIBUTO_INGRESSO values
(0, $$Normal$$),
(1, $$Área Básica de Ingresso$$),
(2, $$Bacharelado ou Licenciatura Interdiciplinar$$);

insert into TP_REFERENTE values
(1, $$Mantenedora$$),
(2, $$Instituição$$);

insert into TP_ESCOLARIDADE values
(1, $$Sem graduação$$),
(2, $$Graduação$$),
(3, $$Especialização$$),
(4, $$Mestrado$$),
(5, $$Doutorado$$);

insert into TP_REGIME_TRABALHO values
(1, $$Tempo Integral com dedicação exclusiva$$),
(2, $$Tempo Integral sem dedicação exclusiva$$),
(3, $$Tempo Parcial$$),
(4, $$Horista$$);

insert into TP_VISITANTE_IFES_VINCULO values
(1, $$Em folha$$),
(2, $$Bolsista$$);
