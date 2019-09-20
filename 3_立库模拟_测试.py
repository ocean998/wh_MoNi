from pandas import DataFrame
import pandas as pd
import numpy as np

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
print(df)

print('==============')
print(df['B'])
