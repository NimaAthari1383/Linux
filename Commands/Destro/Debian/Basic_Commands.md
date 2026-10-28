# Some of Debian Basic Commands

## Table Of Contents

- [`cp` Command](#cp)
- [`echo` Command](#echo)
- [`sysctl` Command](#sysctl)
- [`journalctl` Command](#journalctl)

---

## `cp`

| Command                                                                           | What it does                                      | When to use it                                                |
|-----------------------------------------------------------------------------------|---------------------------------------------------|---------------------------------------------------------------|
| `cp DESTINATION_FILE DESTINATION`                                                 | Copy file to destination                          | **Often**                                                     |
| `cp /home/USERNAME/.bashrc /root/`                                                | Copy bash configs in root user                    | **Allways** - It's not critical but make me work easier.      |

***[🔝 Table Ofcreate-swap-file Contents](#table-of-contents)***

---

## `echo`

| Command                                                                           | What it does                                      | When to use it                                                |
|-----------------------------------------------------------------------------------|---------------------------------------------------|---------------------------------------------------------------|
| `echo "HELLO WORLD!" >> helloworld.txt`                                           | Append "HELLO WORLD!" to hellowold.txt file.      | **Sometimes**                                                 |
| `echo "linux ALL=(ALL) NOPASSWD:ALL" PIPELINE sudo tee /etc/sudoers.d/linux`      | Sudo access without pasword                       | **Never** — Use with safty                                    |

***[🔝 Table Ofcreate-swap-file Contents](#table-of-contents)***

---

## `sysctl`

| Command                                                                           | What it does                                      | When to use it                                                |
|-----------------------------------------------------------------------------------|---------------------------------------------------|---------------------------------------------------------------|
| `sysctl -a`                                                                       | Shows kernel's parameters                         | **Rarely**                                                    |
| `sysctl --system`                                                                 | Save your changes                                 |                                                               |

***[🔝 Table Ofcreate-swap-file Contents](#table-of-contents)***

---

## `journalctl`

| Command                                                                           | What it does                                      | When to use it                                                |
|-----------------------------------------------------------------------------------|---------------------------------------------------|---------------------------------------------------------------|
| `journalctl -xefu nginx`                                                          | Check nginx service, follow it                    | **Often**                                                     |

***[🔝 Table Ofcreate-swap-file Contents](#table-of-contents)***

---

| Command                                                                           | What it does                                      | When to use it                                                |
|-----------------------------------------------------------------------------------|---------------------------------------------------|---------------------------------------------------------------|
| `lsb_release -a`                                                                  | Check your system os info                         | **Rarely**                                                    |

***[🔝 Table Ofcreate-swap-file Contents](#table-of-contents)***

---

find . -iname '*dockerfile*'
find . -type f -iname '*dockerfile*'
grep -RinI 'dockerfile' .
find "$(pwd)" -type f -iname '*dockerfile*'
