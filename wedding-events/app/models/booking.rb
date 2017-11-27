class Booking < ActiveRecord::Base
    belongs_to :event
    has_many :rooms
end
