require "character_eraser"
describe CharacterEraser do
    # input ("father", "a") return "fther"
    # input ("hello world", " ") return "helloworld"
    # input ("hello world", "") return "hello world"
    # input (5, 5) return "invalid input"

    it "removes a letter from the word" do
        character_eraser = CharacterEraser.new
        expect(character_eraser.erase("father", "a")).to eq("fther")
    end

    it "removes a space" do
        character_eraser = CharacterEraser.new
        expect(character_eraser.erase("hello world", " ")).to eq("helloworld")
    end


    it "leaves as it is with empty string" do
        character_eraser = CharacterEraser.new
        expect(character_eraser.erase("hello world", "")).to eq("hello world")
    end

    it "returns handling unknown input" do
        character_eraser = CharacterEraser.new
        expect(character_eraser.erase(5, 5)).to eq("invalid input")
    end
end