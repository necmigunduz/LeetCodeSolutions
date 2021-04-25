# @param {String} s
# @return {Boolean}
def is_valid(s)
    stock = { '}' => '{', ')' => '(', ']' => '['  }  
    arr = []
    s.each_char do |char|
        if arr.last == stock[char] && arr.last
            arr.pop
        else
            arr << char
        end
    end
    arr.empty? 
end
