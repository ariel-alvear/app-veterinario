class Client < ApplicationRecord
    has_many :pets

    validates :name, presence: true
    validates :phone, presence: true
    validates :email, presence: true
    
    def number_of_pets
        Pet.where(client_id: id).count
    end
end
