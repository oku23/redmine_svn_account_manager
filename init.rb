require 'redmine'

Redmine::Plugin.register :redmine_svn_account_manager do
  name 'Redmine Svn Account Manager plugin'
  author 'Jun Okumura'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/oku23/redmine_svn_account_manager'
  author_url 'https://github.com/oku23'
  
  project_module :svn_account_manager do
    permission :view_svn_authzs, {:svn_authzs => [:index,:new],:svn_directories => [:new]}, :require => :member
  end
  
  menu :project_menu, :svn_authzs, { :controller => 'svn_authzs', :action => 'index' }
end
