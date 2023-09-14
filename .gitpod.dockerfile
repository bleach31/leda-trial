FROM gitpod/workspace-full:2023-08-19-14-41-20


RUN sudo apt update && sudo apt install -y xz-utils qemu-system-x86-64
RUN wget https://github.com/eclipse-leda/leda-distro/releases/download/v0.1.0-M2/eclipse-leda-qemu-x86_64.tar.xz
RUN mkdir -p leda/eclipse-leda-qemu-x86_64
RUN tar xf eclipse-leda-qemu-x86_64.tar.xz -C leda/eclipse-leda-qemu-x86_64
