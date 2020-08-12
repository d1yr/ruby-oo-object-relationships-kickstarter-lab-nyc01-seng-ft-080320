class Project
  attr_accessor :title
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end
  def self.all
    @@all
  end
  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end
  def backers
        array = []
        ProjectBacker.all.collect do |backer|
          if backer.project == self  
            array << backer.backer
          end 
        end 
        array 
    end
  
end