/etc/apt/trusted.gpg.d/microsoft.gpg:
  file.managed:
    - source: salt://vscode/microsoft.gpg

/etc/apt/sources.list.d/microsoft.list:
  file.managed:
    - source: salt://vscode/microsoft.list

/etc/skel/.config/Code/settings.json:
  file.managed:
    - makedirs: True
    - source: salt://vscode/settings.json

/home/riku/.config/Code/User/settings.json:
  file.managed:
    - makedirs: True
    - source: salt://vscode/settings.json
    
install_vscode:
  pkg.installed:
    - name: code
    - refresh: True

