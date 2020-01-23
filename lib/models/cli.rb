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
end

def full_name(user_first, user_last)
    "#{user_first} #{user_last}"
end  


def find_owner(user_first, user_last)
        @owner = Owner.find_by(first_name: user_first,last_name: user_last)
     if owner
        puts "Here are your furballs:"
        puts owner.pets.pluck(:name)  #change eventually
        menu
    else
         create_a_owner(user_first, user_last)
    end
end

def create_a_owner(user_first, user_last)
    @owner = Owner.create(first_name: user_first,last_name: user_last)
 end

def menu
       puts "Would you like to 1.) Add a new pet, or 2.) Add a appointment for a current pet?"
        puts"Enter 'New Pet' or 'New Appointment'"
        user_answer = gets.chomp.downcase
            if user_answer == "new pet"
                create_new_pet
            else user_answer == "new appointment"
                create_new_appointmet
        end

    end

#   def create_new_pet

#       Pet.create(name: "name", kind: "kind", age: age)
#   end

# def create_new_owner(first_name, last_name)
#     Owner.create(first_name: "first_name", last_name: "last_name")
# end


# def next_step
#     puts "Welcome, #{owner}, would you like set up a appointment for {pet}?"
#     puts "Enter, Yes or No"
#     user_answer == gets.chomp.downcase
#         if user_answer == "Yes"
#             create_new_appointmet
#         elsif user_answer == "No"
#             end_program
#     end
#     end
#     end

# def end_program
#     puts "Thaks for using our app, GoodBye."

# def prompt_owner
#     user_input = gets.chomp
# end

# def create_a_owner
#     Owner.create(first_name: "first_name", last_name: "last_name")
# end

# def create_a_pet
#     Pet.create(name: "name", kind: "kind", age: age)
# end

