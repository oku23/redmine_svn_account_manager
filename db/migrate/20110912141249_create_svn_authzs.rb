class CreateSvnAuthzs < ActiveRecord::Migration
  def self.up
    create_table :svn_authzs do |t|
      t.column :svn_directory_id, :integer
      t.column :user_id, :integer
      t.column :readable, :string
      t.column :writable, :string
    end
  end

  def self.down
    drop_table :svn_authzs
  end
end
