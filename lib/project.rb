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
    backer_array = []
    ProjectBacker.all.collect do |project|
      if backer.project == self
        backer_array << backer.backer
      end
    end
    backer_array
  end
  
end