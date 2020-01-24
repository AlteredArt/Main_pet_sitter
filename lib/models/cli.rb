class Cli
    attr_reader :owner


def welcome
    puts "Welcome, Please enter your first name"
        user_first = gets.chomp
    puts "Please enter your last name"
        user_last = gets.chomp
            puts "Welcome, #{full_name(user_first, user_last)}"
        find_owner(user_first, user_last)
    end

def find_owner(user_first, user_last)
        @owner = Owner.find_by(first_name: user_first,last_name: user_last)
     if owner
        sub_menu
    else
         create_a_owner(user_first, user_last)
         create_new_pet
    end
end

    def full_name(user_first, user_last)
        "#{user_first} #{user_last}"
    end

    def create_a_owner(user_first, user_last)
        @owner = Owner.create(first_name: user_first,last_name: user_last)
    end

def menu
       puts "Would you like to add a new pet? Enter '1' \n Would you like to setup a appointment for a current pet? Enter '2' \n Or would you like to exit? Enter '3'"
       
        user_answer = gets.chomp.downcase
            if user_answer == "1"
                create_new_pet
            elsif user_answer == "2"
                sitters_menu
            else user_answer == "3"
            end_program    
        end
    end

    def sub_menu
        puts "Here are your furballs:"
        puts owner.pets.pluck(:name) 
        menu
    end

    def create_new_pet
        puts "Please enter your pets name"
            pets_name = gets.chomp.downcase
        puts "Please enter what kind of pet"
            pets_kind = gets.chomp.downcase
        puts "Please enter your pets age"
            pets_age = gets.chomp.downcase
    owner.pets.create(name: pets_name, kind: pets_kind, age: pets_age)
        puts "Congratulations you made a new pet"
        sub_menu
    end
    
 def sitters_menu
        puts Sitter.all.pluck(:name_of_company).uniq
        puts "Which sitter would you like to schedule with?"
            sitter_answer = gets.chomp.downcase
            selected_sitter = Sitter.all.find do |sitter|
                sitter.name_of_company == sitter_answer
      end
        puts "which pet would pet would you like to schedule with?"
            pet_answer = gets.chomp.downcase
            selected_pet = Pet.all.find do |pet|
                pet.name == pet_answer
    end

         puts "what date would work for you?"
            date_answer = gets.chomp
            create_new_appointment(date_answer, selected_pet, selected_sitter)
            puts "Congratulations you made a new appointment"
             menu
    end


    
def create_new_appointment(date_answer, pet_answer, sitter_answer)
                                # data types and arguments
        Appointment.create(date: date_answer, pet: pet_answer, sitter: sitter_answer)
                                 # data types and arguments
        puts "Congratulations you made a new appointment"
            end_menu
        end
    
def end_menu
    puts "Enter 1.) for Start Menu or 2.) To Quit"
        end_answer = gets.chomp.downcase
            if end_answer == "1"
                sub_menu
            else end_answer == "2"
                end_program
    end
end

def end_program
     puts "Thaks for using our app, Enjoy."
        exit!
 end

end 