/etc/apt/trusted.gpg.d/microsoft.gpg:
  file.managed:
    - source: salt://vscode/microsoft.gpg

/etc/apt/sources.list.d/microsoft.list:
  file.managed:
    - source: salt://vscode/microsoft.list

/etc/skel/.config/vscode/storage.json:
  file.managed:
    - source: salt://vscode/storage.json

install_vscode:
  pkg.installed:
    - name: code
    - refresh: True
    - python3:
      enabled: True
