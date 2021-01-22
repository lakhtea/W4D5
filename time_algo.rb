# def my_min(list) # => O(n^2)
#     list.each do |ele|
#         if list.all? { |ele_2| ele <= ele_2 }
#             return ele
#         end
#     end
# end

def my_min(list) # => O(n)
   list.inject do |acc, ele|
        if ele <= acc
            ele
        else
            acc
        end
    end
end


# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5  

# def largest_contiguous_subsum(list) # => 0(n^3)
#     sub_arrs = []
#     (0...list.length).each do |i|
#         (0...list.length).each do |j|
#             sub_arrs << list[i..j]
#         end
#     end
#     sub_arrs.max_by(&:sum).sum
# end

def largest_contiguous_subsum(list) # => 0(n)
    max_sum = list.max
    current_sum = list.first
    (1...list.length).each do |i|
        current_sum += list[i]
        max_sum = current_sum if current_sum > max_sum
        current_sum = 0 if current_sum < 0
    end
    max_sum
end



list = [-5, -1, -3]
p largest_contiguous_subsum(list)

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p largest_contiguous_subsum(list)

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)

list = [5, 3, -7]
p largest_contiguous_subsum(list)
