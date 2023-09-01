FROM gitpod/workspace-full:2023-08-19-14-41-20


RUN apt update && apt get install -y xz-utils qemu-system-x86-64
RUN mkdir leda/eclipse-leda-qemu-x86_64
RUN wget https://github.com/eclipse-leda/leda-distro/releases/download/v0.1.0-M2/eclipse-leda-qemu-x86_64.tar.xz
RUN tar xf leda/eclipse-leda-qemu-x86_64.tar.xz -C leda/eclipse-leda-qemu-x86_64