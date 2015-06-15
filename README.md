# Docker image to build Openfire plugins

For now, we only build Openfire core plugins and [Helga](https://community.igniterealtime.org/docs/DOC-1080).

## How to use

    $> git clone https://github.com/Enalean/docker-openfire-build-plugins.git
    $> cd docker-openfire-build-plugins
    $> docker build --tag=openfire-build-plugins


To build plugins of Openfire:

    $> cd /path/to/tuleap/sources/
    $> docker run --rm=true -v $(pwd)/plugins_dir:/build openfire-build-plugins
