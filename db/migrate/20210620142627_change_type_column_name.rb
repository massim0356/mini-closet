class ChangeTypeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :clothings, :type, :kind
  end
end
