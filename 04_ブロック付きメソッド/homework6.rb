text_file_path = 'CROSSWD.txt';

def returnFirstMaxLenWord(file_path)
    max_len_word = ""

    IO.foreach(file_path) { |word|
        word.gsub(/\r\n/, "");

        if word.length > max_len_word.length
            max_len_word = word
        end
    }

    return max_len_word
end

def returnAllMaxLenWords(file_path)
    max_len_words = [];

    IO.foreach(file_path) { |word|

        if max_len_words.empty?
            max_len_words.push(word)
        elsif word.length > max_len_words[0].length
            max_len_words.clear
            max_len_words.push(word)
        elsif word.length == max_len_words[0].length
            max_len_words.push(word)
        end
    }

    return max_len_words
end

puts "First One:"
puts returnFirstMaxLenWord(text_file_path)
puts
puts "All:"
puts returnAllMaxLenWords(text_file_path)
