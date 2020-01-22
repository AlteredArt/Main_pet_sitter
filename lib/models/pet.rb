class Pet < ActiveRecord::Base
    has_many :appointments
    has_many :sitters, through: :appointments
    belongs_to :owner
   
end

