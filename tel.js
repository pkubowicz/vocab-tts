number = 'D D D B D D D B D D D'.replace(/D/g, () => Math.floor(Math.random() * 10)).replace(/B/g, '<break time="1s"/>')
console.log(`3, 2, 1.\n\n` + number)
