my_hash = {"VERY HIGH" => ["jump","fall"],"HIGH" => ["fly"],"MEDIUM" => ["taken","fly"],"LOW" => [],"VERY LOW" => ["swim"]}


p my_hash
# p my_hash["MEDIUM"].delete("fly")

answer = "fly"

my_hash.keys.each { |x| my_hash[x].delete("#{answer}") }

p my_hash