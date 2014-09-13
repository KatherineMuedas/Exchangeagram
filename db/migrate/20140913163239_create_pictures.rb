class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.text :description
      t.string :category
      t.belongs_to :user

      t.timestamps
    end
  end
end
