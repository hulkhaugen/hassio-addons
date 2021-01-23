# WORK IN PROGRESS, NOT YET TESTED...

# Home Assistant Community Add-on: Apache2 Lite
![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield] ![Supports armhf Architecture][armhf-shield] ![Supports armv7 Architecture][armv7-shield] ![Supports i386 Architecture][i386-shield]
![Project Maintenance][maintenance-shield]

## Apache2 Webserver for Home Assistant OS
This is a fork of FraserF's [Apache2 Add-on](https://github.com/FaserF/hassio-addons/tree/master/apache2), which has been trimmed down by excluding support for PHP7 and MariaDB. If you need those features, use his add-on. If you're only hosting a static website, this lightweight version should do.

![Ingress Support](images/ingress.png)

## About

The Apache HTTP Server Project is an effort to develop and maintain an open-source HTTP server for modern operating systems including UNIX and Windows. The goal of this project is to provide a secure, efficient and extensible server that provides HTTP services in sync with the current HTTP standards.
The Apache HTTP Server ("httpd") was launched in 1995 and it has been the most popular web server on the Internet since April 1996. It has celebrated its 25th birthday as a project in February 2020.
The Apache HTTP Server is a project of The Apache Software Foundation.

This add-on is a docker image containing `apache2` and `apache2-ssl`

## Installation

The installation of this add-on is pretty straightforward and not different in comparison to installing any other custom Home Assistant add-on.
Just add my repo to the HassIO add-ons repositorys: https://github.com/hulkhaugen/hassio-addons

1. Create the subfolder where you want to deploy your website files. Must be a subfolder of `/share` or `/media`. This add-on will NOT generate the folder, and setup will fail. The default folder is `/share/htdocs` unless you've defined anything else.  
2. Copy your assets the newly created folder. If not, a generic `index.html` welcome site will be copied as a placeholder.

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

Example add-on configuration:

```yaml
document_root: /share/htdocs
default_conf: /share/apache2/000-default.conf
default_ssl_conf: /share/apache2/000-default-le-ssl.conf
website_name: mywebsite.ddns.net
ssl: true
certfile: fullchain.pem
keyfile: privkey.pem
```

**Note**: _This is just an example, don't copy and paste it! Create your own!_

### Option: `document_root`

Change it depending where your root webfolder is on your Home Assistant installation. Default is `/share/htdocs`.

**Note:** It has to be a subfolder of either `/share` or `/media`, as the other folders are not visible to this add-on. The specified subfolder has to be manually created, or else the add-on will fail to start.

### Option: `default_conf` & `default_ssl_conf`

You can choose between the following options:

default -> the default apache2 add-on file will be used

get_config -> Get a copy of the default apache2 add-on config file to your `/share` folder.

Please change the location depending where your custom `000-default.conf` / `000-default-le-ssl.conf` file is, f.e.: `/share/apache2/000-default.conf`  
**More Information:** https://cwiki.apache.org/confluence/display/HTTPD/ExampleVhosts

Please note, that I wont give any support if you are using custom apache2 config files and are recieving any apache2 errors!

### Option: `website_name`

This option is needed, if you enable SSL to true. If you are not using SSL put anything in here, as it doesn't matter.

### Option: `ssl`

Enables/Disables SSL (HTTPS) on the web interface. Set it `true` to enable it, `false` otherwise.

If you need a self-signed certificate, have a look at FraserF's openssl add-on: https://github.com/FaserF/hassio-addons/openssl

**Note**: _The files MUST be stored in `/ssl`, which is the default._

## Ingress

This add-on supports Home Assistant Ingress. It only to work if you enable SSL.

## Support

Got questions?

You could [open an issue here][issue] GitHub.

## Authors & contributors

The original program is from the Apache Project. For more informatios please visit this page: https://httpd.apache.org/  
The original HassIO add-on is brought to you by [FaserF](https://github.com/FraserF)  
This trimmed down version is attepted by [hulkhaugen](https://github.com/hulkhaugen)  

## License

MIT License

Copyright (c) 2019-2020 FaserF & The Apache Project

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[commits]: https://github.com/FaserF/apache2/commits/master
[contributors]: https://github.com/FaserF/hassio-addons/apache2/graphs/contributors
[FaserF]: https://github.com/FaserF/
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
[issue]: https://github.com/FaserF/hassio-addons/issues
[repository]: https://github.com/FaserF/hassio-addons/apache2
[maintenance-shield]: https://img.shields.io/maintenance/yes/2020.svg
