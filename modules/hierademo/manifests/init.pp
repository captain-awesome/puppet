# == Class: hierademo
#
class hierademo ($domain_name = 'default', $api_key = 'default_api_key'){
  $domainname = hiera ('domain_name')
  notify { "the hiera domain name value is: ${domainname}": }
  notify { "the domain name value is: ${domain_name}": }
  notify { "the api key value is: ${api_key}": }
}
