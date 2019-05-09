require 'pry'

class Owner
  # code goes here
  @@all = []

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
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

  # def species(species)
  #   if species == nil
  #     @species = species
  #   end
  # end

  def say_species
    "I am a #{@species}."
  end

  # def name=(name)
  #   @name = name
  # end



  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
    @pets[:fishes]
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
    @pets[:cats]
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
    @pets[:dogs]
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    @pets.each do |key, value|
      value.each { |pet| pet.mood = "nervous" }
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets

    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."

    # @pets.each do |pet_type, pet_list|
    #
    #   pet_list.each { |pet_instance| puts "#{pet_instance.name}" }
    # end
  end

end
