class Sitters < ActiveRecord::Base
    has_many :pets, through: :appointments
    has_many :appointments
end



# Sitters
# name_of_company
# Fk owners
# Fk pets
# Sitters knows owners and many pets through owners