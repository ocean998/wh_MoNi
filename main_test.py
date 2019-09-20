import numpy as np
import pandas as pd


mylist = list('abcedfghijklmnopqrstuvwxyz')   # 列表
myarr = np.arange(26)	                      # 数组
mydict = dict(zip(mylist, myarr))             # 字典

print(myarr)
print(mylist)
print(mydict)
# 构建方法
ser1 = pd.Series(mylist)
ser2 = pd.Series(myarr)
# 把字典的键当成索引
ser3 = pd.Series(mydict)

print('1****************************')
print(ser2)

print('2****************************')
ser = pd.Series(mydict)
print(ser.head())
print('3****************************')
# series转换为dataframe
df = ser.to_frame()
print(df.head())

print('4****************************')
print(df.shape)
print('5****************************')
# 索引列转换为dataframe的列
print(df.shape)
df.reset_index(inplace=True)
print(df.head())
print('6****************************')
# 构建series1
ser1 = pd.Series(list('abcedfghijklmnopqrstuvwxyz'))
# 构建series2
ser2 = pd.Series(np.arange(26))

# 方法1，axis=1表示列拼接，0表示行拼接
df = pd.concat([ser1, ser2], axis=1)

# 与方法1相比，方法2设置了列名
df = pd.DataFrame({'col1': ser1, 'col2': ser2})
print(df.head())

print('7 ****************************')
ser = pd.Series(list('abcedfghijklmnopqrstuvwxyz'))

# 命名索引列名称
ser.name = 'alphabets'
# 显示前5行数据
print(ser.head())

print('********* 8 ****************************')
ser1 = pd.Series([1, 2, 3, 4, 5])
ser2 = pd.Series([4, 5, 6, 7, 8])

# 返回ser1不包含ser2的布尔型series
ser3 = ser1.isin(ser2)
print(ser3)
# 获取ser不包含ser2的元素
print(ser1[ser3])


print('********* 9 ****************************')
ser = pd.Series(['how', 'to', 'kick', 'ass?'])

# 方法
y = ser.map(lambda x: len(x))
print(y)

print('********* 10 ****************************')
ser = pd.Series(['01 Jan 2010', '02-02-2011', '20120303', '2013/04/04', '2014-05-05', '2015-06-06T12:20'])

print(pd.to_datetime(ser))


print('********* 11 ****************************')


import numpy as np
import pandas as pd
df = pd.read_csv('https://raw.githubusercontent.com/selva86/datasets/master/Cars93_miss.csv')
# print(df)
# 获取最大值的行和列
row, col = np.where(df.values == np.max(df.Price))
# 行和列获取最大值
print(df.iat[row[0], col[0]])
df.iloc[row[0], col[0]]

# 行索引和列名获取最大值

