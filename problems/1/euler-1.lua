--[[
Multiples of 3 and 5
Problem 1 
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
]]

num = 1
sum = 0
repeat
  if num % 3 == 0 or num % 5 == 0 then sum = sum + num end
  num = num + 1
until num == 1000

print(sum) -- 233168

num = 1
sum = 0
while num < 1000 do
  if num % 3 == 0 or num % 5 == 0 then sum = sum + num end
  num = num + 1
end

print(sum) -- 233168

num = 1
sum = 0
for i = 1, 999 do
  if num % 3 == 0 or num % 5 == 0 then sum = sum + num end
  num = num + 1
end

print(sum) -- 233168

-- using a table
sum = 0
numbers = {}
for i=1, 999 do numbers[i] = i end
for key, val in pairs(numbers) do
  if num % 3 == 0 or num % 5 == 0 then sum = sum + num end
end

print(sum) -- 233168

-- Using a custom iterator
function multiples (max, predicate)
  local i = 0
  return function ()
    while i < max do
      i = i + 1
      if predicate(i) then
        return i
      end
    end
  end
end

function isValid (num)
  return num % 3 == 0 or num % 5 == 0
end

sum = 0
for multiple in multiples(999, isValid) do
  sum = sum + multiple
end

print(sum) -- 233168
