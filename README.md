# ideal-memory
Data Base Laboratory files project. The project is the modeling of data about the Higher Education.

## Download
All database from `Inep` can be downloaded [here](download.inep.gov.br/microdados/microdados_educacao_superior_2017.zip) (258MB Zip).

## Structure
The files is structured the follow way:
 - `ANEXOS/` contains all files that describe the datas;
 - `DADOS/` contains all database files in `zip->csv`;
 - `FILTROS/` contains one file with some tips of how to model in `Sql`; and
 - `LEIA-ME/` contains a file that explain how to open the database files in software `R`, `SPSS` and `SAS`.

One important file is `ANEXOS/ANEXO I - Dicion rio de Dados e Tabelas Auxiliares/Dicion rio_de_Dados.xlsx` that contains the description of each field in all database.

## Modeling
This is the modeling that how all data are structured.

![Diagram](https://raw.githubusercontent.com/DanielVenturini/ideal-memory/master/diagram.jpeg)

## Execute
The nexts steps describe how to create all environment.

### Prepare
Execute the follows commands:

```bash
git clone https://github.com/danielventurini/ideal-memory
cd ideal-memory/
curl download.inep.gov.br/microdados/microdados_educacao_superior_2017.zip --output microdados.zip
unzip microdados.zip
mv Microdados_Educacao_Superior_2017 microdados  # rename path
cd microdados/DADOS/
find . -name "*.zip" -exec unzip {} \;	# extract all files
```

### Reproduce
Using the `PostgreSQL`, execute the query files in the follow order:

1. [create_types.sql](https://raw.githubusercontent.com/DanielVenturini/ideal-memory/master/create_types.sql)
2. [insert_types.sql](https://raw.githubusercontent.com/DanielVenturini/ideal-memory/master/insert_types.sql)
3.  [create_temps.sql](https://raw.githubusercontent.com/DanielVenturini/ideal-memory/master/create_temps.sql)
> before execute this file  - `create_temps.sql` -, open at line `406-411` and change the `/[absolute/path]/` to your absolute path.
4. [create_tables.sql](https://raw.githubusercontent.com/DanielVenturini/ideal-memory/master/create_tables.sql)
5. [insert_tables.sql](https://raw.githubusercontent.com/DanielVenturini/ideal-memory/master/insert_tables.sql)

**Tip:** Before the execution files, you can use the follow command:

```SQL
drop schema if exists public cascade;
create schema public;
```

## Observation
1. The `DM_CURSO.csv` file contains unique wrong register. At line `6302` and column `T`, exists a wrong value in `TP_ATRIBUTO_INGRESSO` that doesn't exists in table `TP_ATRIBUTO_INGRESSO`. All values from this table is `0`, `1` and `2`; and the value at line `6302` is `3`. For this, in file `create_temps`, at last line, this register is deleted from the `curso_temp`.

2. The file `insert_tables.sql` has a `UPDATE` that take many, many, many hours: [line 995](https://github.com/DanielVenturini/ideal-memory/blob/master/insert_tables.sql#L995)
