# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash={}
    arr=[]
    nums.map{|e| nums.map{|f| hash = [e,f] if e+f == target}}
    
    nums.each_with_index{|e,i| arr << i if e == hash[0] || e == hash[1]}
    arr
end