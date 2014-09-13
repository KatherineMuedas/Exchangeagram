class AddBelongsToPicturesForComments < ActiveRecord::Migration
  def change
  	 change_table :comments do |t|
     t.belongs_to :picture
    end
  end
end
