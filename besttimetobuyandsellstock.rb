# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    max = 0
    min = nil
    i = 0
    while i < (prices.length) 
        #max = (prices[i..prices.length]).max - prices[i] > max ? (prices[i..prices.length]).max - prices[i] : max
        if min == nil || prices[i] < min
            min = prices[i]
        else
            max = prices[i] - min if prices[i] - min > max
        end          
            
        i += 1
        
    end    
    max
end
