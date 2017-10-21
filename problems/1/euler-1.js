/*
  Multiples of 3 and 5
  Problem 1 
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
*/

export default () => // 233168
  Array.from({ length: 1000 }, (_, k) => k)
    .filter(val => val % 3 === 0 || val % 5 === 0)
    .reduce((a, b) => a + b, 0)

const imperative = () => {
  let x = 1000
  let sum = 0

  while (x--) {
    if (x % 3 === 0 || x % 5 === 0) { sum += x }
  }

  return sum // 233168
}

const customIter = () => {
  const multiples = function* () {
    let val = 1
    while (true) {
      if (val % 3 === 0 || val % 5 === 0) { yield val }
      val++
    }
  }
  
  let sum = 0
  for (let multiple of multiples()) {
    if (multiple >= 1000) { break }
    sum += multiple
  }

  return sum // 233168
}
