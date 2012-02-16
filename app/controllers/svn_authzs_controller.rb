class SvnAuthzsController < ApplicationController
  unloadable
  before_filter :find_project, :authorize

  def index
    @directories = init()
    @users = User.find(:all)
  end
  
  def new
    @authz = SvnAuthz.new(params[:svn_authz])
    @authz.project_id = @project.id
    if @authz.save
      flash[:notice] = l(:succcessful_create_svn_directory)
      redirect_to :controller => 'svn_authzs', :action => 'index', :id => @project
    else
      @directories = init()
      render :controller => 'svn_authzs', :action => 'index'
    end
  end
  
  def init
    SvnDirectory.find(:all, :conditions => ["project_id = #{@project.id}"])
  end
end
