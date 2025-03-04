def stock_picker(prices)
  combi=[]
  for i in 0...prices.length
    for j in (i+1)...prices.length
      combi.push([i, j,prices[j] - prices[i]])
    end
  end
data=combi.sort_by{|el| -el[2]}
result=data[0].take(2)
end


puts stock_picker([17,3,6,9,15,8,6,1,10]).inspect
