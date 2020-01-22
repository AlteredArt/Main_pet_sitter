

def welcome
    puts "Welcome to 'Pet Sitter” have you used our app before?"
    puts "Enter: Yes or No"
end

def prompt_owner
    user_input = gets.chomp
end

def answer?
    prompt_owner
    owner_input = prompt_owner
    if owner_input == "yes"
      puts "would you like to create a appointment?"
    elsif owner_input = "no"
      puts "would you like to create a new owner"
    else
      puts invalid_command
    end
  end
end



def create_a_owner
    Owner.create(first_name: "first_name", last_name: "last_name")
end

def create_a_pet
    Pet.create(name: "name", kind: "kind", age: age)
end


def full_name
    "#{self.first_name} #{self.last_name}"
  end  


def the_end
    puts "thanks for using our app"
end


