from pandas import DataFrame
import pandas as pd
import numpy as np
import queue




# 总任务数量平均分，有余数的最后一个子任务调节
def div_task(total:int = 0, cnt:int = 8):
    every_cnt = int( round(total/cnt) )
    x = total%cnt
    tl = []
    if x > 0:
        for i in range(cnt-1):
            tl.append(every_cnt)
        tl.append(total- every_cnt*(cnt-1))
    else:
        for i in range(cnt):
            tl.append(every_cnt)
    rst = np.array(tl)
    print(rst,rst.sum())

if __name__ == '__main__':
    dd = np.random.randint( 50, 300, 10 ) * 100

    qt = queue.Queue()
    for cnt in dd:
        qt.put( cnt )
    print( dd )
    while not qt.empty():
        xx = qt.get()
        div_task( xx , 8)