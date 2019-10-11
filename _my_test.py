import pandas as pd
import numpy as np

df = pd.DataFrame({'A': ['foo', 'bar', 'foo', 'bar',
                          'foo', 'bar', 'foo', 'foo'],
                    'B': ['one', 'one', 'two', 'three',
                          'two', 'two', 'one', 'three'],
                    'C': np.random.randn(8),
                    'D': np.random.randn(8)})

# print(df)
# print('1 -----------------------------------')
# df2 = df.set_index(['A', 'B'])
# grouped = df2.groupby(level=df2.index.names.difference(['B']))
#
# print( grouped.sum() )
# print('2 -----------------------------------')
# print(df2)

ll = df.iloc[2]
print(ll)
print(ll[1])
print(ll['A'])
print(type(ll))