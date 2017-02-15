class base::if {
  if $::hostname =~ /^rabelard(\+d)/ {
    notice("you have arrive at server $0")
  }
}
