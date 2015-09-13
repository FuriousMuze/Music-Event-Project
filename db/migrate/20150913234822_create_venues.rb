class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :location
      t.string :image_url

      t.timestamps null: false
    end
  end
end
