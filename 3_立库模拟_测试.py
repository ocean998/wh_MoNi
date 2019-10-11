from pandas import DataFrame
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
        for t in self.task_in.index:
            # 将父任务分解成8个子任务
            self.div_task_in(self.task_in.iloc[t, 2],
                             8,
                             self.task_in.iloc[t, 1],
                             self.task_in.iloc[t, 0],
                             'xin',
                             'in')

    # 将新购任务分解成多条全检出库任务
    def set_test_out(self):
        idx = self.task_in.index
        outs = []
        for i in idx:
            one_task = self.task_in.loc[i]
            outs.append(self.div_test_out(one_task))
        self.sub_test_out = pd.concat(outs)




    # 检定出库任务分解，子任务数量随机，返回列表类型 task_columes = ['equip_type', 'task_no', 'quantity']
    def div_test_out(self,  task = None):
        rst = []
        # 根据设备类别，设置检定出库子任务一次出库数量
        beg = 100
        end = 200
        if  task['equip_type'] == 'hgq':
            beg = 80
            end = 160

        sub_cnt = rd.randint(beg, end)
        cnt = task['quantity']
        while cnt - sub_cnt > 0:
            rst.append(sub_cnt)
            cnt = cnt - sub_cnt
            sub_cnt = rd.randint(10,20)
        if cnt > 0 :
            rst.append(cnt)
        rst2 = []
        for index, value in enumerate(rst):
            subno = index + 1000
            sub = [task['task_no'], subno, value,  task['equip_type'], 'new', 'out']
            rst2.append(sub)
        rstdf = pd.DataFrame(rst2, columns=sub_columns)
        return rstdf

    # 将新购任务分解成多条子入库任务,cnt子任务数
    def div_task_in(self,
                    total: int = 0,
                    cnt: int = 8,
                    task_no: int = 0,
                    equip_type: str = 'dan',
                    status: str = 'xin',
                    io_type: str = 'in'):
        every_cnt = int(round(total / cnt))
        x = total % cnt
        # 拆分成cnt个任务后，每个子任务出入库数量的清单
        sub_num = []
        if x > 0:
            for i in range(cnt - 1):
                sub_num.append(every_cnt)
            sub_num.append(total - every_cnt * (cnt - 1))
        else:
            for i in range(cnt):
                sub_num.append(every_cnt)
        rst = np.array(sub_num)

        # 生成子任务的DataFrame
        sub_list = []
        sub_no = 0
        for n in rst:
            sub_no += 1
            sub_l = [task_no, sub_no, n, equip_type, status, io_type]
            sub_list.append(sub_l)

        # print('\n  *****sub task : task_no:{}, sub_no:{}****'.format(task_no, sub_no))
        sub_t = pd.DataFrame(
            sub_list, columns=sub_columns
        )

        self.sub_task_in = self.sub_task_in.append(sub_t, ignore_index=True)


if __name__ == '__main__':
    all_task = TaskList()
    # print(all_task.task_in)
    print('-----------------------------------')
    # print(all_task.sub_task_in)
    all_task.set_test_out()
    print('所有出库任务数量:{}'.format( all_task.sub_test_out.shape[0]))
    # qt = queue.Queue()
    # for cnt in dd:
    #     qt.put( cnt )
    # print( dd )
    # while not qt.empty():
    #     xx = qt.get()
    #     div_task_in( xx , 8)
