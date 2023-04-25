require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Paris")
player2 = Player.new("Marseille")

puts "------------------------------"
puts "Présentation des combattants"
puts "À ma droite, #{player1.name}"
puts "À ma gauche, #{player2.name}"
puts "------------------------------"

while player1.life_points > 0 && player2.life_points > 0

    puts "Voici l'état de chaque joueurs :"
    puts "#{player1.show_state} #{player2.show_state}"
    puts "------------------------------"

    puts "           FIGHT !            "
    puts "Passons à la phase d'attaque :"
    puts player2.attacks(player1)
        if player1.life_points <= 0
            break
        end
    puts player1.attacks(player2)
            if player2.life_points <= 0
                break
            end
    puts "------------------------------"
end

binding.pry