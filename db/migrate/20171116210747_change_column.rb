class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :payment_types, :payment_type, :payment
  end
end
