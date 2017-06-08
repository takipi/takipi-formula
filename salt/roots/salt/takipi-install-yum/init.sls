# Include the ``java`` sls in order to use oracle_java_pkg

# Note: this is only valid for the yum repo / package
# You should filter on grain['os'] conditional for yum-based distros
takipi_repo_yum:
    pkgrepo.managed:
        - humanname: Takipi Official Yum Repository
        - name: takipi
        - baseurl: https://s3.amazonaws.com/takipi-rpm-repo
        - gpgkey: https://s3.amazonaws.com/takipi-rpm-repo/hello@takipi.com.gpg.key
        - gpgcheck: 1
takipi:
    pkg:
        - installed
        - require:
            - pkgrepo: takipi_repo_yum

