@echo off
setlocal enabledelayedexpansion

for %%f in (%*) do (
  if !key_file! == 1 (
    rem The value of ansible_ssh_private_key_file is the path to
    rem a key file in Windows TMP directory from MSYS2 point of view.
    set arg=/%tmp:\=/%
    set arg=!arg::=!
    set args=!args!=!arg!/%%~nxf
    set key_file=0
  ) else if !extra_argument! == 1 (
    set args=!args!=%%f
    set extra_argument=0
  ) else if %%~xf == .yml (
    rem Convert the passed Playbook path to relative one.
    set arg=%%f
    set arg=!arg:%CD%=!
    set arg=!arg:\=/!
    set args=!args! !arg:~1!
  ) else (
    rem Add other args as they are
    set args=!args! %%f
  )

  if %%f == ansible_ssh_private_key_file (
    rem The next arg will be the value of ansible_ssh_private_key_file
    set key_file=1
    set extra_argument=0
  )
  if !extra_argument! == 2 (
    set extra_argument=1
  )
  if %%f == -e (
    rem The next 2 args will be an extra argument
    set extra_argument=2
  )
)

echo args: %args%
C:\msys64\usr\bin\python.exe C:\msys64\usr\bin\ansible-playbook -v %args%
