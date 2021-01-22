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


list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5  


