module Players
    class Human < Player
        def move(board)
            puts "Where do you want to play?"
            input=gets.strip
            return input
        end

    end
end