class Sitters < ActiveRecord::Base
    has_many :pets, through: :appointments
    has_many :appointments
end
