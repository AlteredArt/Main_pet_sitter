class Cli
    attr_reader :owner

    def welcome
        puts "Welcome, please enter your first name"
            user_first = gets.chomp
        puts "Please enter your last name"
            user_last = gets.chomp
        puts "Welcome, #{full_name(user_first, user_last)}"
            find_owner(user_first, user_last)
    end

    def full_name(user_first, user_last)
        "#{user_first} #{user_last}"
    end

    def find_owner(user_first, user_last)
        @owner = Owner.find_by(first_name: user_first,last_name: user_last)
        if owner
        sub_menu
        else
         create_a_owner(user_first, user_last)
         puts "Please create a pet"
         create_new_pet
        end
    end

    def create_a_owner(user_first, user_last)
        @owner = Owner.create(first_name: user_first,last_name: user_last)
    end

    def menu
       puts "Would you like to add a new pet? Enter ‘New Pet’ \n Or would you like to setup a appointment for a current pet? Enter ‘New Apoointment’"
        user_answer = gets.chomp.downcase
        if user_answer == "new pet"
            create_new_pet
        else user_answer == "new appointment"
            sitters_menu
        end
    end

    
    def sub_menu
        puts "Here are your furballs:"
        puts owner.pets.pluck(:name)  #change eventually
        menu
    end

    def create_new_pet
        #Pets = []
        puts "Please enter your pets name"
        pet_name = gets.chomp.downcase

        puts "Please enter what kind of pet"
        pet_kind = gets.chomp.downcase

        puts "Please enter your pets age"
        pet_age = gets.chomp.downcase

        owner.pets.create(name: pet_name, kind: pet_kind, age: pet_age) #>> Pets
        puts "Congratulations you made a new pet"
        
        sub_menu
    end 

    def sitters_menu
        puts Sitter.all.pluck(:name_of_company).uniq
        puts "Which sitter would you like to schedule with?"
        sitter_answer = gets.chomp.downcase
        puts "Which pet would pet would you like to schedule with?"
        pet_answer = gets.chomp.downcase
        Pet.all.select do |pet|
            pet.name == pet_answer
        end
        puts "What date would work for you?"
        date_answer = gets.chomp
        create_new_appointment(date_answer, pet_answer, sitter_answer)
        puts "Congratulations you made a new appointment"
        menu
    end

    def create_new_appointment(date_answer, pet_answer, sitter_answer)
        Appointment.create(date: date_answer, pet: pet_answer, sitter: sitter_answer)
        puts "Congratulations you made a new appointment!"
        end_program

    end

    def end_program
        puts "Thanks for using our app, enjoy."
    end


end 