# Installs key software for windows servers
class windows_core::setup () {
  include chocolatey
  
  file { 'C:\Test-File.txt':
    ensure  => present,
    content => "Hello World!",
  }
  
  package {'virtualbox':
    provider => chocolatey,
  }
  
  package {'googlechrome':
    provider => chocolatey,
  }
  
  package {'vagrant':
    provider => chocolatey,
  }
  
  package {'docker':
    provider => chocolatey,
  }
  
  package {'vscode': 
    provider => chocolatey,
  }
}
