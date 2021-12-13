chars = ['零', '幺', '二', '三', '四', '五', '六', '七', '八', '九']
pattern = 'D D D B D D D B D D D'
numbers = []
text = pattern.replace(/D/g, () => {
    let no = Math.floor(Math.random() * 10)
    numbers.push(no)
    return chars[no]
}).replace(/B/g, '<break time="1s"/>')
number = pattern.replace(/D */g, () => numbers.shift()).replace(/B/g, '')
process.stderr.write(number + "\n")
console.log(`号码。\n\n` + text)
