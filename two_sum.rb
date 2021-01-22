# def bad_two_sum?(arr, target) # => 0(n^2)
#     (0...arr.length).each do |i|
#         ((i + 1)...arr.length).each do |j|
#             return true if arr[i] + arr[j] == target
#         end
#     end
#     false
# end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

# def okay_two_sum?(arr, target) # => n(log(n)) space 0(n)
#     sorted = arr.sort # => n(log(n))
#     sorted.each_with_index do |ele, idx| # => 0(n)
#         goal = target - ele
#         return true if sorted.bsearch { |el| el == goal && sorted.index(el) != idx } #=> (log(n))
#     end
#     false
# end

# arr = [0, 1, 5, 7] 
#  p okay_two_sum?(arr, 6) # => should be true
#  p okay_two_sum?(arr, 10) # => should be false

def two_sum?(arr, target) # => 0(n) space 0(n)
    hash = Hash.new(0)
    arr.each_with_index {|ele, idx| hash[target - ele] = idx}
    arr.each_with_index do |ele, idx|
        if hash.has_key?(ele) && hash[ele] != idx
            return true
        end
    end 
    false
end
arr = [0, 1, 5, 7] 
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false