function [output] = valTri(A)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    
   maximum = max(A)
   minimum = min(A)
   medvalue = median(A)
   if (minimum + medvalue) > maximum
       output = true
   else 
       output = false
   end

    
end

