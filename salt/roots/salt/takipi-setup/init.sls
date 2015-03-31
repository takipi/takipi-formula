{% set secret_key = salt.grains['secret_key'] %}
takipi-setup:
  cmd.script:
    - source: salt://takipi-setup/takipi-setup.sh 
    - args: "'S9589#xL0j8f4SlrHWD87h#drIG5Hd/rnS6GDdoDVK6HuU30F1OAQ0PBMBem0gtu1s=#66fe' ''"
    - user: root
    - group: root
    - shell: /bin/bash
