# gcc-aarch64-elf toolchain on Docker

This docker image provides the GNU C Compiler toolchain for cross-compiling on x86_64 for aarch64(ARM64) environment.


## Requirements
- docker

## Usage
### Installation

```
$ git clone git@github.com:YuseiIto/aarch64build-docker.git
$ cd aarch64build-docker
$ docker pull itoyusei/gcc-aarch64-elf
$ echo export PATH='"'`pwd`':$PATH"' >> ~/.zshrc
```

### Compile

```
$ ./aarch64-none-elf-gcc <gcc arguments>
```

(And other tools for example ld,as,objcopy,objdump... is also available as well)
