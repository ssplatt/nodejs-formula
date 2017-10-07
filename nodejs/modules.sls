# vim: ft=sls
{% from "nodejs/map.jinja" import nodejs with context %}

{% if nodejs.modules.from.pkg %}
node_modules_pkgs:
  pkg.installed:
    - pkgs: {{ nodejs.modules.pkgs }}
{% elif nodejs.modules.from.npm %}
node_modules_npm:
  npm.installed:
    - pkgs: {{ nodejs.modules.pkgs }}
{% endif %}
