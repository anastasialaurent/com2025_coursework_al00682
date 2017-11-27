class Event < ActiveRecord::Base
    validates :name, :date, :time_slot, :paid, :client_telephone, presence: true
    # client telephone does not need to be unique as one client can be 
    # organising multiple events
    validates :name, uniquencess: true 
    validates :client_telephone, length: {is: 11} # length of a uk telephone no.
    validates_inclusion_of :time_slot, in: %w(morning afternoon evening),
        message: t(:wrong_time_slot)
    
    has_many :bookings
    has_many :rooms, through: :bookings
end
