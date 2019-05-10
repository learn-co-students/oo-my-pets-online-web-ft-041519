class Cat
  
  attr_accessor :mood #cat can change its mood
  attr_reader :name   #cat cant change its name
  
  def initialize(name) #initializes with a name
    @name = name
    @mood = "nervous"  #initializes with a nervouse mood
  end
end