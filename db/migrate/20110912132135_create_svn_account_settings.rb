class CreateSvnAccountSettings < ActiveRecord::Migration
  def self.up
    create_table :svn_account_settings do |t|
      t.column :svn_passwd_path, :string
      t.column :svn_authz_path, :string
    end
  end

  def self.down
    drop_table :svn_account_settings
  end
end
