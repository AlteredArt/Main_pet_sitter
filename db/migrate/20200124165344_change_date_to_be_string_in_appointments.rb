class ChangeDateToBeStringInAppointments < ActiveRecord::Migration[6.0]
  def change
    change_column :appointments, :date, :string
  end
end
