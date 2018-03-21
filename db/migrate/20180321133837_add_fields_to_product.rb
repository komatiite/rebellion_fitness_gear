class AddFieldsToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :width, :float
    add_column :products, :diameter, :float
    add_column :products, :height, :float
    add_column :products, :length, :float
    add_column :products, :weight, :float
    add_column :products, :volume, :float
    add_column :products, :size, :string
    add_column :products, :resistance, :string
    add_column :products, :colour, :string
    add_column :products, :material, :string
    add_column :products, :max_weight, :float
    add_column :products, :finish, :string
  end
end
