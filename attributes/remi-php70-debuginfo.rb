default['yum']['remi-php70-debuginfo']['repositoryid'] = 'remi-php70-debuginfo'
default['yum']['remi-php70-debuginfo']['gpgkey'] = 'http://rpms.remirepo.net/RPM-GPG-KEY-remi'
default['yum']['remi-php70-debuginfo']['gpgcheck'] = true
default['yum']['remi-php70-debuginfo']['enabled'] = false
default['yum']['remi-php70-debuginfo']['managed'] = false

case node['platform']
when 'fedora'
  case node['platform_version'].to_i
  when 21
    default['yum']['remi-php70-debuginfo']['baseurl'] = 'http://rpms.remirepo.net/fedora/21/debug-php70/$basearch/'
    default['yum']['remi-php70-debuginfo']['description'] = "Remi's PHP 7.0 RPM repository for Fedora Linux 21 - $basearch - debuginfo"
  when 22
    default['yum']['remi-php70-debuginfo']['baseurl'] = 'http://rpms.remirepo.net/fedora/22/debug-rphp70$basearch/'
    default['yum']['remi-php70-debuginfo']['description'] = "Remi's PHP 7.0 RPM repository for Fedora Linux 22 - $basearch - debuginfo"
  when 23
    default['yum']['remi-php70-debuginfo']['baseurl'] = 'http://rpms.remirepo.net/fedora/23/debug-php70/$basearch/'
    default['yum']['remi-php70-debuginfo']['description'] = "Remi's PHP 7.0 RPM repository for Fedora Linux 23 - $basearch - debuginfo"
  end
else
  case node['platform_version'].to_i
  when 5
    default['yum']['remi-php70-debuginfo']['baseurl'] = 'http://rpms.remirepo.net/enterprise/5/debug-php70/$basearch/'
    default['yum']['remi-php70-debuginfo']['description'] = "Remi's PHP 7.0 RPM repository for Enterprise Linux 5 - $basearch - debuginfo"
  when 6
    default['yum']['remi-php70-debuginfo']['baseurl'] = 'http://rpms.remirepo.net/enterprise/6/debug-php70/$basearch/'
    default['yum']['remi-php70-debuginfo']['description'] = "Remi's PHP 7.0 RPM repository for Enterprise Linux 6 - $basearch - debuginfo"
  when 7
    default['yum']['remi-php70-debuginfo']['baseurl'] = 'http://rpms.remirepo.net/enterprise/7/debug-php70/$basearch/'
    default['yum']['remi-php70-debuginfo']['description'] = "Remi's PHP 7.0 RPM repository for Enterprise Linux 7 - $basearch - debuginfo"
  end
end
