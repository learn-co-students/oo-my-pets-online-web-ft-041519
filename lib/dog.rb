class Dog
  
  attr_accessor :mood #dog can change its mood
  attr_reader :name   #dog cant change its name
  
  def initialize(name) #initializes with a name
    @name = name
    @mood = "nervous"  #initializes with a nervouse mood
  end
end
