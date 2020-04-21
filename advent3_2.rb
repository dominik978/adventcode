# Advent of code 2019 - day 3

file_path = File.open("input.txt", "r")
input = File.read(file_path)

input_one, input_two = input.split("\n")

def wire_path(coord)
  visited = {}
  x, y = 0, 0
  sum_steps = 1

  coord.split(",").each { |instr|  

    dir = instr[0]
    jump = instr[1..4].to_i

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
      
      visited[["#{x},#{y}"]] = sum_steps unless visited[["#{x},#{y}"]]
      sum_steps += 1

    }
  }
  
  visited

end

res1 = wire_path(input_one)
res2 = wire_path(input_two)

def smal_dist(pathone,pathtwo)
  com = []
  pathone.each_pair {|k, l|
    pathtwo.each_pair { |v, w|
      if k == v
        addition = l + w
			  com.push(addition)
		  end
    }
  }
  com
end

puts smal_dist(res1,res2).min

