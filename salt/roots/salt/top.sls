base:
  '*':
 {% if grains['os'] != 'Debian' , 'ubuntu'%}
    - takipi-install-deb
 {% elif grains['os'] == 'rhel' , 'suse' %}
    - takipi-install-yum
 {% endif %}
    - takipi-setup
