FROM golang:1.14.4

LABEL authors="tehsphinx <tehsphinx@web.de>, pieceofsoul <sascha@pieceofsoul.de>"
# Credits to Péter Szilágyi <peterke@gmail.com> whos awesome xgo containers I stole this from.

# Make sure apt-get is up to date and dependent packages are installed
RUN \
  apt-get update && \
  apt-get install -y automake autogen build-essential ca-certificates                    \
#    gcc-5-arm-linux-gnueabi g++-5-arm-linux-gnueabi libc6-dev-armel-cross                \
#    gcc-5-arm-linux-gnueabihf g++-5-arm-linux-gnueabihf libc6-dev-armhf-cross            \
#    gcc-5-aarch64-linux-gnu g++-5-aarch64-linux-gnu libc6-dev-arm64-cross                \
#    gcc-5-mips-linux-gnu g++-5-mips-linux-gnu libc6-dev-mips-cross                       \
#    gcc-5-mipsel-linux-gnu g++-5-mipsel-linux-gnu libc6-dev-mipsel-cross                 \
#    gcc-5-mips64-linux-gnuabi64 g++-5-mips64-linux-gnuabi64 libc6-dev-mips64-cross       \
#    gcc-5-mips64el-linux-gnuabi64 g++-5-mips64el-linux-gnuabi64 libc6-dev-mips64el-cross \
#    gcc-5-multilib g++-5-multilib \
    gcc-multilib g++-multilib gcc-mingw-w64 g++-mingw-w64 clang llvm-dev                 \
    libtool libxml2-dev uuid-dev libssl-dev swig pkg-config patch         \
    make xz-utils cpio wget zip unzip p7zip git mercurial bzr texinfo help2man           \
    libgtk-3-dev libappindicator3-dev \
    unixodbc-dev \
    --no-install-recommends

RUN curl -sL https://taskfile.dev/install.sh | sh

CMD ["bash"]
