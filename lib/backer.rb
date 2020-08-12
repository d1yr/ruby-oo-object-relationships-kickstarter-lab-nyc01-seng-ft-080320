class Backer
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def back_project(project)
    ProjectBacker.new(project, self)
  end
  def backed_projects
    project_array = []
    ProjectBacker.all.collect do |project|
      if project.backer==self
        project_array << project.project
      end
    end
    project_array
  end
end