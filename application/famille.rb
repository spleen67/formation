# ce fichier permet de sauvegarder dans un fichier json la saisie de l'utilisateur 
# l'utilisateur saisie depuis le fichier run.rb

require "json"

class Famille

  attr_accessor :nom, :email, :age

  def initialize(*args)
    @nom = args[0]
    @email = args[1]
    @age = args[2]
  end

  def save
    membre = {nom: @nom, email:@email, age:@age}.to_json # creation d'un hashe transformé en json
    #creation d'un fichier en écriture 
    open("livret.json", "a") do |fichier|
      fichier.puts membre # on ecrit la chaine json
    end
    
  end
end