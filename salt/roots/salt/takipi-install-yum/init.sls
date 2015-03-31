# Include the ``java`` sls in order to use oracle_java_pkg

# Note: this is only valid for the Debian repo / package
# You should filter on grain['os'] conditional for yum-based distros
takipi_repo_yum:
    pkgrepo.managed:
        - humanname: Takipi Official Debian Repository
        - name: yum https://s3.amazonaws.com/takipi-rpm-repo
        - key_url: https://s3.amazonaws.com/takipi-rpm-repo/hello@takipi.com.gpg.key
        - file: /etc/apt/sources.list.d/takipi.list
takipi:
    pkg:
        - installed
        - require:
            - pkgrepo: takipi_repo_yum

