from pandas import DataFrame
import pandas as pd
import numpy as np
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


columes = ['equip_type', 'task_no', 'quantity']


class TaskList():
    def __init__(self):
        # 需要在分解的总任务列表
        self.task_df = pd.DataFrame(
            columns=[
                'equip_type',
                'task_no',
                'quantity'])
        # 任务号，数量，完成数量，设备状态，设备类型
        self.task_no = 100000
        # 每个任务5000-30000，共210个任务
        dan = np.random.randint(5, 30, 210) * 1000
        self.set_total_task('dan', dan)
        # 每个任务5000-20000，共210个任务
        sansi = np.random.randint(5, 20, 100) * 1000
        self.set_total_task('sansi', sansi)
        # 每个任务7000-15000，共80个任务
        sansan = np.random.randint(7, 15, 80) * 1000
        self.set_total_task('sansan', sansan)
        # 每个任务7000-15000，共80个任务
        hgq = np.random.randint(7, 15, 80) * 1000
        self.set_total_task('hgq', hgq)
        # 每个任务7000-15000，共80个任务
        jzq = np.random.randint(7, 15, 80) * 1000
        self.set_total_task('jzq', jzq)
        # 每个任务12000-50000，共80个任务
        cjq = np.random.randint(12, 50, 80) * 1000
        self.set_total_task('cjq', cjq)

    # 设置新购任务，包含设备类别、总数量，
    def set_total_task(self, equip: str = 'dan', numbers: np.array = None):
        self.task_no += 10000
        sub_no = 0
        tl = []
        for num in numbers:
            sub_no += 1
            t = [equip, self.task_no + sub_no, num]
            df = pd.DataFrame([t], columns=columes)
            tl.append(df)
        rst_df = pd.concat(tl)
        self.task_df = self.task_df.append(rst_df, ignore_index=True)
        for t in self.task_df.index:
            # 将父任务分解成8个子任务
            self.div_task(self.task_df.iloc[t, 2],
                          8,
                          self.task_df.iloc[t, 1],
                          self.task_df.iloc[t, 0],
                          'xin',
                          'in')

    # 将新购任务分解成多条子入库任务

    def div_task(self,
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

        print('\n  *****sub task : task_no:{}, sub_no:{}****'.format(task_no, sub_no))
        sub_t = pd.DataFrame(
            sub_list,
            columns=[
                'task_no',
                'sub_task_no',
                'cnt',
                'equip_type',
                'status',
                'io_type'])
        print(sub_t)



if __name__ == '__main__':
    all_task = TaskList()
    print(all_task.task_df)
    #
    # qt = queue.Queue()
    # for cnt in dd:
    #     qt.put( cnt )
    # print( dd )
    # while not qt.empty():
    #     xx = qt.get()
    #     div_task( xx , 8)
