

begin
    input_num = gets.to_i
    if input_num < 2
        raise
    end

    if isPrimeNumber(input_num)
        puts "Yes"
    else
        puts "No"
    end

rescue RuntimeError
    puts "2以上の数字を入力してください"
    retry
end