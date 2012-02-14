class SvnDirectoriesController < ApplicationController
  unloadable
  before_filter :find_project, :authorize

#test
  def new
    @directory = SvnDirectory.new(params[:svn_directory])
    @directory.project_id = @project.id
    if @directory.save
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
