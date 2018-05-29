# Installs key software for windows servers
class windows_core::setup () {
  include chocolatey
  
  file { 'C:\Test-File.txt':
    ensure  => present,
    content => "Hello World!",
  }
}
