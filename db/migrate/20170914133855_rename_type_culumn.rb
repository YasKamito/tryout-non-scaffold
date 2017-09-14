class RenameTypeCulumn < ActiveRecord::Migration[5.1]
  def change
      rename_column :cashes, :type, :cashtype
  end
end
