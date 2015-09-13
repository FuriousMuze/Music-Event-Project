class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :body
      t.string :venue_id
      t.string :name
      t.datetime :date_time

      t.timestamps null: false
    end
  end
end
