def substrings(words,dict)
  parts=words.split(" ")
  a=[]
  for word in parts
    for i in 1..word.length
      word.split("").each_cons(i){|el| a.push(el)}
    end
  end
  c=a.map{|el| el.join("")}

  data=[]

  for sub in dict
    count=0
    for word in c
      if sub.downcase==word.downcase
        count+=1
      end
    end
    data.push([sub,count])
  end
  result=data.to_h.reject{|key,value| value<1}
  result
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)