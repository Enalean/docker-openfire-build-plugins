# Docker image to build Openfire plugins

For now, we only build Openfire core plugins and [Helga](https://community.igniterealtime.org/docs/DOC-1080).

## How to use

    $> git clone https://github.com/Enalean/docker-openfire-build-plugins.git
    $> cd docker-openfire-build-plugins
    $> docker build --tag=openfire-build-plugins


To build plugins of Openfire:

    $> cd /path/to/tuleap/sources/
    $> docker run --rm=true -v $(pwd)/plugins_dir:/build openfire-build-plugins

Once they are built, you need to upgrade you version of openfire. First download the rpm here
https://www.igniterealtime.org/downloads/download-landing.jsp?file=openfire/openfire-3.10.0-1.i386.rpm

Next, install it

    $> yum install openfire-3.10.0-1.i386.rpm

Then you can use the newly built plugins

    $> cd /opt/openfire/
    $> cp -R plugins/ old_plugins
    $> cp -R /usr/share/tuleap/plugins_dir/ plugins
    $> chown -R daemon:daemon plugins
