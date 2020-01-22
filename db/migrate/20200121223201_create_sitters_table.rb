class CreateSittersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :sitters do |t|
      t.string :name_of_company
    end
  end
end

# t.refrences :owner, foreign_key: true
# t.refrences :pet, foreign_key: true