# Installs key software for windows servers
class windows_core::setup () {
  include vagrant
  include docker

  class { 'vscode':
    package_ensure                => 'present',
    vscode_download_absolute_path => 'C:\\Windows\\Temp',
    create_desktop_icon           => true,
    create_quick_launch_icon      => true,
    create_context_menu_files     => true,
    create_context_menu_folders   => true,
    add_to_path                   => true,
  }
  
  file { 'C:\Test-File.txt':
    ensure  => present,
    content => "Hello World!",
  }
}
