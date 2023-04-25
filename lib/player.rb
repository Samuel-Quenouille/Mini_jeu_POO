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

class HumanPlayer < Player
    attr_accessor :weapon_level

    def initialize(name)
        @life_points = 100
        @weapon_level = 1
        super(name)
    end

    def show_state
        puts "#{@human_name} a #{@human_life_points} points de vie avec une arme de niveau #{@weapon_level}"
    end

    def compute_damage
        rand(1..6) * @weapon_level
    end

    def search_weapon
        rand(1..6) = new_weapon
        puts "Tu as trouvé une arme de niveau #{new_weapon}"
        if new_weapon > @weapon_level
            @weapon_level = new_weapon
            puts "Youhou ! Elle est meilleure que ton arme actuelle : tu la prends"
        elsif new_weapon <= @weapon_level
                puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
            end
        end
    end

    def search_health_pack
        rand(1..6) = health_pack
        if health_pack == 1
            puts "Tu n'as rien trouvé..."
        elsif health_pack >= 2 && <= 5
            @life_points += 50
            @life_points = [@life_points, 100].min
                puts "Bravo, tu as trouvé un pack de +50 points de vie"
        elsif health_pack == 6
            @life_points += 80
            @life_points = [@life_points, 100].min
                puts "Waow, tu as trouvé un pack de +80 points de vie !"
            end    
        end
    end
end

