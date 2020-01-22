class CreatePetsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :kind
      t.integer :age
    end
  end
end
