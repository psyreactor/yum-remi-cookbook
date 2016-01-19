require 'spec_helper'

describe 'yum-remi::remi' do
  context 'CentOS 5.11' do
    cached(:centos_511_remi) do
      ChefSpec::SoloRunner.new(
        platform: 'centos',
        version: '5.11'
      ) do |node|
        node.set['yum']['remi']['enabled'] = true
        node.set['yum']['remi']['managed'] = true
        node.set['yum']['remi-debuginfo']['enabled'] = true
        node.set['yum']['remi-debuginfo']['managed'] = true
      end.converge(described_recipe)
    end

    %w(
      remi
      remi-safe
      remi-debuginfo
    ).each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(centos_511_remi).to create_yum_repository(repo)
      end
    end
  end

  context 'CentOS 6.6' do
    cached(:centos_66_remi) do
      ChefSpec::SoloRunner.new(
        platform: 'centos',
        version: '6.6'
      ) do |node|
        node.set['yum']['remi']['enabled'] = true
        node.set['yum']['remi']['managed'] = true
        node.set['yum']['remi-debuginfo']['enabled'] = true
        node.set['yum']['remi-debuginfo']['managed'] = true
      end.converge(described_recipe)
    end

    %w(
      remi
      remi-safe
      remi-debuginfo
    ).each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(centos_66_remi).to create_yum_repository(repo)
      end
    end
  end

  context 'CentOS 7.0' do
    cached(:centos_70_remi) do
      ChefSpec::SoloRunner.new(
        platform: 'centos',
        version: '7.0'
      ) do |node|
        node.set['yum']['remi']['enabled'] = true
        node.set['yum']['remi']['managed'] = true
        node.set['yum']['remi-debuginfo']['enabled'] = true
        node.set['yum']['remi-debuginfo']['managed'] = true
      end.converge(described_recipe)
    end

    it 'creates yum_repository[remi-safe]' do
      expect(centos_70_remi).to create_yum_repository('remi-safe')
    end

    %w(
      remi
      remi-debuginfo
    ).each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(centos_70_remi).to create_yum_repository(repo)
      end
    end
  end
end
