default['yum']['remi-php56']['repositoryid'] = 'remi-php56'

case node['platform']
when 'amazon'
  default['yum']['remi-php56']['description'] = 'Les RPM de remi de PHP 5.6 pour Enterprise Linux 6 - $basearch'
  default['yum']['remi-php56']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/6/php56/mirror'
when 'redhat', 'centos'
  default['yum']['remi-php56']['description'] = "Les RPM de remi de PHP 5.6 pour Enterprise Linux #{node['platform_version'].to_i} - $basearch"
  default['yum']['remi-php56']['mirrorlist'] = "http://rpms.famillecollet.com/enterprise/#{node['platform_version'].to_i}/php56/mirror"
when 'fedora'
  default['yum']['remi-php56']['description'] = 'Les RPM de remi de PHP 5.6 - Fedora $releasever - $basearch'
  default['yum']['remi-php56']['mirrorlist'] = 'http://rpms.famillecollet.com/fedora/$releasever/php56'
end

default['yum']['remi-php56']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
default['yum']['remi-php56']['failovermethod'] = 'roundrobin'
default['yum']['remi-php56']['gpgcheck'] = true
default['yum']['remi-php56']['enabled'] = false
default['yum']['remi-php56']['managed'] = true
