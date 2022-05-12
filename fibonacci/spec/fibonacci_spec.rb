require 'fibonacci'

describe FibonacciMagic do
    context "Given the positive integer N, the array of fibonnaci sequence of length N is returned" do
        it "returns [1] when passed 1" do
            expect(FibonacciMagic.do_magic(1)).to eq([1])
        end

        it "returns [1,1,2] when passed 3" do
            expect(FibonacciMagic.do_magic(3)).to eq([1,1,2])
        end

        it "returns [1,1] when passed 2" do
            expect(FibonacciMagic.do_magic(2)).to eq([1,1])
        end

        it "returns [1,1,2,2,3,5] when passed 5" do
            expect(FibonacciMagic.do_magic(5)).to eq([1,1,2,3,5])
        end
        
    end
    context "Invalid inputs" do
        it "returns [] when passed 0" do
            expect(FibonacciMagic.do_magic(0)).to eq([])
        end

        it "returns [] when passed a string" do
            expect(FibonacciMagic.do_magic("hello")).to eq([])
        end

        it "returns [] when passed a negative" do
            expect(FibonacciMagic.do_magic(-10)).to eq([])
        end
    end
end