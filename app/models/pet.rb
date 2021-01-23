class Pet < ApplicationRecord
  belongs_to :client
  has_many :pet_histories

  validates :name, presence: true
  validates :breed, presence: true
  validates :birth_date, presence: true

end
