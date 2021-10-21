word_dict = {}

while true
    print '英語：'
    eng_word = gets.chomp
    if word_dict[eng_word]
        puts "日本語：#{word_dict[eng_word]}"
    else
        print "#{eng_word}の日本語訳を教えてください："
        word_dict[eng_word] = gets.chomp
    end
end