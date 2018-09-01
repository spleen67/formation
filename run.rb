require_relative "./application/famille.rb"

puts "Voulez-vous ajouter un nx membre (Y/N)"
rep = gets.chomp.upcase #met la variable en majuscule

while (rep == "Y")  
  
  puts "Son Nom ?"
  nom = gets.chomp.capitalize #Met la premiere lettre en capitale

  puts "Son EMail ?"
  email = gets.chomp

  puts "Son Age ?"
  age = gets.chomp.to_i # Demande un entier

  reponse = Famille.new(nom, email, age)
  reponse.save

  puts "voulez-vous recommencer (Y/N)"
  rep = gets.chomp.upcase

  if(rep=="N")
      break
  end
end
