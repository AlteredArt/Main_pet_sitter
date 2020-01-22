class CreateAppointmentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
    t.date :date
    t.references :pets
    t.references :sitters
  end
end
end