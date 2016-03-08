class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :developers, :type, :dev_type
  end
end
