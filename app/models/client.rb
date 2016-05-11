class Client < ActiveRecord::Base
    belongs_to :company
    
    def self.alphabetical_order
        order(name: :asc)
    end
    
    def self.location_filter(location)
        where(location: location)
    end
end
