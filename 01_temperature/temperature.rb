#write your code here

# 1°F is 5/9 of 1°C 
# Freezing point of water is 0°C 
# Freeizing point of water is 32°C

def ftoc(fahrenheit)
    result = (fahrenheit - 32) / 1.8
    result.round(2)
end


def ctof(celsius)
    result = celsius * 1.8 + 32
    result.round(2)
end