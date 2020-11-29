class Board

    attr_accessor :cells

    def initialize
        @cells = Array.new(9," ")
    end 

    def reset!
        @cells = Array.new(9," ")
    end

    def display
        puts(" #{@cells[0]} | #{@cells[1]} | #{@cells[2]} ")
        puts("-----------")
        puts(" #{@cells[3]} | #{@cells[4]} | #{@cells[5]} ")
        puts("-----------")
        puts(" #{@cells[6]} | #{@cells[7]} | #{@cells[8]} ")
    end

    def position(user_input)
        @cells[user_input.to_i-1]
    end

    def full?
        @cells.all?{|cell| cell!=" "}
    end

    def turn_count
        @cells.select{|cell| cell!=" "}.count
    end

    def taken?(index)

        if position(index) == " " || position(index) == "" || position(index) == nil
            false
        elsif position(index) == "X" || position(index) == "O"
            true
        end

    end

    def valid_move?(index)
        if !index.to_i.between?(1,9)
            return false
        end
        if taken?(index)
            false
        else
            true
        end

    end

    def update(input,player)
        if valid_move?(input)
            @cells[input.to_i-1]=player.token
        end
    end

    def draw?
        if @board.full?
            won? ? false:true
        else
            false
        end
    end

end