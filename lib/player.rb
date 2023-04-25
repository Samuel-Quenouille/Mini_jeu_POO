class Player
    attr_accessor :name, :life_points

    def initialize(name)
        @name = name
        @life_points = 10
    end

    def show_state
        puts "#{@name} a #{@life_points} points de vie"
    end

    def gets_damage(damage_received)
        @life_points = @life_points - damage_received
    end

    def attacks(player_two)
        damage = compute_damage
        player_two.gets_damage(damage)
        puts "#{self.name} a reçu #{damage} point(s) de dommage(s)"
        if player_two.life_points <= 0
            puts "#{@name} a été tué !"
            puts "FIN DU JEU : PARIS EST MAGIQUE !"
        end
    end

    def compute_damage
        return rand(1..6)
    end
end


