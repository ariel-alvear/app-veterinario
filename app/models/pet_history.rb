class PetHistory < ApplicationRecord
  belongs_to :pet

  validates :weight, presence: true
  validates :height, presence: true
  validates :diagnosis, presence: true
  validates :description, presence: true
  validates :appointment, presence: true
  validates :weight, :numericality => { :greater_than => 0 }
  validates :height, :numericality => { :greater_than => 0 }

  def get_pet_name
    self.pet.name
  end

end
