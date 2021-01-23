class Client < ApplicationRecord
    has_many :pets

    validates :name, presence: true
    validates :phone, presence: true
    validates :email, presence: true
end
