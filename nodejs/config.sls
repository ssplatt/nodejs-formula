# vim: ft=sls
{% from "nodejs/map.jinja" import nodejs with context %}

node_npmrc:
  file.managed:
    - name: /etc/npmrc
    - source: salt://nodejs/files/npmrc.j2
    - template: jinja
    - config: {{ nodejs.config }}
