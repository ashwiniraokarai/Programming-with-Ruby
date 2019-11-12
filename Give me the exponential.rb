#Return the exponential when the base and exponent are provided

base = 10;
exponent = 3;

puts(base.to_s + "^" + exponent.to_s) 

exponent = exponent - 1  #loop counting starts from 0 which results in 1 additional loop; therefore subtraction prevents the additional loop
result = base;

exponent.times do ||
    result = result * base;  #exponential = multiply base by exponent times. E.g. 10^3 = 10 * 10 * 10 = multiply 10 thrice
end

puts("Exponential: " + result.to_s);