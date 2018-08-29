
hashes = {"User1"=>"0612131561", "User2"=>"0612131562","User3"=>"0612131563", "User4"=>"0612131564"}

def listenom(liste)
  liste.each {|key,value| puts key}
end

def tel(liste,nom)
  puts liste[nom]
end

puts "Voulez-vous acceder au repertoire (Y/N)"
rep = gets.chomp.upcase #met la variable en majuscule

while (rep == "Y")  
  listenom(hashes)
  puts "Quel contact ?"
  contact = gets.chomp.capitalize #Met la premiere lettre en capitale

  if(hashes.include?(contact))
    tel(hashes,contact)
  else
    puts "Choisir un contact de la liste"
  end
 
    puts "voulez-vous recommencer (Y/N)"
    rep = gets.chomp.upercase

    if(rep=="N")
      break
    end
 
end
