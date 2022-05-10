require "example_class"

describe ExampleClass do 
  describe ".magic" do
    context "Hogwarts Battle" do 
      it "does correct magic" do 
        expect(ExampleClass.magic("Avada Kedavra!")).to eq("Expelliarmus!")
      end

      it "does not do prohibited magic" do 
        expect(ExampleClass.magic("Avada Kedavra!")).not_to eq("Crucio!")
      end
    end
  end
end
