class CreateAbouts < ActiveRecord::Migration[5.1]
  def change
    create_table :abouts do |t|
      t.string :title
      t.string :tagline
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
