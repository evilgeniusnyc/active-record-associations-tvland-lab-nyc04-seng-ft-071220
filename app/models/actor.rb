require 'pry'
class Actor < ActiveRecord::Base

    has_many :characters
    has_many :actors, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}" 
    end 

    def list_roles
        # binding.pry
        Character.all.map do |character|
            "#{character.name} - #{character.show.name}"
        end 
    end 



        # expect(emilia.list_roles).to include("Khaleesi - Game of Thrones")

  
end



