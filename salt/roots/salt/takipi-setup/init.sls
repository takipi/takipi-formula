{% set secret_key = salt['grains.get']('takipi:secret_key') %}
takipi-setup:
  cmd.script:
    - source: salt://takipi-setup/takipi-setup.sh 
    - args: "'{{ secret_key }}' ''"
    - user: root
    - group: root
    - shell: /bin/bash
