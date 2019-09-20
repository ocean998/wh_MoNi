# coding:utf-8
import tkinter as tk
from tkinter import filedialog

'''
根据excel打钩情况将一行里面的 托盘库	箱表库	箱表柜	周转柜	人工库
分成单独的一行 作为表库名称
'''


# 设置窗口属性
def set_window( wd ):
    # 标题
    wd.title('window test!')
    # 取屏幕像素大小
    w = wd.winfo_screenwidth( )
    h = wd.winfo_screenheight( )
    # 默认大小 幕像素大小的1/3, 屏幕中间显示
    w2 = int(w / 3)
    h2 = int(h / 3)
    wh = '{}x{}+{}+{}'.format(w2, h2, int((w - w2) / 2), int((h - h2) / 2))
    print(wh)
    wd.geometry(wh)


def open_dlg( ):
    file = filedialog.askopenfilename(title='open excel', filetypes=[('excel 文件', '*.xls *.xlsx')])
    print(file)
    tt1.insert('end', str( file ))

def text_insert( ):
    s = 'fjd;asfkd;lsafjd;lfkjd;lkfjdi\neutewqitureiwffjoajcvfoijcv\ndf0ewfoujfojwpofihjewo\n\n'
    tt2.insert('end', s)
    print(s)


def set_component( wd ):
    '''
        显示窗口：
            在窗口上放置各种 窗口部件
            注意，pack展示的时候，与该控件在代码中的调用先后有关
            容器 第一层两个frame，从上到下依次摆放
    '''

    frame = tk.LabelFrame(wd, text="打开打开需要拆分的 excel")
    frame.pack(fill=tk.X, expand="yes")

    # button放在第一个frame上
    btn_open = tk.Button(frame, text='打开 excel', width=15, command=open_dlg)
    btn_open.pack(padx=5, pady=5, side=tk.LEFT)

    btn_open2 = tk.Button(frame, text='添加文本', width=15, command=text_insert)
    btn_open2.pack(padx=5, pady=5, side=tk.LEFT)

    frame2 = tk.LabelFrame(wd)
    # frame.pack(fill=tk.X)
    frame2.pack(fill=tk.X, expand="yes")

    tt1 = tk.Text(frame2, height=3)
    tt1.pack(fill=tk.X, padx=5, pady=5)

    frame3 = tk.LabelFrame(wd)
    frame3.pack(fill=tk.X)
    # 文本编辑器，滚动条放在第二个frame上，
    sc = tk.Scrollbar(frame3)
    sc.pack(side=tk.RIGHT, fill=tk.Y)
    tt2 = tk.Text(frame3)
    tt2.pack(fill=tk.X, padx=5, pady=5)

    # 滚动条和编辑器相互关联产生滚动效果
    sc.config(command=tt2.yview)
    tt2.config(yscrollcommand=sc.set)
    wd.mainloop( )


if __name__ == '__main__':
    wd = tk.Tk( )
    set_window(wd)
    set_component(wd)
