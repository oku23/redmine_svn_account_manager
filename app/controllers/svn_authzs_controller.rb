class SvnAuthzsController < ApplicationController
  unloadable
  before_filter :find_project, :authorize

  def index
    @directories = init()
  end

  def new
    @directory = SvnDirectory.new(params[:svn_directory])
    @directory.project_id = @project.id
    if @directory.save
      flash[:notice] = l(:succcessful_create_svn_directory)
      redirect_to :action => 'index', :id => @project
    else
      @directories = init()
      render :action => 'index'
    end
  end
  
  def init
    SvnDirectory.find(:all, :conditions => ["project_id = #{@project.id}"])
  end
end
