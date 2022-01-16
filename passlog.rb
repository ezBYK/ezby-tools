option_pb = "      <|--|> Hello  <|--|>

0000_____________0000________0000000000000000__000000000000000000+
00000000_________00000000______000000000000000__0000000000000000000+
000____000_______000____000_____000_______0000__00______0+
000______000_____000______000_____________0000___00______0+
0000______0000___0000______0000___________0000_____0_____0+
0000______0000___0000______0000__________0000___________0+
0000______0000___0000______0000_________000___0000000000+
0000______0000___0000______0000________0000+
000______000_____000______000________0000+
000____000_______000____000_______00000+
00000000_________00000000_______0000000+
  0000_____________0000________000000007
       ----------------------------------------


--> [1] : Signup (crée un compte)
--> [2] : Login (connecte-toi !) 
--> [3] : Spam numbers (nombre)       [make an account to use]  
--> [4] : find the number             [make an account to use]
--> [5] :Is Even ? (pair ou impair    [make an account to use]
--> [6] : Whoami ?
--< [+] soon...
 "

option_usr = "

<|--|> sup <|--|>

0000_____________0000________0000000000000000__000000000000000000+
00000000_________00000000______000000000000000__0000000000000000000+
000____000_______000____000_____000_______0000__00______0+
000______000_____000______000_____________0000___00______0+
0000______0000___0000______0000___________0000_____0_____0+
0000______0000___0000______0000__________0000___________0+
0000______0000___0000______0000_________000___0000000000+
0000______0000___0000______0000________0000+
000______000_____000______000________0000+
000____000_______000____000_______00000+
00000000_________00000000_______0000000+
  0000_____________0000________000000007

 --> [2] : Logout
 --> [3] : Spam numbers (nombre)
 --> [4] : find the number : 
 --> [5] : Is Even ? (pair ou impair)
 --> [6] : whoami (about)
 --< [7] soon...
 --> [8] : Show Users
 --> [q] : Exit"
tbusr = { "admin" => "admin", "ezby" => "ezby" }
basic_user = nil

while true
  if basic_user
    puts "Your logged as #{basic_user}"
    puts option_usr
  else
    puts option_pb
  end

  print("[-] Choose a number! : ")

  ezby = gets.chomp

  case ezby

  #new account
  when "1"
    system("clear")
    if basic_user
      #  print("[1] Are you sure ? [Y/N]: ")
      #   yes_no = gets.chomp
      #if yes_no == 'y'
      tbusr[basic_user]
      basic_user = nil
    else
      print("[1] Enter username: ")

      username = gets.chomp

      print("[1] Enter password: ")

      password = gets.chomp

      tbusr[username] = password

      print ("[1] You can now login as #{username}: ")
    end

    #login

  when "2"
    system("clear")
    if basic_user
      basic_user = nil
    else
      print("[2] Enter username: ")

      username = gets.chomp

      print("[2] Enter password: ")

      password = gets.chomp

      if tbusr[username] == password
        basic_user = username

        print ("[2] You are now logged as #{username}: ")
      else
        print ("[2] Password or username incorrect")
      end
    end
  when "3"
    next if basic_user.nil?
    for num in 1...10000000000000
      puts num
    end

    #devine le chiffre

  when "4"
    system("clear")
    next if basic_user.nil?

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

    #pair ?

  when "5"
    next if basic_user.nil?
    system("clear")
    print("[5] entrez un nombre: ")

    chiffre = gets.chomp.to_i

    if chiffre.even?
      puts "c'est pair :)"
    else
      puts "c'est impair :/ "
    end
  when "6"
    system("clear")
    puts "

    --------------------------------------------------------------------------------------------------------------------------------  --------------------------------------------------------------------------------------------------------------------------------  -------------------------------------------------------------------------------------------------------------------------------"
puts "nothing"
    puts "-"
  when "q"
    puts("ByeBye! pls re do an account to login")

    exit
  else
    puts("Command unknow. Please try again")
    system("clear")
  end

  puts ""
end

#are you a h4xor ?
