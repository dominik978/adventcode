# Advent of code 2019 - day 4

start_range = 136760
stop_range = 136780


count = 0

(start_range..stop_range).each { |pw|
  growing = []
  equal = []

  dgt = pw.to_s.scan(/./)
  
  5.downto(1).each do |i|
    if dgt[i].to_s.to_i >= dgt[i-1].to_s.to_i
      growing.push(true)
    else
      growing.push(false)
    end
  end
  
  5.downto(1) do |i|
    if dgt[i].to_s.to_i == dgt[i-1].to_s.to_i
      equal.push(true)
    else
      equal.push(false)
    end
  end

  count += 1 if growing.all? && equal.any? 
}

puts count