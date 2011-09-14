class AddProjectIdToSvnAuthzs < ActiveRecord::Migration
  def self.up
    add_column :svn_authzs, :project_id, :integer
  end

  def self.down
    remove_column :svn_authzs, :project_id, :integer
  end
end
