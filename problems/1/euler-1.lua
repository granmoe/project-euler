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

-- TODO: Solution with a custom iter http://lua-users.org/wiki/RangeIterator