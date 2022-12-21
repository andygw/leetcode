# https://leetcode.com/problems/convert-the-temperature/

# @param {Float} celsius
# @return {Float[]}
def convert_temperature(celsius)
  fahrenheit = celsius * 1.8 + 32
  kelvin = celsius + 273.15
  [kelvin, fahrenheit]
end
