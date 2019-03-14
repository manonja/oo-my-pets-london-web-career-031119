require 'pry'

class Owner
  # code goes here
  @@all = []

  attr_reader :species
  attr_accessor :pets, :name

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}

    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy"}

  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy"}
  end

  def sell_pets
    change_mood_all("nervous")
    @pets.each {|pet, arr| arr.clear}
  end

  def change_pets_mood(pet, mood)
    @pets[pet].each { |pet| pet.mood = "nervous"}
  end

  def change_mood_all(mood_string)
    @pets.each {|type, pet_array| change_pets_mood(type, mood_string)}
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end




end

# Owner.new("human")
# human.buy_fish("Bubbles")
# human.buy_fish("Nemo")
# human.buy_cat("Crookshanks")
# human.buy_dog("Fido")
# human.buy_dog("Snuffles")
# human.buy_dog("Charley")




puts "something"
