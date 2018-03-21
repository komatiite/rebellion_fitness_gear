class ChangeFieldsInProduct < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :width, :string
    change_column :products, :diameter, :string
    change_column :products, :height, :string
    change_column :products, :length, :string
    change_column :products, :weight, :string
    change_column :products, :volume, :string
    change_column :products, :max_weight, :string
  end
end
