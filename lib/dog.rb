class Dog
  # code goes here
  attr_reader :Name
  attr_accessor :mood

  def inititalize(name)
    @Name = name
    @mood = "nervous"
  end

end
