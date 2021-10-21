num_list = []

while true
    print '数値？ '
    input_num = gets.to_i

    if input_num == 0
        break
    end

    num_list.push(input_num)
end

num_list.length.times{
    puts num_list.pop()
}