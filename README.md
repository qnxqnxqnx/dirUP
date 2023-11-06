# dirUP
dirUP is a command-line utility designed to streamline directory navigation within the Linux console. With just a single keypress, 'u' conveniently takes you up one level, while 'd' efficiently returns you down the path. This lets you quickly walk up and down along the directory path and simplifies the process of traversing complex directory structures.

# Files

- up.sh: this script changes to one directory up. It essentially runs "cd .." additionally memorizing the current folder to make it possible to get back to this folder.
- down.sh: this script changes to one directory down the path where you have already been before. It can also change to one directory down if there is only one folder in the current directory.

# Installation

Make the scripts executable:
```shell 
chmod +x up.sh
chmod +x down.sh
```

For the next two commands, where we configure aliases, we assume that you have placed your scripts in your home directory.

Make the script up.sh run as alias when you press "u":
```shell 
alias u='. ~/up.sh'
```

Make the script down.sh run as alias when you press "d":
```shell 
alias d='. ~/down.sh'
```

To make this configuration persistent after restart, add your aliases to the file *~/.bash_aliases*

# Example

This is the example of walking up and down along the directory path:

```shell 
[alex@laptop /usr/local/lib/node_modules/frontail/node_modules/socket.io-client/node_modules/socket.io-parser/node_modules/component-emitter]$ u
[alex@laptop /usr/local/lib/node_modules/frontail/node_modules/socket.io-client/node_modules/socket.io-parser/node_modules]$ u
[alex@laptop /usr/local/lib/node_modules/frontail/node_modules/socket.io-client/node_modules/socket.io-parser]$ u
[alex@laptop /usr/local/lib/node_modules/frontail/node_modules/socket.io-client/node_modules]$ u
[alex@laptop /usr/local/lib/node_modules/frontail/node_modules/socket.io-client]$ u
[alex@laptop /usr/local/lib/node_modules/frontail/node_modules]$ u
[alex@laptop /usr/local/lib/node_modules/frontail]$ u
[alex@laptop /usr/local/lib/node_modules]$ u
[alex@laptop /usr/local/lib]$ u
[alex@laptop /usr/local]$ u
[alex@laptop /usr]$ u
[alex@laptop /]$ d
[alex@laptop /usr]$ d
[alex@laptop /usr/local]$ d
[alex@laptop /usr/local/lib]$ d
[alex@laptop /usr/local/lib/node_modules]$ d
[alex@laptop /usr/local/lib/node_modules/frontail]$ d
[alex@laptop /usr/local/lib/node_modules/frontail/node_modules]$ d
[alex@laptop /usr/local/lib/node_modules/frontail/node_modules/socket.io-client]$ d
[alex@laptop /usr/local/lib/node_modules/frontail/node_modules/socket.io-client/node_modules]$ d
[alex@laptop /usr/local/lib/node_modules/frontail/node_modules/socket.io-client/node_modules/socket.io-parser]$ d
[alex@laptop /usr/local/lib/node_modules/frontail/node_modules/socket.io-client/node_modules/socket.io-parser/node_modules]$ d
[alex@laptop /usr/local/lib/node_modules/frontail/node_modules/socket.io-client/node_modules/socket.io-parser/node_modules/component-emitter]$  
```
