function f = findPrime(n)
   count = 1;
   
   for i = 2:n
       flag = true;
       v = 2;
       while v < i
           if mod(i,v) == 0
               flag = false;
               break;
           end
           v = v + 1;
       end
       
       if flag == true
           f(count)=i;
           count = count + 1;
       end
   end
end