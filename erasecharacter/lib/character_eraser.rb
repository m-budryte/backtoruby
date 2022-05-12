class CharacterEraser
    def erase(word, letter)
        if word.is_a?(String)
            word.delete(letter)
        else
            "invalid input"
        end
    end
end