"""立库模拟程序基础类"""
import datetime

import numpy as np
import pandas as pd

# 不用科学计数法输出
np.set_printoptions(suppress=True)
# 设置打印全部
np.set_printoptions(threshold=np.inf)
# 显示所有列
pd.set_option('display.max_columns', None)
# 显示所有行
pd.set_option('display.max_rows', None)
# 设置value的显示长度为100，默认为50
pd.set_option('max_colwidth', 100)


class TaskList():
    def __init__(self):
        self.task = pd.DataFrame()
        # 任务号，数量，完成数量，设备状态，设备类型
        self.task.columns = [
            'task_no',
            'quantity',
            'complete_quantity',
            'status',
            'type']

    """入库任务，需要传入 任务号，数量，完成数量，设备状态，设备类型"""

    def input_equip(self, task_info: {}):
        pass


class Frame:
    def __init__(self, x=10, y=10):
        self.num_w = x
        self.num_h = y
        self.cnt = x * y
        self.completed_task = pd.DataFrame(
            columns=[
                'gateway',
                'count',
                'type',
                'stat',
                'timestamp',
                'distance'])

        # shelves 代表货架的二维数组,元素坐标是位置，值是序号
        self.shelves_idx = None
        # 货架距离远点位置的直线距离，
        self.shelves_distance = None

        # 设置立库形状，左下角 至 右上角 序号递增
        self.shelves_idx = np.arange(
            1,
            self.cnt +
            1).reshape(
            (self.num_h,
             self.num_w))

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
        self.df_dis['dis_1'] = round(
            np.sqrt((self.df_dis['x'] * 1.5) ** 2 + (self.df_dis['y'] * 1.2) ** 2), 2)

        # 本货柜到右边出口距离
        self.df_dis['dis_2'] = round(np.sqrt(
            (self.df_dis['y'] * 1.2) ** 2 + ((self.num_w + 1 - self.df_dis['x']) * 1.5) ** 2), 2)
        self.df_dis['task'] = 0
        self.df_dis.columns = ['x', 'y', 'dis_left', 'dis_right', 'task']

    # 获取货架上任务列表中指定设备类别、状态的货柜数量
    def get_frame_cnt(self, task_type: int = 0) -> int:
        rst = self.df_dis.groupby('task').count()
        if task_type in rst.index:
            rst_cnt = rst.loc[task_type][0]
        else:
            rst_cnt = 0
        return rst_cnt

    # 获取货架上各种设备类别、状态的货柜数量，即当前货架总体库存情况
    def get_frame_info(self) -> int:
        rst = self.df_dis.groupby('task').count()
        total = rst['x'].sum()
        type_stat = rst.index.values
        cnt = rst['x']

        rst_df = pd.DataFrame(columns=['存放类别', '数量', '占比'])
        container  = ''

        for t in type_stat:
            info_list = []
            if int(t / 10) == 1:
                container  = '单相'
            if int(t / 10) == 2:
                container  = '互感器'

            if int(t / 10) == 3:
                container  = '三相三线'
            if int(t / 10) == 4:
                container  = '三相四线'

            if int(t / 10) == 9:
                container  = '集中器'
            if int(t / 10) == 8:
                container  = ' 采集器'

            if t % 10 == 0:
                container  += '/新购'
            if t % 10 == 1:
                container  += '/合格'
            if t % 10 == 2:
                container  += '/自动不合格'
            if t % 10 == 4:
                container  += '/人工不合格'

            if t == 0:
                container  = ' 空货柜'
            container  = '{:。>8}'.format(container )
            info_list.append(container )
            container  = '{: >6}'.format(cnt[t])
            info_list.append(container )

            info_list.append('{: >4}%'.format(round(cnt[t] * 100 / total, 2)))

            info_df = pd.DataFrame([info_list], columns=['存放类别', '数量', '占比'])
            rst_df = rst_df.append(info_df, ignore_index=True)

        print(rst_df)

    # 根据任务信息返回 标记在货柜上单标记

    def get_task_flag(self, task: list = None) -> int:
        #     ['right', 200,'dan','new']
        # 单相 三相三线 三相四线 互感器 集中器 采集器
        flg = 0
        if task[2] == 'dan':
            flg = 1
        if task[2] == 'sansan':
            flg = 3
        if task[2] == 'sansi':
            flg = 4
        if task[2] == 'hgq':
            flg = 2
        if task[2] == 'jzq':
            flg = 9
        if task[2] == 'cjq':
            flg = 8

        flg = flg * 10
        # 新表 合格表 不合格
        if task[3] == 'xin':
            flg += 0
        if task[3] == 'hege':
            flg += 1
        if task[3] == 'buhege':
            flg += 2
        if task[3] == 'renbuhege':
            flg += 3
        return flg

    # 入库子任务 gateway_x确定从左边入库还是右边, sub_task 子任务信息
    def SubTaskIn(self, sub_task: list = None):
        cnt_tot = sub_task[1]
        cur_cnt = self.get_frame_cnt(0)
        # 当前没有足够的空货位，不能入库
        if cnt_tot > cur_cnt:
            return None
        # 保存本次任务开始时间戳
        cur_task = sub_task.copy()
        cur_task.append(
            datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f'))
        # 'right', 300,'sansan','hege'

        # 开始入库操作
        # 按照距离排序
        if sub_task[0] == 'right':
            df1 = self.df_dis.loc[self.df_dis['task'] == 0].sort_values(
                by='dis_right', ascending=True).head(cnt_tot)
            # 移动距离求和，各列分别按照行相加
            df_tot = df1.sum(axis=0)
            dis_tot = df_tot['dis_right']

        if sub_task[0] == 'left':
            df1 = self.df_dis.loc[self.df_dis['task'] == 0].sort_values(
                by='dis_left', ascending=True).head(cnt_tot)
            df_tot = df1.sum(axis=0)
            dis_tot = df_tot['dis_left']

        idx = df1.index
        task_flg = self.get_task_flag(sub_task)
        self.df_dis.loc[idx, 'task'] = task_flg
        print(task_flg)
        # 任务执行时间，保存到完成任务列表
        cur_task.append(dis_tot)
        t_df = pd.DataFrame(
            [cur_task],
            columns=[
                'gateway',
                'count',
                'type',
                'stat',
                'timestamp',
                'distance'])
        self.completed_task = self.completed_task.append(
            t_df, ignore_index=True)

        return dis_tot

    # df2 = df_idx.loc[idx].sort_values(by='dis', ascending=True)

    def show_status(self):
        print('**********立库信息**********\n')
        msg = '\t< 1 >\t宽x：{0:}, 高y：{1:}, 总储位：{2:}'.format(
            self.num_w, self.num_h, self.cnt)
        print(msg)
        print('\t< 2 >\t立库形状：', self.shelves_idx.shape)
        print('\n\t< 3 >\t已完成任务清单: \n', self.completed_task)
        print('\n\t< 4 >\t当前库存情况')
        print(self.df_dis.groupby('task').count())
        print('******************************\n\n')


if __name__ == '__main__':
    frameA = Frame(70, 30)
    # frameA.show_status()
    # col = frameA.df_dis.values

    # print(frameA.df_dis)
    task_list = ['right', 200, 'dan', 'xin']
    frameA.SubTaskIn(task_list)

    task_list = ['right', 300, 'sansan', 'hege']
    frameA.SubTaskIn(task_list)
    # frameA.show_status()

    frameA.get_frame_info()
