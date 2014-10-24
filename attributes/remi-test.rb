default['yum']['remi-test']['repositoryid'] = 'remi-test'

case node['platform']
when 'amazon'
  default['yum']['remi-test']['description'] = 'Les RPM de remi en test pour Enterprise Linux 6 - $basearch'
  default['yum']['remi-test']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/6/php56/mirror'
when 'redhat', 'centos'
  default['yum']['remi-test']['description'] = "Les RPM de remi en test pour Enterprise Linux #{node['platform_version'].to_i} - $basearch"
  default['yum']['remi-test']['mirrorlist'] = "http://rpms.famillecollet.com/enterprise/#{node['platform_version'].to_i}/test/mirror"
when 'fedora'
  case node['platform_version'].to_i
  when 20, 21
    default['yum']['remi-test']['description'] = 'Les RPM de remi en test pour Fedora $releasever - $basearch'
    default['yum']['remi-test']['mirrorlist'] = 'http://rpms.famillecollet.com/fedora/$releasever/test/mirror'
  end
end

default['yum']['remi-test']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
default['yum']['remi-test']['failovermethod'] = 'roundrobin'
default['yum']['remi-test']['gpgcheck'] = true
default['yum']['remi-test']['enabled'] = false
default['yum']['remi-test']['managed'] = true
