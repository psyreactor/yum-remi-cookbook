require 'spec_helper'

describe 'yum-remi::remi-php55' do
  context 'CentOS 5.11' do
    cached(:centos_511_remi_php55) do
      ChefSpec::SoloRunner.new(
        platform: 'centos',
        version: '5.11'
      ) do |node|
        node.set['yum']['remi-php55']['enabled'] = true
        node.set['yum']['remi-php55']['managed'] = true
        node.set['yum']['remi-php55-debuginfo']['enabled'] = true
        node.set['yum']['remi-php55-debuginfo']['managed'] = true
      end.converge(described_recipe)
    end

    %w(
      remi
      remi-safe
      remi-php55
      remi-php55-debuginfo
    ).each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(centos_511_remi_php55).to create_yum_repository(repo)
      end
    end
  end

  context 'CentOS 6.6' do
    cached(:centos_66_remi_php55) do
      ChefSpec::SoloRunner.new(
        platform: 'centos',
        version: '6.6'
      ) do |node|
        node.set['yum']['remi-php55']['enabled'] = true
        node.set['yum']['remi-php55']['managed'] = true
        node.set['yum']['remi-php55-debuginfo']['enabled'] = true
        node.set['yum']['remi-php55-debuginfo']['managed'] = true
      end.converge(described_recipe)
    end

    %w(
      remi
      remi-safe
      remi-php55
      remi-php55-debuginfo
    ).each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(centos_66_remi_php55).to create_yum_repository(repo)
      end
    end
  end

  context 'CentOS 7.0' do
    cached(:centos_70_remi_php55) do
      ChefSpec::SoloRunner.new(
        platform: 'centos',
        version: '7.0'
      ) do |node|
        node.set['yum']['remi-php55']['enabled'] = true
        node.set['yum']['remi-php55']['managed'] = true
        node.set['yum']['remi-php55-debuginfo']['enabled'] = true
        node.set['yum']['remi-php55-debuginfo']['managed'] = true
      end.converge(described_recipe)
    end

    %w(
      remi
      remi-safe
      remi-php55
      remi-php55-debuginfo
    ).each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(centos_70_remi_php55).to create_yum_repository(repo)
      end
    end
  end
end
