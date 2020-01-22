class Pet < ActiveRecord::Base
    has_many :appointments
    has_many :sitters, through: :appointments
    belongs_to :owner
end



# Pets
# Name
# Age
# Breed
# Fk sitters
# Fk owners 
# Pets belong to many owners and many sitters through single owner, but does not know sitters
