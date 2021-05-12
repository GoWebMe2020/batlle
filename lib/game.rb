class Game

    attr_reader :current_turn

    def initialize(player1, player2)
        @players = [player1, player2]
        @current_turn = player1
    end

    def player1
        @players.first
    end

    def player2
        @players.last
    end

    def attack(player)
        player.receive_damage
    end

    def switch_turn
        @current_turn = opponent_of(current_turn)
    end

    def opponent_of(current_player)
        @players.select { |player| player != current_player }.first
    end

    private

    attr_reader :players

end