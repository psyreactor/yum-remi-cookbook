# Encoding: utf-8
require 'spec_helper'

describe 'yum-remi::default' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new(
      :platform => 'centos',
      :version => '6.5'
      ) do |node|
        node.automatic['kernel']['machine'] = 'x86_64'
      end.converge('yum-remi::default')
  end

  it 'creates yum repo Remi' do
    expect(chef_run).to create_yum_repository('remi')
  end

  it 'creates yum repo Remi-Test' do
    expect(chef_run).to create_yum_repository('remi-test')
  end

  it 'creates yum repo Remi-PHP55' do
    expect(chef_run).to create_yum_repository('remi-php55')
  end

  it 'creates yum repo Remi-PHP56' do
    expect(chef_run).to create_yum_repository('remi-php56')
  end

end
