"""当前任务列表，供堆垛机模块查看当前未完成任务"""
import pandas as pd
import numpy as np
import random as rd
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


# 总任务数量平均分，有余数的最后一个子任务调节

# 到货任务列表，
task_columes = ['equip_type', 'task_no', 'quantity']
# 分解后的子任务列表
sub_columns = [
    'task_no',
    'sub_task_no',
    'cnt',
    'equip_type',
    'status',
    'io_type']
class TaskList():
    def __init__(self):
        # 需要在分解的总任务列表
        self.task_in = pd.DataFrame(
            columns=task_columes)
        self.sub_task_in = pd.DataFrame(columns=sub_columns)
        self.sub_test_out = pd.DataFrame(columns=sub_columns)
        self.task_no = 100000
        # 每个任务以万记还是以千记
        num = 100
        # 每个任务5000-30000，共210个任务
        cnt = np.random.randint(5, 30, 210) * num
        self.set_total_task_in('dan', cnt)
        # 每个任务5000-20000，共210个任务
        cnt = np.random.randint(5, 20, 100) * num
        self.set_total_task_in('sansi', cnt)
        # 每个任务7000-15000，共80个任务
        cnt = np.random.randint(7, 15, 80) * num
        self.set_total_task_in('sansan', cnt)
        # 每个任务7000-15000，共80个任务
        cnt = np.random.randint(7, 15, 80) * num
        self.set_total_task_in('hgq', cnt)
        # 每个任务7000-15000，共80个任务
        cnt = np.random.randint(7, 15, 80) * num
        self.set_total_task_in('jzq', cnt)
        # 每个任务12000-50000，共80个任务
        cnt = np.random.randint(12, 50, 80) * num
        self.set_total_task_in('cjq', cnt)

    # 设置新购任务，包含设备类别、总数量，
    def set_total_task_in(self, equip: str = 'dan', numbers: np.array = None):
        self.task_no += 10000
        sub_no = 0
        tl = []
        for num in numbers:
            sub_no += 1
            t = [equip, self.task_no + sub_no, num]
            # 生成一个DF
            df = pd.DataFrame([t], columns=task_columes)
            tl.append(df)
        # DF拼接，合并元素为DF类型的list，生成一个大的DF
        rst_df = pd.concat(tl)
        self.task_in = self.task_in.append(rst_df, ignore_index=True)

#     显示当前任务
    def show_curr_task(self):
        print(self.task_in)

if __name__ == '__main__':
    all_task = TaskList()
    print('-----------------------------------')
    all_task.show_curr_task()
