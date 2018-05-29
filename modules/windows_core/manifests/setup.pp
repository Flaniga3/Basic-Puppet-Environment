# Installs key software for windows servers
class windows_core::setup () {
  include vagrant
  include docker

  class { 'vscode':
    package_ensure => 'present',
  }
}
