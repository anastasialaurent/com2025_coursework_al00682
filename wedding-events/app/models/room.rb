class Room < ActiveRecord::Base
    validates :name, :bookings, presence: true
    validates :name, uniquencess: true
    # http://api.rubyonrails.org/classes/ActiveModel/Validations/HelperMethods.html#method-i-validates_inclusion_of
    validates_inclusion_of :theme, in: %w(dark, light, floral, beach, minimal),
        message: t(:wrong_theme)
    
    has_many :bookings
    has_many :events, through: :bookings
end
