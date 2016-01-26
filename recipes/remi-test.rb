#
# Author:: Sean OMeara (<sean@chef.io>)
# Recipe:: yum-remi::remi-test
#
# Copyright 2016, Chef
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include_recipe 'yum-remi::remi'

if !node['recipes'].include?('yum-remi::remi-php55') ||
   !node['recipes'].include?('yum-remi::remi-php55-debuginfo') ||
   !node['recipes'].include?('yum-remi::remi-php56') ||
   !node['recipes'].include?('yum-remi::remi-php56-debuginfo') ||
   !node['recipes'].include?('yum-remi::remi-php70') ||
   !node['recipes'].include?('yum-remi::remi-php70-debuginfo') ||
   !node['recipes'].include?('yum-remi::remi-php70-test') ||
   !node['recipes'].include?('yum-remi::remi-php70-test-debuginfo')
  %w(
    remi-php55
    remi-php55-debuginfo
    remi-php56
    remi-php56-debuginfo
    remi-php70
    remi-php70-debuginfo
    remi-php70-test
    remi-php70-test-debuginfo
  ).each do |repo|
    yum_repository repo do
      action :delete
    end
  end
end

%w(
  remi-test
  remi-test-debuginfo
).each do |repo|
  next unless node['yum'][repo]['managed']

  yum_repository repo do
    baseurl node['yum'][repo]['baseurl']
    cost node['yum'][repo]['cost']
    description node['yum'][repo]['description']
    enabled node['yum'][repo]['enabled']
    enablegroups node['yum'][repo]['enablegroups']
    exclude node['yum'][repo]['exclude']
    failovermethod node['yum'][repo]['failovermethod']
    fastestmirror_enabled node['yum'][repo]['fastestmirror_enabled']
    gpgcheck node['yum'][repo]['gpgcheck']
    gpgkey node['yum'][repo]['gpgkey']
    http_caching node['yum'][repo]['http_caching']
    include_config node['yum'][repo]['include_config']
    includepkgs node['yum'][repo]['includepkgs']
    keepalive node['yum'][repo]['keepalive']
    max_retries node['yum'][repo]['max_retries']
    metadata_expire node['yum'][repo]['metadata_expire']
    mirror_expire node['yum'][repo]['mirror_expire']
    mirrorlist node['yum'][repo]['mirrorlist']
    mirrorlist_expire node['yum'][repo]['mirrorlist_expire']
    password node['yum'][repo]['password']
    priority node['yum'][repo]['priority']
    proxy node['yum'][repo]['proxy']
    proxy_username node['yum'][repo]['proxy_username']
    proxy_password node['yum'][repo]['proxy_password']
    report_instanceid node['yum'][repo]['report_instanceid']
    repositoryid node['yum'][repo]['repositoryid']
    skip_if_unavailable node['yum'][repo]['skip_if_unavailable']
    source node['yum'][repo]['source']
    sslcacert node['yum'][repo]['sslcacert']
    sslclientcert node['yum'][repo]['sslclientcert']
    sslclientkey node['yum'][repo]['sslclientkey']
    sslverify node['yum'][repo]['sslverify']
    timeout node['yum'][repo]['timeout']
    username node['yum'][repo]['username']
    action :create
  end
end
