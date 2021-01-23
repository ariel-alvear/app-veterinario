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

  def average_weight
    weight_array = PetHistory.where(pet_id: id).pluck(:weight)
    if weight_array.size == 0
        "This pet don't have histories"
    else
        weight_array.sum / weight_array.size
    end
  end

  def average_height
      height_array = PetHistory.where(pet_id: id).pluck(:height)
      if height_array.size == 0
          "This pet don't have histories"
      else
          height_array.sum / height_array.size
      end
  end

  def max_weight
      weight_array = PetHistory.where(pet_id: id).pluck(:weight)
      if weight_array.any?
          weight_array.max
      else
          "This pet don't have histories"
      end
  end

  def max_height
      height_array = PetHistory.where(pet_id: id).pluck(:height)
      if height_array.any?
          height_array.max
      else
          "This pet don't have histories"
      end
  end

end
