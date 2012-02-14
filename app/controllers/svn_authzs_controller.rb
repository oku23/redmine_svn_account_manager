class SvnAuthzsController < ApplicationController
  unloadable
  before_filter :find_project, :authorize

  def index
    @directories = init()
  end
  
  def init
    SvnDirectory.find(:all, :conditions => ["project_id = #{@project.id}"])
  end
end
