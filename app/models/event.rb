class Event < ActiveRecord::Base
	belongs_to :user
	belongs_to :venue
	has_many :users, through: :venue
end
