#%%
import matplotlib.pyplot as plt
import matplotlib as mpl
import numpy as np
import pandas as pd

x = np.linspace(0, 20, 100)
plt.plot(x, np.sin(x))
plt.show()


#%%[markdown]
### xxx
## yyy

#%%
df = pd.DataFrame(np.arange(20).reshape(-1, 5), columns=list('abcde'))

print(df)
# 交换col1和col2
def switch_columns(df, col1=None, col2=None):
    colnames = df.columns.tolist()
    i1, i2 = colnames.index(col1), colnames.index(col2)
    colnames[i2], colnames[i1] = colnames[i1], colnames[i2]
    return df[colnames]

df1 = switch_columns(df, 'a', 'c')
print(df1)


#%%
print(df[['a','b']])
print(df.loc[1:2,['a','b']])

#%%
print(df.iloc[:,0:2])
print(df.iloc[1:3,0:2])

#%%
pd.get_dummies(df['a'])

#%%
df = pd.DataFrame(np.random.randint(1,100, 9).reshape(3, -1))
print(df)
# 获取每列包含行方向上最大值的个数
count_series = df.apply(np.argmax, axis=1).value_counts()
print(count_series)
# 输出行方向最大值个数最多的列的索引
print('Column with highest row maxes: ', count_series.index[0])

#%%
df = pd.DataFrame(np.random.random(4), columns=['random'])
print(df)
# 显示小数点后四位
df.apply(lambda x: '%.2f' % x, axis=1)
print(df.apply(lambda x: '%.3f' % x, axis=1))


df = pd.DataFrame(np.random.random(4), columns=['random'])
print(df)
# 格式化为小数点后两位的百分数
out = df.style.format({
    'random': '{0:.2%}'.format,
})

out



#%%
def make_repeater(n):
    print('n is : ', n)
    return lambda s: s*n

twice = make_repeater(2)
print( twice('word'))
print( twice(5))


x = 123.456
print('%.1f' % x)
#%%
import numpy as np

my_arr = np.arange(100)
my_list = list(range(100))
print(my_arr)
print('8888888888888')
print(my_list)
#%%
# 如何归一化dataframe的所有列

df = pd.DataFrame(np.random.randint(1,100, 80).reshape(8, -1))
print(df)
# 正态分布归一化
out1 = df.apply(lambda x: ((x - x.mean())/x.std()).round(2))
print('Solution Q1\n',out1)

# 线性归一化
out2 = df.apply(lambda x: ((x.max() - x)/(x.max() - x.min())).round(2))
print('Solution Q2\n', out2)

#%%
