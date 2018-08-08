#! /usr/bin/python

import sys
import subprocess

def main():
    virt_cmd = ''
    os_img_name = ''
    disk_flag = False

    # format: script_name vm_name os_disk_path [disk_paths] download_link
    # note: disks_paths is optional
    vm_name = sys.argv[1]
    memory = sys.argv[2]
    os_disk_path = sys.argv[3]

    if len(sys.argv) == 5:
        download_link = sys.argv[4]
    else:
        disk_flag = True
        disk_paths_list = sys.argv[4].split()
        download_link = sys.argv[5]

    virt_cmd += 'virt-install --name %s --memory %s ' % (vm_name, memory)

    # only validation is on whether the os disk path is in use
    # only checks ~/images/ dir at the moment
    # os_index = os_disk_path.find('/images/') + len('/images/')
    # os_img_name = os_disk_path[os_index:]
    #
    # try:
    #     ls_cmd = 'ls ~/images/ | grep %s' % os_img_name
    #     ls_buf = subprocess.check_output(ls_cmd, shell=True).split()
    #
    #     if len(ls_buf):
    #         print('Invalid os disk path entered, already in use, exiting.')
    #         sys.exit(1)
    # except:
    #     pass

    virt_cmd += '--disk path=%s ' % os_disk_path
    virt_cmd += '-l %s' % download_link

    try:
        virt_buf = subprocess.call(virt_cmd, shell=True)
    except subprocess.CalledProcessError as e:
        print('Virt-install command failed: %s' % e)
        sys.exit(1)

if __name__ == '__main__':
    main()
