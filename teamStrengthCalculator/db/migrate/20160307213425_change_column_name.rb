class ChangeColumnName < ActiveRecord::Migration
  def self.up
    rename_column :developers, :type, :dev_type
  end

  def self.down
    rename_column :developers, :dev_type, :type
  end
end
