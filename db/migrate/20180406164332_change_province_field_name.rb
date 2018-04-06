class ChangeProvinceFieldName < ActiveRecord::Migration[5.1]
  def change
    rename_column :provinces, :code, :name
  end
end
