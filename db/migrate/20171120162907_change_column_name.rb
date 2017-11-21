class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :product_types, :product_type, :category
    rename_column :products, :category, :product_type_id
  end
end
