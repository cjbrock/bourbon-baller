class RenameTypeToKindInBourbonTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :bourbons, :type, :kind
  end
end
