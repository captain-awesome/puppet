class base::if {
  if $::hostname =~ /^rabelard(\d+)/ {
    notice("you have arrived at server $0")
  }
}
