class Player

    DEFAULT_HEALTH = 10000
    attr_reader :name
    attr_reader :health

    def initialize(name, health = DEFAULT_HEALTH)
        @name = name
        @health = health
    end

    # def attack(player)
    #     player.receive_damage
    # end

    def receive_damage
        @health -= rand(500..1000)
    end

end