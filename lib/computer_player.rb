require_relative 'player'

class ComputerPlayer < Player

    def initialize(name = "The Machine")
        super
    end

    def computer?
        true
    end

end