class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network


    def actors_list
        #returns an Array of the full names of each actor associated with the a show. Remember, a show should have many actors through characters
        self.actors.map do |a| 
            "#{a.first_name} #{a.last_name}" 
        end
    end
  
end