class AddReferenceToPetsTable < ActiveRecord::Migration[6.0]
  def change
    add_reference(:pets, :owner)
  end
end
