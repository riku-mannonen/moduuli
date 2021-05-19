/etc/apt/trusted.gpg.d/microsoft.gpg:
  file.managed:
    - source: salt://vscode/microsoft.gpg

/etc/apt/sources.list.d/microsoft.list:
  file.managed:
    - source: salt://vscode/microsoft.list

/etc/skel/.config/vscode:
  file.recurse:
    - source: salt://vscode/skeleton/
    - makedirs: True

install_vscode:
  pkg.installed:
    - name: code
    - refresh: True

