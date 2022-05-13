class KthTopNumberPicker
    def initialize(array)
        if array.empty? 
            raise Exception.new("Wrong input!")
        end
        @array_to_check = array
    end

    def top_number(number)
        if number > @array_to_check.length  
            raise Exception.new("K is larger than array's length!")
        end
        sorted_array = array_sorter()
        sorted_array[number-1]
    end

    def array_sorter()
        @array_to_check.sort().reverse()
    end
end