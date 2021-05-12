# Home Assistant Add-on: NGINX Server

## Installation

Follow these steps to get the add-on installed on your system:

Add repository as described in [installing third party add ons](https://www.home-assistant.io/common-tasks/os#installing-third-party-add-ons)

Use `https://github.com/bogusfocused/home-assistant-addons.git` as url of the repository. 

Once the repository is added, addon will become visible in **Add-on Store**
Click on the "INSTALL" button.

## How to use

Addon can read `/ssl` and `/share` folders. 

[Duck DNS](https://github.com/home-assistant/hassio-addons/tree/master/duckdns) add-on creates certificates in `/ssl` by default.

The `/etc/nginx/conf.d` is mapped to `/share/nginx`



## Support

In case you've found a bug, please [open an issue on our GitHub][issue].

[issue]: https://github.com/bogusfocused/home-assistant-addons/issues
[repository]: https://github.com/bogusfocused/home-assistant-addons.git