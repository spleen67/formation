#cle avec chaine
hashes = {"nom"=>"nom1", "prenom"=>"prenom1", "age"=>24}
puts hashes["nom"]

#cle avec symbole
hashes1 = {nom: "nom1", prenom:"prenom1", age:25}
puts hashes1[:age]

#ajout dans la liste
hashes[:hobby] = "developper"
hashes["metier"] = "informatique"
#puts hashes
puts hashes[:hobby]

# supprimer de la liste
hashes.delete("metier")
hashes.delete(:hobby)
puts hashes

hashes.each {|key,value| puts "cle #{key} et la valeur #{value}"}