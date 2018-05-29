# Installs key software for windows servers
class windows_core::setup () {
  require chocolatey

  $package_list = [
    'virtualbox',
    'googlechrome',
    'vagrant',
    'docker',
    'vscode',
    'git'
  ]

  package {$package_list:
    provider => chocolatey
  }
}
