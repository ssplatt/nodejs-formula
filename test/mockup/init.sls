{% from "nodejs/map.jinja" import nodejs with context %}

{% if nodejs.from.pkg -%}
apt-transport-https:
  pkg.installed

nodejs_repo:
  pkgrepo.managed:
    - humanname: nodejs
    - name: deb https://deb.nodesource.com/node_8.x {{ grains.oscodename }} main
    - file: /etc/apt/sources.list.d/nodesource.list
    - key_url: https://deb.nodesource.com/gpgkey/nodesource.gpg.key
{%- endif %}
