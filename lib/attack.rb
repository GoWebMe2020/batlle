class Attack

    def initialize(player)
        @player = player
    end

    def self.run(player)
        new(player).run
    end

    def run
        @player.receive_damage(random_amount) # This was changed
    end

    def self.heal(player)
        new(player).heal
    end

    def heal
        @player.receive_health(random_amount)
    end

    private

    def random_amount # This method was added
        Kernel.rand(500..1000)
    end

end