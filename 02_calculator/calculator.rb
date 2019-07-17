#write your code here
def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(array)
    result = 0

    array.each do |item|
        result += item
    end

    result
end

def multiply(*args)
    sum = 1

    args.each do |number|
        sum *= number
    end

    sum
end

def power(num1, num2)
    num1**num2
end

def factorial(num)
    result = 1
    
    num.times do |i|
        result *= (i + 1)
    end

    result
end