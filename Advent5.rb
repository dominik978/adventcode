# Advent of Code day 5

input = [1,9,10,3,2,3,11,0,99,30,40,50]
values = input.map { |v| v }
pointer = 0


loop do
  opcode = values[pointer]
  if opcode == 1
    first_int = values[values[pointer+1]]
    second_int = values[values[pointer+2]]
    store_int = values[pointer+3]
    result = first_int + second_int
    values[store_int] = result
    pointer += 4
  elsif opcode == 2
    first_int = values[values[pointer+1]]
    second_int = values[values[pointer+2]]
    store_int = values[pointer+3]
    result = first_int * second_int
    values[store_int] = result
    pointer += 4
  elsif opcode == 99
    puts values[0]
    exit
  else
    puts "Unknown operation code: #{opcode}"
  end
end