puts "      <|--|> ezby'tools coded in ruby d: <|--|>
k       ----------------------------------------


--> [1] : Signup (soon)
--> [2] : Login  (soon)
--> [3] : Spam numbers (nombre)
--> [4] : find the number (trouve le nombre)
--> [5] : Is Even ? (pair ou impair)
--> [6] : is paylndrome ?
--> [7] : whoami (about)
 "
print("[-] Choose a number! : ")

ezby = gets.chomp

case ezby

#new account
when "1"
  print("[1] soon: ")

  ezby = gets.chomp

  print ("[1] Type a command to leave: ")

  cc = gets.chomp

  #login

when "2"
  print("[2] soon ")

  ezby = gets.chomp

  print ("[2] Type a command to leave: ")

  cc = gets.chomp
when "3"
  for num in 1...10000000000000
    puts num
  end

  #devine le chiffre

when "4"
  adevenir = 32

  a = 0

  while adevenir != a
    print("[4] met un chiffre: ")

    a = gets.chomp.to_i

    if a > adevenir
      puts "trop grand :/"
    elsif a < adevenir
      puts "trop petit :("
    end
  end

  puts "GG you won ! :)"

  print("[4] Type a command to leave: ")

  cc = gets.chomp

  #pair ?
when "5"
  print("[5] Enter a number: ")

  chiffre = gets.chomp.to_i

  if chiffre.even?
    puts "(even)c'est pair :)"
  else
    puts "(odd)c'est impair :("

    print("Enter a number: ")

    chiffre = gets.chomp.to_i

    if chiffre.even?
      puts "(even)c'est pair :)"
    else
      puts "(odd)c'est impair :("
    end
  end

  print("[5] Tape a Command To Leave: ")

  imthebest = gets.chomp

  #Palyndrome
when "6"
  puts "[6] Mets Un Chiffre : "

  mot = gets.chomp

  mot_inverse = mot.reverse

  if mot.reverse == mot
    print("[6] ce mot est un palyndrome")
  else
    puts "Ce Mot n'est pas un palyndrome"
  end

  print ("[6] Type a command to leave: ")

  okmek = gets.chomp
when "7"
  puts "Im ezby, I love internet technologies, ctf,osint but not coding... d:  

[Root-Me]  : https://www.root-me.org/ezbylovesh /:
[Discord]  : ezb3sh#0443    :)
[Telegram] : T.me/rpdiscord :)
 "
  puts "Do you have some idea ? for this project (always in ruby) please contact me if you have"

  puts "-"

  print "hey (if the code is bad for you or there are 
    some error please report me.(this code is coded just for my train d:) "

  puts "-"

  print("[7] Type a command to leave: ")

  cc = gets.chomp
when "10"
  username = ["ezby", "ok", "dfdf"]
  pass = ["ezby", "adtuce", "truc"]

  print("[1] Username:")
  username = gets.chomp

  print("[1] Password:")
  password = gets.chomp

  user = find_user(username, password)
  unless user.nil?
    current_user = user
  else
    print("User cannot be found")
  end
end

#are you a h4xor ?
