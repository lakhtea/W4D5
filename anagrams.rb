# def anagram?(str_1, str_2) # O(n!) or more time
#     arr_1 = str_1.split("") # O(n!) or more space
#     arr_2 = str_2.split("")
#     anas = arr_1.permutation(str_1.length).to_a
#     anas.include?(arr_2) 
# end

# def anagram?(str_1, str_2) #O(n^2) time
#     arr_2 = str_2.split("") #O(n) space
#     str_1.each_char do |char|
#         idx = arr_2.find_index(char)
#         arr_2.delete_at(idx) unless idx.nil?
#     end
#     arr_2.empty?
# end

# def anagram?(str_1, str_2) #O(n logn) time
#     arr_1, arr_2 = str_1.split(""), str_2.split("") #O(n) space
#     arr_1.sort == arr_2.sort 
# end

# def anagram?(str_1, str_2) 
#     hash_1 = Hash.new(0) #O(1) space
#     hash_2 = Hash.new(0) 

#     str_1.each_char { |char| hash_1[char] += 1 } #O(n) time
#     str_2.each_char { |char| hash_2[char] += 1 }

#     hash_1 == hash_2
# end

def anagram?(str_1, str_2) 
    hash = Hash.new(0)

    arr_1, arr_2 = str_1.split(""), str_2.split("") #O(n)

    arr_2.each_index do |idx| #O(n)
        arr_2[idx] += "2"
    end

    arr_1.each { |ele| hash[ele] += 1 }
    arr_2.each { |ele| hash[ele] += 1 }

    arr_1.each do |ele|
        if hash[ele] != hash[ele + "2"]
            return false
        end
    end
    
    true
end

p anagram?("gizmo", "sally") #=> false
p anagram?("elvis", "lives") #=> true
p anagram?("listenlisten", "silentsilent")