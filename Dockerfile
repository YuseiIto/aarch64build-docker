FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y  curl xz-utils
RUN curl -o gcc-arm.tar.xz -L https://developer.arm.com/-/media/Files/downloads/gnu-a/10.2-2020.11/binrel/gcc-arm-10.2-2020.11-x86_64-aarch64-none-elf.tar.xz
RUN mkdir -p /opt
RUN tar Jxf gcc-arm.tar.xz -C /opt/
RUN ln -s /opt/gcc-arm-10.2-2020.11-x86_64-aarch64-none-elf /opt/aarch64-elf
ENV PATH /opt/aarch64-elf/bin:$PATH
RUN apt install --reinstall libpython2.7 -y
CMD sh
