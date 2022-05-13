require "kth_top_number"
describe KthTopNumberPicker do
    # [4, 1, 3, 12, 7, 14], 3 should return 7
    # [4, 1], 1 should return 4
    # [0, 1, 1, 3, 5], 2 should return 3
    context "should return kth top value from the array" do
        it "return 1st top value from the list" do
            number_picker = KthTopNumberPicker.new([4, 1, 3, 12, 7, 14])
            expect(number_picker.top_number(1)).to eq(14)
        end

        it "return 3st top value from the list" do
            number_picker = KthTopNumberPicker.new([4, 1, 3, 12, 7, 14])
            expect(number_picker.top_number(3)).to eq(7)
        end
    end

    context "edge cases" do
        it "throw error for empty array" do
            expect{ KthTopNumberPicker.new([]) }.to raise_error("Wrong input!")
        end

        it "correctly treat negatives" do
            number_picker = KthTopNumberPicker.new([-1, -7, 0, 10, 5, -88])
            expect(number_picker.top_number(1)).to eq(10)
        end

        it "throw error for k > array length" do
            number_picker = KthTopNumberPicker.new([-1, -7, 0, 10, 5, -88])
            expect{number_picker.top_number(10000)}.to raise_error("K is larger than array's length!")
        end

        it "correctly treats repeating numbers in sequence" do
            number_picker = KthTopNumberPicker.new([0, 1, 1, 3, 5])
            expect(number_picker.top_number(2)).to eq(3)
        end
    end
end