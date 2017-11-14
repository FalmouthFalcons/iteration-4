class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :catergory
      t.string :type
      t.integer :price
      t.boolean :delevery
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
