define dir ($path = "", 
              $mode = 2755, 
              $owner = "root", 
              $group = "root", 
              $purge   = false,
              $recurse = false,
              $force   = false,
              $ensure = "directory"
              ) {

    case $path {
        "": { $our_path = $title }
        default: { $our_path = $path }
    }
    
    case $ensure {
        "directory", "present": {
            file { "$our_path":
                ensure => directory,
                mode => $mode,
                owner => $owner,
                group => $group,
                purge => $purge,
                recurse => $recurse,
                force => $force,
            }
        }
        "absent": {
            file { "$our_path":
                ensure => $ensure,
            }
        }
    }
}
