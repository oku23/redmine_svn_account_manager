class CreateSvnDirectories < ActiveRecord::Migration
  def self.up
    create_table :svn_directories do |t|
      t.column :path, :string
    end
  end

  def self.down
    drop_table :svn_directories
  end
end
