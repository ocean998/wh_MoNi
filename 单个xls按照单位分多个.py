import tkinter as tk
from tkinter import filedialog

import xlrd
import xlwt
import os

'''
根据excel打钩情况将一行里面的 托盘库	箱表库	箱表柜	周转柜	人工库
分成单独的一行 作为表库名称
'''

opened_xls = ''


# 设置窗口属性
class app:
    show_msg = ''
    # 存放单位代码的excle文件
    excel_dw = ''
    col_dw = 0
    # 要拆分的excel路径
    opened_xls = ''
    # 单位列表格式为  单位代码：单位名称
    unit_Code = []
    def set_msg( self,ss ):
        show_msg = ss + '\n'
    def __init__( self, wd ):
        # 标题
        window = wd
        wd.title('window test!')
        # 取屏幕像素大小
        w = wd.winfo_screenwidth( )
        h = wd.winfo_screenheight( )
        # 默认大小 幕像素大小的1/3, 屏幕中间显示
        w2 = int(w / 2)
        h2 = int(h / 2)
        wh = '{}x{}+{}+{}'.format(w2, h2, int((w - w2) / 2), int((h - h2) / 2))
        window.geometry(wh)
        self.set_component(window)


    def set_component( self, window ):
        # 在窗口上放置各种 窗口部件
        # 注意，pack展示的时候，与该控件在代码中的调用先后有关
        # 容器 第一层两个frame，从上到下依次摆放
        self.frame = tk.LabelFrame(window)
        self.frame.pack(fill=tk.X)
        self.frame2 = tk.LabelFrame(window)
        self.frame2.pack(fill=tk.BOTH)
        self.frame3 = tk.LabelFrame(window)
        self.frame3.pack(fill=tk.BOTH)

        # 文本编辑器，滚动条放在第二个frame上，
        self.sc = tk.Scrollbar(self.frame2)
        self.sc.pack(side=tk.RIGHT, fill=tk.Y)
        self.tt = tk.Text(self.frame2, height=7)
        self.tt.pack(fill=tk.X, padx=5, pady=5)

        # 滚动条和编辑器相互关联产生滚动效果
        self.sc.config(command=self.tt.yview)
        self.tt.config(yscrollcommand=self.sc.set)

        # 文本编辑器，滚动条放在第二个frame上，
        self.sc2 = tk.Scrollbar(self.frame3)
        self.sc2.pack(side=tk.RIGHT, fill=tk.Y)
        self.tt2 = tk.Text(self.frame3, height=30 )
        self.tt2.pack(fill=tk.BOTH, padx=5, pady=5)

        # 滚动条和编辑器相互关联产生滚动效果
        self.sc2.config(command=self.tt2.yview)
        self.tt2.config(yscrollcommand=self.sc2.set)

        # button放在第一个frame上
        self.btn_open = tk.Button(self.frame, text='打开 excel', width=15, command=self.open_dlg)
        self.btn_open.pack(padx=5, pady=5, side=tk.LEFT)

        self.btn_open2 = tk.Button(self.frame, text='添加文本', width=15, command=self.text_insert )
        self.btn_open2.pack(padx=5, pady=5, side=tk.LEFT)

        self.btn_open3 = tk.Button(self.frame, text='单位长度 5', width=15, command=self.slc_dw_len)
        self.btn_open3.pack(padx=5, pady=5, side=tk.LEFT)

        self.btn_open4 = tk.Button(self.frame, text='开 始', width=15, command=self.start)
        self.btn_open4.pack(padx=5, pady=5, side=tk.LEFT)



    def open_dlg( self ):
        self.opened_xls = filedialog.askopenfilename(title='open excel', filetypes=[('excel 文件', '*.xls *.xlsx')])
        path = os.path.dirname(self.opened_xls)

        self.tt.delete('1.0','end')
        self.tt.insert('end', '当前操作目录：\n')
        self.tt.insert('end', '\t'+path)
        self.tt.insert('end', '\n' )
        self.tt.insert('end', '要拆分的Excel文件：\n\t')
        self.tt.insert('end', self.opened_xls)

        self.tt.insert('end', '\n')
        path = path + '/县公司单位代码.xls'
        if os.path.exists(path) :
            self.tt.insert('end', '作为单位匹配条件的Excel文件：\n\t')
            self.tt.insert('end', path)
            self.excel_dw = path

    def text_insert( self ):
        if len(self.show_msg) < 1 :
            self.tt2.insert('end',self.show_msg)
        else:
            self.tt2.insert('end', self.show_msg)

    def slc_dw_len( self ):
        if self.btn_open3['text'] == '单位长度 5':
            self.btn_open3['text'] = '单位长度 7'
            self.col_dw = 7
        else:
            self.btn_open3['text'] = '单位长度 5'
            self.col_dw = 5

    # 开始操作excel
    def start(self):
        dw = self.get_dwdm()
        for x in dw:
            self.show_msg = x + '\n'
            self.text_insert()

        self.show_msg =   '准备拆分的excle是：\n'
        self.text_insert()

        self.show_msg = self.opened_xls + '\n'
        self.text_insert()

        data = xlrd.open_workbook(self.opened_xls)
        sheet = data.sheet_by_index(0)
        all_rows = self.get_all_line(sheet)

        print(len(all_rows))
        for x in all_rows:
            print(x)

    # 获取要拆分的excle的全部行
    def get_all_line(self, xls_sheet):
        sheet = xls_sheet
        allRows = []
        rowTitle = sheet.row_values(0)
        allRows.append(rowTitle)
        for r in range(1, sheet.nrows):
            oneRow = sheet.row_values(r)
            # enumerate 返回可遍历对象中的 元素索引和该元素
            for (offset, cell) in enumerate(oneRow):
                # 判断单元格是否为日期格式，是就转换为字符串
                if sheet.cell(r, offset).ctype == 3:
                    date = xlrd.xldate.xldate_as_datetime \
                        (sheet.cell(r, offset).value, 0)
                    oneRow[offset] = str(date.strftime('%Y/%m/%d'))
            allRows.append(oneRow)

        return allRows

    def get_dwdm( self ):
        # 与打开的Excel处于同一目录的 存放单位代码及单位名称的Excel文件
        file_dw = self.excel_dw
        len5_7 = self.btn_open3['text'][-1]

        data = xlrd.open_workbook(file_dw)
        # 取单位代码和名称
        table = data.sheet_by_index(0)
        self.unit_Code = []
        # 第一行是说明，从第二行开始
        if int(len5_7) == 7:
            for r in range(1, table.nrows):
                self.unit_Code.append(str(int(table.cell(r, 0).value)) + ":" +
                                str(table.cell(r, 1).value))
        if int(len5_7) == 5:
            for r in range(1, table.nrows):
                # print(str(int(table.cell(r, 0).value)))
                if str(int(table.cell(r, 0).value))[5:7] == '01':
                    self.unit_Code.append(str(int(table.cell(r, 0).value))[0:5] + ":" +
                                    str(table.cell(r, 1).value))

    def get_dw_rst(all_rows, dwdm, col_dw):
        lstdw = []
        lstdw.append(all_rows[0])
        for x in all_rows:
            # 复核单位代码条件的计入结果
            if str(x[col_dw])[0:int(len(dwdm))] == dwdm:
                lstdw.append(x)

        return lstdw


        return unitCode
##############################################################
# 以上为窗口相关部分










if __name__ == '__main__':
    wd = tk.Tk( )
    my_app = app(wd)
    my_app.show_msg = 'xxxxxxyyyy\n'
    # print(my_app.show_msg)
    my_app.text_insert()
    wd.mainloop( )

