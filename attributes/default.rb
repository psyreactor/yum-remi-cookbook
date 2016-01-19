case node['platform']
when 'fedora'
  case node['platform_version'].to_i
  when 21, 22, 23
    default['yum-remi']['repositories'] = %w(remi remi-php70)
  else
    default['yum-remi']['repositories'] = %w(remi)
  end
else
  case node['platform_version'].to_i
  when 5
    default['yum-remi']['repositories'] = %w(remi remi-safe remi-php56)
  when 6, 7
    default['yum-remi']['repositories'] = %w(remi remi-safe remi-php70)
  else
    default['yum-remi']['repositories'] = %w(remi)
  end
end
