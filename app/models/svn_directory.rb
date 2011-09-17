class SvnDirectory < ActiveRecord::Base
  unloadable
  
  validates_presence_of :path
end
