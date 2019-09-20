"""立库模拟程序基础类"""
import pprint

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

# print = pprint.pprint


class TaskList():
    def __init__(self):
        self.task = pd.DataFrame()
        # 任务号，数量，完成数量，设备状态，设备类型
        self.task.columns = ['task_no', 'quantity', 'complete_quantity', 'status', 'type']

    """入库任务，需要传入 任务号，数量，完成数量，设备状态，设备类型"""

    def input_equip(self, task_info: {}):
        pass



class Frame:
    def __init__(self, x=10, y=10):
        self.num_w = x
        self.num_h = y

        self.cnt = x * y
        # shelves 代表货架的二维数组,元素坐标是位置，值是序号
        self.shelves_idx = None
        # 货架距离远点位置的直线距离，
        self.shelves_distance = None

        # 设置立库形状，左下角 至 右上角 序号递增
        self.shelves_idx = np.arange(
            1, self.cnt + 1).reshape((self.num_h, self.num_w))

        # 初始化DataFrame，每行保存货架x、y坐标，坐标到左下角距离
        l_idx = np.argwhere(self.shelves_idx == 1) + 1
        for i in range(2, self.cnt + 1):
            # argwhere 求数组中值对应的坐标, +1为不从零开始
            idx = np.argwhere(self.shelves_idx == i) + 1
            # 按照上下方向合并np.narray数组，l_idx的每一行代表一个货架坐标x 、 y
            l_idx = np.vstack((l_idx, idx))
        # 货架序号从1开始：range(1, len(l_idx)+1)
        self.df_dis = pd.DataFrame(l_idx, index=range(1, len(l_idx) + 1))
        self.df_dis.columns = ['x', 'y']
        self.df_dis[['x', 'y']] = self.df_dis[['y', 'x']]

        # print(self.df_dis)
        # 距离是直角三角形斜边，作为机器人移动到相应时间的基础,此处是左边到出口距离
        self.df_dis['dis_1'] = round(np.sqrt((self.df_dis['x'] * 1.5) ** 2 + \
                                             (self.df_dis['y'] * 1.2) ** 2), 2)

        # 本货柜到右边出口距离
        self.df_dis['dis_2'] = round(np.sqrt((self.df_dis['y'] * 1.2) ** 2 + \
                                             ((self.num_w + 1 - self.df_dis['x']) * 1.5) ** 2), 2)
        self.df_dis['task'] = 0
        self.df_dis.columns = ['x', 'y', 'dis_left', 'dis_right', 'task']

    # 获取货架上空闲货柜数量
    def get_empty_cnt(self, task_type:int = 0)->int:
        rst = self.df_dis.groupby('task').count()
        if task_type in rst.index:
            rst_cnt = rst.loc[task_type][0]
        else:
            rst_cnt=0
        return rst_cnt


    # 入库子任务 exit_x确定从左边入库还是右边, sub_task 子任务信息
    def SubTaskIn(self, exit_x: str,  sub_task: list = None):
        cnt = sub_task[1]
        cur_cnt = self.get_empty_cnt(0)
        # 当前没有足够的空货位，不能入库
        if cnt > cur_cnt:
            return None
        # 开始入库操作
        # 按照距离排序
        if exit_x == 'right':
            df1 = self.df_dis.sort_values(by='dis_right', ascending=True).head(cnt)
        if exit_x == 'left':
            df1 = self.df_dis.sort_values(by='dis_left', ascending=True).head(cnt)
        idx = df1.index
        self.df_dis.loc[idx, 'task'] = 2
        cur_cnt = self.get_empty_cnt(2)
        return  cur_cnt

    # df2 = df_idx.loc[idx].sort_values(by='dis', ascending=True)


    def show_status(self):

        msg = '宽x：{0:}, 高y：{1:}, 总储位：{2:}'.format(
            self.num_w, self.num_h, self.cnt)
        print('show_status_1')
        print(msg)
        print('立库形状：')
        print(self.shelves_idx.shape)


if __name__ == '__main__':
    frameA = Frame(30, 20)
    frameA.show_status()
    # col = frameA.df_dis.values

    # print(frameA.df_dis)
    task_list = ['right', 200, 'dan', 'new']
    cnt = frameA.SubTaskIn('right', task_list)
    print(cnt)
    print(frameA.df_dis.groupby('task').count())

    task_list = ['right', 300, 'dan', 'new']
    cnt = frameA.SubTaskIn('right', task_list)
    print(cnt)
    print(frameA.df_dis.groupby('task').count())
