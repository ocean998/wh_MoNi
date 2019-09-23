from pandas import DataFrame
import pandas as pd
import numpy as np

df = DataFrame( columns=['A', 'B', 'C'])
ndf = DataFrame([[1,2,3]], columns=['A', 'B', 'C'])
print(ndf)
print('==============')
df = df.append(ndf, ignore_index=True)
pd.concat([df, ndf], axis=0)
ndf = DataFrame([[4,5,6]],columns=['A', 'B', 'C'])
df = df.append(ndf, ignore_index=True)
print(df)

print('=======df 添加行完成=======')

df = DataFrame(np.random.randn(4, 5), columns=['A', 'B', 'C', 'D', 'E'])
print(df)

# 计算各列数据总和并作为新列添加到末尾
df['Col_sum'] = df.apply(lambda x: x.sum(), axis=1)
print(df)

row_sum = df.apply(lambda x: x.sum())
print(row_sum['B'])
print(row_sum[['A','B']])
print(type( row_sum ) )

df1 = df.sum(axis=0)
print(df1)
print('==============')
print(df1['B'])

# 计算各行数据总和并作为新行添加到末尾
df.loc['Row_sum'] = df.apply(lambda x: x.sum())
# print(df)

print('==============')
print(df['B'])

print("空储位{}, 入库数量{}，不能入库！".format(100, 110))
