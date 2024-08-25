import os
import argparse

class Aptubase:

    def __init__(self):
        self.sudo = True
        # self.program = 'apt-get' # doesn't support search
        self.program = 'apt'

        self.base_command = ""

        if self.sudo:
            self.base_command += "sudo "

        self.base_command += self.program

    def update(self):
        os.system(f'{self.base_command} update')

    def upgrade(self):
        os.system(f'{self.base_command} upgrade')

    def auto_remove(self):
        os.system(f'{self.base_command} auto-remove')

    def install(self, args):
        os.system(f'{self.base_command} install {args}')

    def remove(self, args):
        os.system(f'{self.base_command} remove {args}')

    def search(self, args):
        os.system(f'{self.base_command} search {args}')

    def reinstall(self, args):
        os.system(f'{self.base_command} reinstall {args}')

    def show(self, args):
        os.system(f'{self.base_command} show {args}')

def main():
    parser = argparse.ArgumentParser(description='Aptu - shortcuts to apt for lazies Linuxers.')
    parser.add_argument('--update', action='store_true', help='Alias for \'sudo apt update\'.')
    parser.add_argument('--upgrade', action='store_true', help='Alias for \'sudo apt upgrade\'.')
    parser.add_argument('--auto-remove', action='store_true', help='Alias for \'sudo apt auto-remove\'.')
    parser.add_argument('--install', type=str, help='Alias for \'sudo apt install x\'.')
    parser.add_argument('--remove', type=str, help='Alias for \'sudo apt remove x\'.')
    parser.add_argument('--search', type=str, help='Alias for \'sudo apt search x\'.')
    parser.add_argument('--reinstall', type=str, help='Alias for \'sudo apt reinstall x\'.')
    parser.add_argument('--show', type=str, help='Alias for \'sudo apt show x\'.')

    base = Aptubase()
    args = parser.parse_args()

    if args.update:
        base.update()
        return

    if args.upgrade:
        base.upgrade()
        return

    if args.auto_remove:
        base.auto_remove()
        return

    if args.install:
        base.install(args.install)
        return

    if args.remove:
        base.remove(args.remove)
        return

    if args.search:
        base.search(args.search)
        return

    if args.reinstall:
        base.reinstall(args.reinstall)
        return

    if args.show:
        base.show(args.show)
        return

    print(parser.print_help())


if __name__ == "__main__":
    main()