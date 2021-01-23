class AddAppointmentToPetHistories < ActiveRecord::Migration[6.1]
  def change
    add_column :pet_histories, :appointment, :date
  end
end
