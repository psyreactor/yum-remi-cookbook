default['yum']['remi']['repositoryid'] = 'remi'

case node['platform']
when 'amazon'
  default['yum']['remi']['description'] = 'Les RPM de remi pour Enterprise Linux 6 - $basearch'
  default['yum']['remi']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/6/remi/mirror'
when 'redhat', 'centos'
  default['yum']['remi']['description'] = "Les RPM de remi pour Enterprise Linux #{node['platform_version'].to_i} - $basearch"
  default['yum']['remi']['mirrorlist'] = "http://rpms.famillecollet.com/enterprise/#{node['platform_version'].to_i}/remi/mirror"
when 'fedora'
  default['yum']['remi']['description'] = 'Les RPM de remi - Fedora $releasever - $basearch'
  default['yum']['remi']['mirrorlist'] = 'http://rpms.famillecollet.com/fedora/$releasever/remi/mirror'
end

default['yum']['remi']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
default['yum']['remi']['failovermethod'] = 'roundrobin'
default['yum']['remi']['gpgcheck'] = true
default['yum']['remi']['enabled'] = true
default['yum']['remi']['managed'] = true
