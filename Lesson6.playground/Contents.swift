////: Playground - noun: a place where people can play
//
import UIKit


var str = "Hello, playground"

/*
 1. Реализовать свой тип коллекции очередь (queue) c использованием дженериков.
 
 2. Добавить ему несколько методов высшего порядка полезных для этой коллекции (пример: filter для массивов)
 
 
 Класс/структура человек {
 Имеет неизменяемое свойство- тип человека(дефективный/* бабушки, инфалиды, и т.п.*/, нормальный) сделанные через enum
 }
 Класс/структура очередь- коллекция человеков {
 Имеет изменяемое свойство- кол-во человеков в очереди // в принципе не нужно, если мы сможем определить кол-во человеков по одному из свойств коллекции аля: Collection.count
 имеет функцию- добавить человека в очередь //добавляет человека в конец
 имеет функцию убрать человека из очереди // убирает 1-го человека
 Имеет функцию приоритет {
 Меняет местами человеков, пропуская вперед очереди дефективных
 реализация:
 NumberDefect=0
 
 for( i=0 to Collection.count, i++){
 if Collection[i]==@Дефективный@{
 // надо найти функцию, которая будет вставлять в массив перед или после указанного индекса, скорее всего она есть. В данном примере назову ее insert и вставляет она после указанного элемента в массиве : Collection.insert(Номер элемента после которого вставляем, элемент который вставляем)
 Box= Collection[i] // копируем дефективного человека в ящик
 @Коллекция Человеков@.delete(i)// удаляем его из коллекции
 @Коллекция Человеков@.insert(NumberDefect,Box)// вставляем после последнего дефективного человека,
 //коробка нужна для правильности/удобности, если мы вставим его без коробки то индексация нарушится, и придется удалять не i-того человека, а i+1-человека
 NumberDefect+=1
 }
 }
 IT’S SANYA TIME, SANYA CODE
 Добавим изменяемое свойство время обслуживания: TimeObsl
 Функцию ВремяСуществования которое принимает в себя время, и шанс появления человека, шанс появления дефективного человека :
 TimeWork(Time-int, Chance- double , BabkaChance-double)
 {
 For (i=1 to Time, i++) {
 TotalChance=TotalChance+Random(0,1)*Chance
 if (TotalChance>Const) { // Const можно тоже подавать вместе с Time и Chance а можно и задать только тут
 
 TotalChance=0
 AddingHuman=.Norm
 If(random(0,1)> 1-BabkaChance){
 AddingHuman=.defect}
 @Коллекция Человеков@.@Добавить Человека в очередь @( AddingHuman)
 } конец ифа
 } конец фора
 For(i=0 to time@целочисленное деление@TimeObsl){
 If(@Коллекция Человеков@.Count>0){
 @Коллекция Человеков@.@ Убрать Человека из очереди@}конец ифа } конец фора
 }конец функции
 
 */

enum TypeOfPeople {
    
    case elderly, disabled, average
    
}




class people {
    
    let Peopletype: TypeOfPeople
    
    init (Peopletype: TypeOfPeople) {
        
        self.Peopletype = Peopletype
        
    }
    
}



class queue <T> {
    
    var PeopleInQueue: [T] = []
    
    
    func add (_ People:T){
    
        PeopleInQueue.append(People)
    
    }
    
    func delete()  {
        PeopleInQueue.remove(at: 0)
    }
    
    
    func filter() {
        var NumberDefect = 0
        
        for i in 0...PeopleInQueue.count-1 {
        //    if PeopleInQueue[i] =  {
                
                
            }
        }
    }
    
}

var queue1 = queue<people>.init()
var str1 = ""
queue1.add(people.init(Peopletype: .elderly))

queue1.add(people.init(Peopletype: .average))


for i in 0...queue1.PeopleInQueue.count-1 {
    str1 = str1 + ", " + String(describing: queue1.PeopleInQueue[i].Peopletype)
}

print(str1)
str1 = ""

queue1.delete()

for i in 0...queue1.PeopleInQueue.count-1 {
    str1 = str1 + ", " + String(describing: queue1.PeopleInQueue[i].Peopletype)
}

print(str1)
str1 = ""


//print(queue1.PeopleInQueue)










