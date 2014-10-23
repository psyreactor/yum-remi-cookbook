# Encoding: utf-8
require 'spec_helper'

describe 'yum-remi::default' do
  let(:chef_run) do
    ChefSpec::Runner.new(
      :platform => 'centos',
      :version => '6.5'
      ) do |node|
        node.automatic['kernel']['machine'] = 'x86_64'
      end.converge('yum-remi::default')
  end

  it 'creates yum repo pydio' do
    expect(chef_run).to create_yum_repository('remi')
    expect(chef_run).to create_yum_repository('remi-test')
    expect(chef_run).to create_yum_repository('remi-php55')
    expect(chef_run).to create_yum_repository('remi-php56')
  end

end
