class Owner
  attr_accessor :name, :pets
  @@all = []
  @@species = "human" #so we are not constantly redefining it per instance object

  def initialize(name)
    @@all << self
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def species
    @@species
  end

  def say_species
    "I am a #{@@species}."
  end

  def pets
    @pets
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood=("happy")}

  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood=("happy")}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood=("happy")}
  end

  def sell_pets
    @pets.each do |species, species_array|
      species_array.each do |pet|
        pet.mood=("nervous")
      end
    end
    @pets = {cats: [], dogs: [], fishes: []}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    all.length
  end

  def self.reset_all
    all.clear
  end
end
