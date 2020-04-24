require 'pry'

class Backer

    attr_reader :name 

    def initialize(name)
        @name = name
    end 
    
    def back_project(project)
        
        ProjectBacker.new(project, self)
        
         
    end 

    def backed_projects
       pbs = ProjectBacker.all.select do |pj|
        pj.backer == self 
       end 
       pbs.map do |pb|
        pb.project 
       end 
        
       end 
        

    

end 
# mert = Backer.new("Merty")
# mert.back_project(new_project)







