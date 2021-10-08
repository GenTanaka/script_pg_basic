def isPrimeNumber(num)
    if num < 2
        return false
    end

    if num == 2
        return true
    end

    for i in 2..(num - 1)
        if num % i == 0
            return false
        end
    end
    return true
end


input_num = gets.to_i
if isPrimeNumber(input_num)
    puts "Yes"
else
    puts "No"
end