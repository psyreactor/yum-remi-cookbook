default['yum']['remi-php55']['repositoryid'] = 'remi-php55'

case node['platform']
when 'amazon'
  default['yum']['remi-php55']['description'] = 'Les RPM de remi de PHP 5.5 pour Enterprise Linux 6 - $basearch'
  default['yum']['remi-php55']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/6/php55/mirror'
when 'redhat', 'centos'
  default['yum']['remi-php55']['description'] = "Les RPM de remi de PHP 5.5 pour Enterprise Linux #{node['platform_version'].to_i} - $basearch"
  default['yum']['remi-php55']['mirrorlist'] = "http://rpms.famillecollet.com/enterprise/#{node['platform_version'].to_i}/php55/mirror"
end

default['yum']['remi-php55']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
default['yum']['remi-php55']['failovermethod'] = 'roundrobin'
default['yum']['remi-php55']['gpgcheck'] = true
default['yum']['remi-php55']['enabled'] = false
default['yum']['remi-php55']['managed'] = true
