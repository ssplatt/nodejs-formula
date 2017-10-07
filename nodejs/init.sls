# vim: ft=sls
# Init node
{% from "nodejs/map.jinja" import nodejs with context %}
{# Below is an example of having a toggle for the state #}

{% if nodejs.enabled %}
include:
  {% if nodejs.from.pkg -%}
  - nodejs.install_pkg
  {% endif %}
  - nodejs.config
  - nodejs.modules
{% else %}
'nodejs-formula disabled':
  test.succeed_without_changes
{% endif %}
