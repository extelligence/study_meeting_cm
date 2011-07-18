# -*- coding: utf-8 -*-

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Staff.create(:name => '運営者A', :email => 'a@example.com')
Staff.create(:name => '運営者B', :email => 'b@example.com')

Sponsor.create(:name => '企業A', :email => 'a@company.com')
Sponsor.create(:name => '企業B', :email => 'b@company.com')
Sponsor.create(:name => '個人C', :email => 'c@company.com')
Sponsor.create(:name => '個人D', :email => 'd@company.com')


Meetup.create(:name => "すくすくスクラム勉強会", :staff_id => 1, :date => Time.now, :capacity => 50, :group_name => "○×さん", :site_url => "http://hoge.com", :status => "予定", :location => "東京")

Ad.create(:name => '広告1', :meetup_id => '1', :sponsor_id => '1', :second => 30, :url => "OsX8H_uXmqU")
Ad.create(:name => '広告2', :meetup_id => '1', :sponsor_id => '2', :second => 30, :url => "l53kgSYL1fU")
Ad.create(:name => '広告3', :meetup_id => '1', :sponsor_id => '3', :second => 30, :url => "1wDlsMg7CK4")
Ad.create(:name => '広告4', :meetup_id => '1', :sponsor_id => '4', :second => 30, :url => "cmTrCnWIirc")
Ad.create(:name => '広告5', :meetup_id => '1', :sponsor_id => '1', :second => 30, :url => "2In2a6xRDGQ")
