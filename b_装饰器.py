from time import clock


def opt(a, b, c):
    print('opt 调用', a, b, c)
    return a ** b + c


def opt_main(fun, *args):
    ''' opt_main 函数作为参数的  单层 调用  '''
    print('opt_main 调用')

    # print( type( args ) )
    rst = opt(args[0], args[1], args[2])
    print(rst)


def opt_main2(fun, *args):
    ''' opt_main2 函数作为参数的  单层 调用  '''
    print('opt_main2 调用')
    # print( type( args ) )
    return fun(args[0], args[1], args[2])


def opt_main3(fun, *args):
    ''' opt_main3 函数作为参数的  单层 调用  '''
    print('opt_main3 调用')
    # 注意使用带*的参数
    return fun(*args)


def opt_main4(para1):
    print('opt_main4 执行传入 ：', para1)

    def opt_4(para2, para3):
        print('opt_4 执行传入 ：', para2, para3)
        return opt(para1, para2, para3)
    return opt_4


def my_timer(f):
    print('my_timer', f)

    def timer(*args):
        t1 = clock()
        print('timer', *args)
        rst = f(*args)
        print('最底层函数结果', rst)
        t2 = clock()
        return t2-t1
    return timer


if __name__ == "__main__":

    fun = opt(1, 2, 3)
    print(fun)
    print('\n\t1***************')
    print(opt_main.__doc__)
    opt_main(opt, 2, 3, 4)

    print('\n\t2***************')
    print(opt_main2.__doc__)
    fun2 = opt_main2(opt, 2, 3, 4)
    print(type(fun2))
    print('通过变量 fun2 调用函数，其返回值为：', fun2)

    print('\n\t3***************\n')
    fun3 = opt_main3(opt, 2, 3, 4)
    print(type(fun3))
    print('通过变量 fun2 调用函数，其返回值为：', fun3)

    fun4 = opt_main4(3)
    xx = fun4(2, 4)
    print(type(fun4))
    print('通过变量 fun4 调用函数，其返回值为：', xx)

    print('\n\t5**************\n')
    print('连续两次调用：', opt_main4(5)(2, 1))

    print('\n    6**************\n \tmy_timer( opt ) 就是一个函数( 2, 3, 4 )是其参数')
    print('连续调用,返回opt函数执行时间：', my_timer(opt)(2, 3, 4))
