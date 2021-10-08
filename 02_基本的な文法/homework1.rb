input_num = gets.to_i
max_asta = num * 2 - 1
asta_count = 1

input_num.times {
    space_count = max_asta - asta_count
    puts ' ' * (space_count / 2) + '*' * asta_count + ' ' * (space_count / 2)
    asta_count += 2
}
