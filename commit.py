import os
import sys

os_dirs_dict = {
    'win32': {
        'source_dir': r'D:\PycharmProjects\idlepig',
        'html_dir': r'D:\note\html',
        'build_html_dir': r'D:\PycharmProjects\idlepig\build\html\.',
    },
    'darwin': {
        'source_dir': '/Users/zhouxinzheng/docs/idlepig',
        'html_dir': '/Users/zhouxinzheng/docs/html',
        'build_html_dir': '/Users/zhouxinzheng/docs/idlepig/build/html/.',
    }
}

comment = sys.argv[1]

platform = str(sys.platform)

command_add = 'git add .'
command_commit = 'git commit -m "%s" ' % comment
command_push = 'git push -u origin main'

os.system(command_add)
os.system(command_commit)
os.system(command_push)

# source_dir
os.chdir(os_dirs_dict.get(platform).get('source_dir'))
os.system('make clean')
os.system('make html')

# html_dir
os.chdir(os_dirs_dict.get(platform).get('html_dir'))

# build_html_dir
os.system('cp -r -f %s .' % os_dirs_dict.get(platform).get('build_html_dir'))

command_add = 'git add .'
command_commit = 'git commit -m "%s" ' % comment
command_push = 'git push -u origin main'

os.system(command_add)
os.system(command_commit)
os.system(command_push)
