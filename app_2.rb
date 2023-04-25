require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

# player1 = HumanPlayer.new("Lyon")

puts "------------------------------------------------
|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
|Le but du jeu est d'être le dernier survivant !|
-------------------------------------------------"
puts "Entre ton prénom"
name = gets.chomp

