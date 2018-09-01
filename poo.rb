# Module, meme foctionnement que les class
# On ajoute un include dans la classe

module Outillable 
  def outillage(object)
    puts "#{object} n'est pas une outils"
  end
end
class Utilisateur
  attr_accessor :nom, :email, :age
  include Outillable

  def initialize(nom, email, age)
    @nom = nom
    @email = email
    @age = age
  end

  def crier
    puts 'Je suis lutilisateur'
  end

  def self.me
    puts "ceci est une l'imite"
  end
end

class Fils < Utilisateur #permet de signifier un heritage de class
  def crier
    puts "Je suis le fils"
  end
end

class Fille < Utilisateur
  def crier
    puts "Je suis la fille"
  end
end

class Frere <Utilisateur
  
end

user = Utilisateur.new("eric","toto@gmail.com",25)
puts user.nom, user.email, user.crier

user1 = Fils.new("Mathis", "mathis@gmail.com", 4)
puts user1.nom, user1.email, user1.crier
puts user1.outillage(user1.nom)

user2 = Fille.new("Lea", "lea@gmail.com", 18)
puts user2.nom, user2.email, user2.crier

puts Frere.me
