class Pet < ApplicationRecord
  belongs_to :client
  has_many :pet_histories

  validates :name, presence: true
  validates :breed, presence: true
  validates :birthdate, presence: true

  def number_of_appointments
    PetHistory.where(pet_id: id).count
  end

  def get_client_name
    self.client.name
  end


end
