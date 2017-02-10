#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
ifInstalled = `pear list Text_LanguageDetect`
if ifInstalled.include? "not installed"
    bash "add_textLanguageDetect" do
      user "root"
      cwd "/tmp"
      code <<EOH
      pecl channel-update pecl.php.net
      pear install pear/Text_LanguageDetect-0.3.0
EOH
    end   
end
