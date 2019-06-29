def index_ano(fields):
    try:
        return fields.index('NU_ANO_CENSO')
    except ValueError:
        return 0

def get_value(value):
    try:
        return str(int(value))
    except (ValueError, TypeError):
        return '$${}$$'.format(value)

def header(table_name, fileds, fd):
    end = ','
    fd.write('insert into {} ('.format(table_name))
    for i, field in enumerate(fields):
        if i == len(fields)-1:
            end = ') '

        fd.write(field + end)

    fd.write('values\n')

def insert_values(line, fd, last_line):
    end = ', '
    output_file.write('(')
    for i, value in enumerate(line):
        if last_line and i == len(line)-1:
            end = ');'
        elif i == len(line)-1:
            end = '),\n'

        output_file.write(get_value(value) + end)

## ---------------------------------------------------------
## ---------------------------------------------------------
## ---------------------------------------------------------
## ---------------------------------------------------------

output_file_name = '/home/venturini/git/ideal-memory/insert_ocde.sql'
ocde_file_name   = '/home/venturini/Desktop/utf/bd/Microdados_Educacao_Superior_2017/DADOS/TB_AUX_AREA_OCDE.CSV'
table_name       = 'aux_ocde'

output_file = open(output_file_name, 'w')
ocde_file   = open(ocde_file_name, encoding='ISO-8859-1')
fields      = ocde_file.readline().split('|')

index_     = index_ano(fields)
fields[-1] = fields[-1].strip() # remove \n
fields.pop(index_)          # remove ano

header(table_name, fields, output_file)

lines = ocde_file.readlines()
i_ = len(lines)
for i, line in enumerate(lines):
    line     = line.split('|')
    line[-1] = line[-1].strip()
    line.pop(index_)

    insert_values(line, output_file, i == (i_-1))

output_file.close()