case node['platform']
when 'amazon', 'redhat', 'centos'
  default['yum-remi']['repositories'] = %w(remi remi-php55 remi-php56 remi-test)
when 'fedora'
  case node['platform_version'].to_i
  when 20, 21
    default['yum-remi']['repositories'] = %w(remi remi-php56 remi-test)
  else
    default['yum-remi']['repositories'] = %w(remi remi-test)
  end
end
