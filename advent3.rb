# Advent of code 2019 - day 3

file_path = File.open("input.txt", "r")
input = File.read(file_path)

input_one, input_two = input.split("\n")

def wire_path(coord)
  visited = []
  x, y = 0, 0
  sum_steps = 0

  coord.split(",").each { |instr|  

    dir = instr[0]
    jump = instr[1..4].to_i
    sum_steps += jump

    jump.times { 
      case dir
      when "U"
        y += 1
      when "D"
        y += -1
      when "R"
        x += 1
      when "L"
        x += -1
      end
      
      visited.push("#{x},#{y}")
      sum_steps += 1
      
    }

    
  }
  
  visited

end

res1 = wire_path(input_one)
res2 = wire_path(input_two)

inter = res1 & res2

def manathan(union)
  man_dist = [] 
  man = union.each {|v|
    a,b = v.split(",")
    dist = a.to_i.abs + b.to_i.abs
    man_dist.push(dist)
  }
  man_dist
end

puts manathan(inter).min
