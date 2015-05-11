# Docker image to build Openfire plugins

For now, we only build Openfire core plugins and [Helga](https://community.igniterealtime.org/docs/DOC-1080).

## How to use
To build plugins of Openfire:

    $> docker run --rm=true -v $(pwd)/plugins_dir:/build openfire-build-plugins
