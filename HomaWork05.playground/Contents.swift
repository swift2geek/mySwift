// 1task: from 01.01.2015 until 15.03.2015
let (min, sec, day) = (60, 60, 24)
let (january, february, march) = (31, 28, 15)
let daySumm = january + february + march
let daysTillMyBirthday = 31 + 28 + 15
let dayToHours = day * daySumm
let hoursToMinutes = min * dayToHours
let minutesToSeconds = sec * hoursToMinutes

// 2 task: my birthday quarter
let firstQuarter = 31 + 28 + 31
let secondQuarter = 30 + 31 + 30
let thirdQuarter = 31 + 31 + 30
let fourthQuarter = 31 + 30 + 31

if daysTillMyBirthday <= firstQuarter {
    print("my birthday in first quarter")
}

else if daysTillMyBirthday <= secondQuarter + firstQuarter {
    print("my birthday in second quarter")
}

else if daysTillMyBirthday <= thirdQuarter + firstQuarter + secondQuarter {
    print("my birthday in third quarter")
} else {
    print("I was born in 4th quarter")
}

//3: five variables
var a = 5
var b = 11
var c = 4
var d = 7
var e = 9
var oper1 = a++ * ++b / c++ + d - e--
// 5 *  12 / 4 + 7 - 9
// 6 * 12 / 5 + 7 - 8


//4: Шахматная доска 8х8. Каждое значение в диапазоне 1…8. При заданных двух значениях по вертикали и горизонтали определите цвет поля. Если хотите усложнить задачу, то вместо цифр на горизонтальной оси используйте буквы a,b,c,d,e,f,g,h

1 % 2
let cell = (row:3, col:5)

if cell.row % 2 == cell.col % 2 {
    print("black")
} else {
print("white")
}
