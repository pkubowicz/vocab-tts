const years = Array(5).fill(0).map(() => Math.floor(Math.random() * 180 + 1880))

console.log(`3, 2, 1.\n\n` + years.map(y => `<say-as interpret-as="date" format="y">${y}</say-as>`).join(`<break time="2s"/>`))
