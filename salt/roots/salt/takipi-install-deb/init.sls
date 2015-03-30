# Include the ``java`` sls in order to use oracle_java_pkg
include:
    - java

# Note: this is only valid for the Debian repo / package
# You should filter on grain['os'] conditional for yum-based distros
takipi_repo_deb:
    pkgrepo.managed:
        - humanname: Takipi Official Debian Repository
        - name: deb https://s3.amazonaws.com/takipi-deb-repo stable main
        - dist: stable
        - key_url: https://s3.amazonaws.com/takipi-deb-repo/hello@takipi.com.gpg.key
        - file: /etc/apt/sources.list.d/takipi.list
takipi:
    pkg:
        - installed
        - require:
            - pkg: oracle_java_pkg
            - pkgrepo: takipi_repo_deb
#    service:
#        - running
#        - enable: True
#        - require:
#            - pkg: takipi
