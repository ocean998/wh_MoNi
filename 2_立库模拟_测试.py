import numpy as np

# 设置打印全部
np.set_printoptions(threshold=np.inf)
import pandas as pd

# 显示所有列
pd.set_option('display.max_columns', None)
# 显示所有行
pd.set_option('display.max_rows', None)
# 设置value的显示长度为100，默认为50
pd.set_option('max_colwidth', 100)

import pprint

print = pprint.pprint

#################################################################
shelves_idx = np.arange(
    1, 7200 + 1).reshape((80, 90))
# shelves_idx = shelves_idx[::-1, ]
# print(shelves_idx)
l_idx = np.argwhere(shelves_idx == 270) + 1
# print(l_idx)
# ll = [l_idx[0][1] , l_idx[0][0] ]
# ll[0] = ll[0]+1
# ll[1] = ll[1]+1
# print(ll)
print('+++++++++++++++++++++++++++++++++++++')
shelves_distance = shelves_idx.ravel()
# print(shelves_distance)
l_idx = np.argwhere(shelves_idx == 1) + 1
print(l_idx)
print('+++++++++++++++++++++++++++++++++++++')
for i in range(2, 7200 + 1):
    idx = np.argwhere(shelves_idx == i) + 1
    l_idx = np.vstack((l_idx, idx))
    if i < 5:
        print(idx)
        print(i)
        print(l_idx)
print('+++++++++++++++++++++++++++++++++++++')
print(len(l_idx))
df_idx = pd.DataFrame(l_idx, index=range(1, len(l_idx) + 1))


df_idx['dis'] = round(
    np.sqrt((df_idx[0] * 1.5) ** 2 + (df_idx[1] * 1.2) ** 2), 2)
df_idx['dis_x'] = 0
df_idx.columns = ['x', 'y', 'dis', 'disR']

df_idx.loc[(df_idx['x'] < 9) & (df_idx['y'] < 9), 'disR'] = 5
# df_idx.loc[ x ] = 5
# print( df_idx )

# 入库200只
print('入库200只')
idx = df_idx.loc[(df_idx['disR'] == 0)].index
df2 = df_idx.loc[idx].sort_values(by='dis', ascending=True)
df2['idx'] = df2.index
print(df2.head(200))

idx2 = df2.head(200).index
print(len(idx2))
df_idx.loc[idx2, 'disR'] = 9
# print(df_idx.loc[idx2])
print(idx2)
print(df_idx.loc[df_idx['disR'] == 9])

df4 = df_idx.groupby(by='disR').count()
print(df4)
print('=========================')
if 0 in df4.index:
    print(type(df4.loc[0]))
    print(df4.loc[5][0])

# 192.30.253.112 github.com
# 192.30.253.113 github.com
# 151.101.184.133 assets-cdn.github.com
# 151.101.185.194 github.global.ssl.fastly.net
