takipi-setup:
  cmd.script:
#    - require:
#       - file: /opt/takipi/etc/takipi-setup-machine-name
#       - file: /opt/takipi/takipi.properties
    - source: salt://takipi-setup/takipi-setup.sh
    - user: root
    - group: root
    - shell: /bin/bash
