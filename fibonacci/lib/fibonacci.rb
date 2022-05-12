class FibonacciMagic 
    def self.sum_last_two(array)
        return array.last(2).inject(0, :+)
    end

    def self.create_fibonacci_array(length)
        i = length
        array = [1]
        while i > 0 do

            sum_of_last_two = sum_last_two(array)

            array.push(sum_of_last_two)

            i = i - 1
        end
        return array
    end

    def self.do_magic(input)
        array = [] 

        if !input.is_a?(Integer) || input <= 0
            return array
        end

        length_of_sequence = input - 1
        
        array.push(1)

        array = create_fibonacci_array(length_of_sequence)

        return array
    end
end
