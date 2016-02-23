//Версия 0.3
//
//Нужно:
//придумать новые элементы для игры
//придумать действия с населением
//перерисовка текста каждый день
//нерабочая херня на 72 строке
//
// Навигатор по коду(поиск осуществляется по #хештэгу):
//
//Ограбление деревень: #village
//
//

uses crt;

var lvl,hp,exp,exp2,day,choose,build,power,force,vilpow,army,wood,population,barak,house,woodmaker,enter,ok,ruin:integer;
var start, builds:string;

BEGIN
println('Добро пожаловать в текстовую RPG - CastleWorld!');
println('Для продолжения - нажмите y');
println('Если вы хотите выйти - нажмите n');

readln(start);

hp:=100; //жизни
exp:=0; //опыт
lvl:=1; //уровень
wood:=500; //ресурсы
army:=1; //войска
population:=5; //население

    if start = 'y' then
    println('Ваш замок явно не в лучшем состоянии. Пора бы взяться за него!');
        while hp > 1 do
            begin
            
            //ежедневные изменения
            day:=day+1;
            hp:=hp+2;
            if hp > 100 then hp:=100;
            builds:='Хижины:'+house+ '. Лесорубки:'+woodmaker+'. Казармы:'+barak+'.' ;
            enter:=0;
            ok:=0;
            
            //проверка изменения статов
            
            wood:=wood+woodmaker*50;
            lvl:=(exp div 10);
            
            //системы силы замка
            force:=(power+army)*lvl;
            
            //вывод текущих статов
            println('_______________________________________________________');
            println('Текущий день: '+day);
            println('Состояние замка: '+hp);
            println('Ваши постройки: '+builds);
            println('Ресурсы: '+wood);
            println('Уровень: '+lvl);
            println('Войска: '+army+'. Население: '+population+'.');
            
            //выбор действий
            println();
            println('Что будем сегодня делать?');
            println('1 - Ограбить деревню.');
            println('2 - Построить здание.');
            println('3 - Пропустить день.');
            readln(choose);
            
            //разорение деревни #village
            if choose = 1 then 
            begin
            //Удалить нахуй.
           // vilpow:= Random(10);
              //if force >= vilpow then
              
              //нерабочая херня
              println('Кого будем грабить?');
              println('');
              println('Дичовка');
              println('Алыкашевка');
              println('Макаронка');
              println('Борисовака'); //Я не ошибся, так и было задумано
              println('Недоваловка');
              readln(ruin);
               begin
              
            
            println();
                  print('Грабим');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
            println('Вы ограбили деревню!');
            exp:=exp+3;
            hp:=hp-5;
            power:=power+1;
            wood:=wood+(vilpow*50);
            end;
            if force < vilpow then
            begin
            println();
                  print('Грабим');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
            println('К сожалению у вас не хватило сил.(-25hp)');
            sleep(2000);
            hp:=hp-25;
                end;
                    end;
            
            //постройка зданий
            if choose = 2 then
            begin
              while ok = 0 do
                begin
                println('_______________________________________________________');
            println('Что будем строить?');
            println('1 - Хижины(200)');
            println('2 - Ресурсодобывающие постройки(300)');
            println('3 - Казармы(500)');
            println('4 - Пропустить');
            readln(build);
            
            if build = 1 then 
              if wood >= 200 then
            begin 
            wood:=wood-200;
            house:=house+1;
            population:=population+3;
            enter:=1;
            ok:=1
            end;
            if build = 2 then
              if wood >= 300 then
            begin
            wood:=wood-300;
            woodmaker:=woodmaker+1;
            enter:=1;
            ok:=1
              end;
            if build = 3 then 
              if wood > 499 then
            begin
            wood:=wood-500;
            barak:=barak+1;
            army:=army+2;
            enter:=1;
            ok:=1
            end;
            
            if build = 4 then begin 
            ok:=1; enter:=2 end;
            
                 
                  
                  if enter = 1 then
                  begin
                  exp:=exp+1; //прибавление опыта при поcтройке
                  println();
                  print('Строим');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  print('.');
                  sleep(100);
                  println('Постройка завершена.');  
                      end;
                      
                      if enter = 0 then 
                      begin
                      println('К сожалению у вас не хватает ресурсов.');
                      sleep(2000);
                                  end;
                             end;
                      end;
            end;
END.