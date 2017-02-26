# == Class: profiles::base

class profiles::base {
  include base
  include base::params
  include base::ssh
  include base::variables
  include localusers
  include localusers::groups::wheel
  include localusers::groups::finance
  include ntp
  class {'ntp': package => 'ntp'}
}
