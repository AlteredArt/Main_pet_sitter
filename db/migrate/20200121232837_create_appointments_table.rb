class CreateAppointmentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
    t.date :date
    t.references :pet, foreign_key: true 
    t.references :sitter, foreign_key: true 
  end
end
end