https://stackoverflow.com/a/49434653/2838501
function randn_bm(min, max, skew) {
  let u = 0, v = 0;
  while(u === 0) u = Math.random() //Converting [0,1) to (0,1)
  while(v === 0) v = Math.random()
  let num = Math.sqrt( -2.0 * Math.log( u ) ) * Math.cos( 2.0 * Math.PI * v )

  num = num / 10.0 + 0.5 // Translate to 0 -> 1
  if (num > 1 || num < 0)
    num = randn_bm(min, max, skew) // resample between 0 and 1 if out of range

  else{
    num = Math.pow(num, skew) // Skew
    num *= max - min // Stretch to fill range
    num += min // offset to min
  }
  return num
}

function generate() {
  return Math.floor(randn_bm(1880, 2060, 0.6))
}

const years = []
for (let i=0; i<5; ++i) {
  let next
  do {
    next = generate()
  } while (years.includes(next))
  years.push(next)
}

console.log(`3, 2, 1.\n\n` + years.map(y => `<say-as interpret-as="date" format="y">${y}</say-as>`).join(`<break time="2s"/>`))
