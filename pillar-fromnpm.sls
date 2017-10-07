# vim: ft=yaml
# Custom Pillar Data for node

nodejs:
  enabled: true
  modules:
    from:
      pkg: false
      npm: true
    pkgs:
      - ansi
      - forever
