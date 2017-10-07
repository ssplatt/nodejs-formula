# vim: ft=sls
{% from "nodejs/map.jinja" import nodejs with context %}

nodejs_pkg:
  pkg.installed:
    - pkgs: {{ nodejs.pkgs }}
