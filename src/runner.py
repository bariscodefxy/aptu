import os
def run(args):
    path = os.path.abspath(__file__)
    dirname = os.path.dirname(path)
    os.system(f'python3 {dirname}/aptubase.py {args}')