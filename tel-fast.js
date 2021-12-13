number = '<say-as interpret-as="digits">DDD</say-as> <say-as interpret-as="digits">DDD</say-as> <say-as interpret-as="digits">DDD</say-as>'.replace(/D/g, () => Math.floor(Math.random() * 10))
console.log(`3, 2, 1.\n\n` + number)
