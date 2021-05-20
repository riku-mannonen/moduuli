/etc/apt/trusted.gpg.d/microsoft.gpg:
  file.managed:
    - source: salt://vscode/microsoft.gpg

/etc/apt/sources.list.d/microsoft.list:
  file.managed:
    - source: salt://vscode/microsoft.list

install_vscode:
  pkg.installed:
    - name: code
    - refresh: True

/etc/skel/settings.json:
  file.managed:
    - source: salt://vscode/settings.json
    - makedirs: True 

