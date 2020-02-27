#!/bin/sh
sudo pkg update &&
    sudo pkg install -y llvm80 &&
    sudo pkg clean -y &&
    sudo sed -i -E -e 's/:path=\/sbin \/bin \/usr\/sbin \/usr\/bin \/usr\/games \/usr\/local\/sbin \/usr\/local\/bin \/usr\/pkg\/sbin \/usr\/pkg\/bin ~\/bin:\\$/:path=\/sbin \/bin \/usr\/sbin \/usr\/bin \/usr\/games \/usr\/local\/sbin \/usr\/local\/bin \/usr\/pkg\/sbin \/usr\/pkg\/bin ~\/bin \/usr\/local\/llvm80\/bin:\\/' /etc/login.conf &&
    sudo cap_mkdb /etc/login.conf
