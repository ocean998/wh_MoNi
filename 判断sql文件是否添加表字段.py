
import os

# dir = os.getcwd()+'/10??'

def get_files(dir:str = ''):
    flist = []
    for curdir, subdir, file in os.walk(dir):
        if len(subdir) == 0:
            for f in file:
                flist.append(curdir + '\\' + f)
    return flist


# alter table T_ALLDETECT_IT_RSLT add overload_conc_code VARCHAR2(8)
def get_tab_col(s: str = ''):
    # print(s)
    if s.lower().find('alter') >= 0 and s.find('table') >= 0 and \
            (s.lower().find('add') >= 0 or s.lower().find('modify') >= 0):
        lst =  s.split(' ')
        i = lst.index('table')
        s = '修改表：'+lst[i+1]
        if lst[i+2] == 'modify':
            s+='\t 修改字段：'+ lst[i+3] + '\t长度'
        if lst[i + 2] == 'add':
            s += '\t 添加字段：' + lst[i + 3]
        s.strip('\n')
        print(s)

    if s.lower().find('create') >= 0 and s.find('table') >= 0:
        lst = s.split(' ')
        i = lst.index('table')
        s = '添加表：' + lst[i + 1]
        s.strip('\n')
        print(s)

if __name__ == '__main__':

    fs = get_files(r'C:\Users\Administrator\PycharmProjects\wh_MoNi\11版本')
    for f in fs:
        print(f)
        fsql = open(f, encoding='utf-8', errors='ignore')
        for line in fsql.readlines():
            get_tab_col(line)
        fsql.close()
        print('\n\n')