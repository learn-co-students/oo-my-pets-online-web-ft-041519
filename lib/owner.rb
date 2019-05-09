class Owner
  # code goes here
  @@all = []


  attr_accessor :name, :pets, :fishes, :cats, :dogs
  attr_reader :Species

  def inititalize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def species(species)
    if species == nil
      @Species = species
    end
  end

  def say_species
    @Species
  end

  def name(name)
    @name = name
  end

  def pets
    @pets = {}
  end

  def buy_fish
    @fishes << Fish.new
    @fishes
  end

  def buy_cat
    @cats << Cat.new
    @cats
  end

  def buy_dog
    @dogs << Dog.new
    @dogs
  end


end
