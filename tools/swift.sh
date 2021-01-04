#!

# SWIFT
# https://swift.org/getting-started/#installing-swift 

apt-get install \
          binutils \
          git \
          gnupg2 \
          libc6-dev \
          libcurl4 \
          libedit2 \
          libgcc-9-dev \
          libpython2.7 \
          libsqlite3-0 \
          libstdc++-9-dev \
          libxml2 \
          libz3-dev \
          pkg-config \
          tzdata \
          zlib1g-dev

wget -P /tmp -O /tmp/swift-5.3-RELEASE-ubuntu20.04.tar.gz --no-cookies --no-cache https://swift.org/builds/swift-5.3-release/ubuntu2004/swift-5.3-RELEASE/swift-5.3-RELEASE-ubuntu20.04.tar.gz

tar -xvzf /tmp/swift-5.3-RELEASE-ubuntu20.04.tar.gz -C /tmp

mv /tmp/swift-5.3-RELEASE-ubuntu20.04 /usr/local/bin/swift

export PATH=/usr/local/bin/swift/usr/bin:"${PATH}"

swift --version







