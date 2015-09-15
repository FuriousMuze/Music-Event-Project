class RemoveVenueIdFromEvents < ActiveRecord::Migration
  def change
  	remove_column :events, :venue_id
  end
end
