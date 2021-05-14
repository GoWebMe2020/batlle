class Player

    DEFAULT_HEALTH = 10000
    attr_reader :name
    attr_reader :health

    def initialize(name, health = DEFAULT_HEALTH)
        @name = name
        @health = health
    end

    def receive_damage(amount)
        @health -= amount
    end

    def receive_health(amount)
        @health += amount
    end

    def computer?
        false
    end

end