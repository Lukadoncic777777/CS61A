def tst(f,g,h):
    def GG(*args):
        for v in args:
            print(v)
    return GG
def add(x,y):
    return 1
def mul(x,y):
    return 1
QAQ=tst(add,mul,1)
