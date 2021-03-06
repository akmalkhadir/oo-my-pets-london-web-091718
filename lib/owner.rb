require 'pry'

class Owner

  attr_accessor :owner, :name, :pets
  attr_reader :species

  @@all_owners = []

  def initialize (species)
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @species = species
    @@all_owners << self
  end

  def self.all
    @@all_owners
  end

  def self.count
    Owner.all.count
  end

  def self.reset_all
    @@all_owners.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish (name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat (name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog (name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pets, pet|
        pet.each do |pet_name|
          pet_name.mood = "nervous"
        end
      end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
