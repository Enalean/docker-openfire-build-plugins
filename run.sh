#!/bin/bash
set -e


# Get and decompress Helga plugin
wget http://martin-weusten.de/wp-content/uploads/2011/03/helga-2.22-415.tar.gz && \
    tar -zxvf helga-2.22-415.tar.gz && \

# Move Helga plugin to the build directory
mv helga-2.22-415/helga/ openfire_src/src/plugins/

# Build plugins
cd openfire_src/build/ && ant plugins

# Copy plugins
cp /openfire_src/target/openfire/plugins/*.jar /build
