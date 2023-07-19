clear
clc
%%
chart32 = zeros (32,32);
chart32a = 32;
chart32b = 1;
counter1 = 1;
while counter1<33
    chart32(counter1,:)= [chart32b:chart32a];
    chart32b = chart32b + 32;
    chart32a = chart32a + 32;
    counter1 = counter1 + 1;
end

%%
a = 980;
b = 981;c = 982;d = 983;e = 984;f = 985;g = 986;h = 987;i = 988;j = 989;
k = 990;l = 991;m = 992;n = 1012;o = 1013;p = 1014;q = 1015;r = 1016;
s = 1017;t = 1018;u = 1019;v = 1020;w = 1021;x = 1022;y = 1023;z = 1024;

level1 = 949;level2 = 950;level3 = 951;level4 = 952;level5 = 953;
level6 = 954;level7 = 955;level8 = 956;level9 = 957;level11 = 949;level10 = 948;
%%
menuScene = simpleGameEngine('retro_pack.png', 16, 16, 4, [75,75,75]);
menuRow1 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow2 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow3 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow4 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow5 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow6 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow7 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow8 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow9 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow10 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow11 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow12 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow13 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuArray = [menuRow1;menuRow2;menuRow3;menuRow4;menuRow5;menuRow6;
    menuRow7;menuRow8;menuRow9;menuRow10;menuRow11;menuRow12;menuRow13];
drawScene(menuScene,menuArray)
title('Sudoku: Launcher')
pause(1)
menuRow2 = [1,1,1,t,e,a,m,1,p,1,1,1,1];
menuRow3 = [1,1,1,s,t,u,d,i,o,s,1,1,1];
menuRow7 = [1,1,j,o,n,a,t,h,a,n,1,h,1];
menuRow8 = [1,1,p,r,a,n,a,v,1,p,1,1,1];
menuRow9 = [1,1,l,a,n,d,o,n,1,m,1,1,1];
menuRow10 = [1,1,m,a,t,t,h,e,w,1,s,1,1];
menuArray = [menuRow1;menuRow2;menuRow3;menuRow4;menuRow5;menuRow6;
    menuRow7;menuRow8;menuRow9;menuRow10;menuRow11;menuRow12;menuRow13];
drawScene(menuScene,menuArray)
pause(3)
menuRow1 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow2 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow3 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow4 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow5 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow6 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow7 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow8 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow9 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow10 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow11 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow12 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow13 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuArray = [menuRow1;menuRow2;menuRow3;menuRow4;menuRow5;menuRow6;
    menuRow7;menuRow8;menuRow9;menuRow10;menuRow11;menuRow12;menuRow13];
drawScene(menuScene,menuArray)
pause(1)
menuRow1 = [1,1,1,s,u,d,o,k,u,1,1,1,1];
menuRow2 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow3 = [1,s,e,l,e,c,t,1,l,e,v,e,l];
menuRow4 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow5 = [1,952,x,952,1,e,a,s,y,1,1,1,1];
menuRow6 = [1,1,level1,1,level2,1,level3,1,level4,1,level5,1,1];
menuRow7 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow8 = [1,957,x,957,1,h,a,r,d,1,1,1,1];
menuRow9 = [1,1,level6,1,level7,1,level8,1,level9,1,level11,level10,1];
menuRow10 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
menuRow11 = [1,1,g,a,m,e,1,w,i,l,l,1,1];
menuRow12 = [1,l,a,u,n,c,h,1,i,n,1,a,1];
menuRow13 = [1,n,e,w,1,w,i,n,d,o,w,1,1];
menuArray = [menuRow1;menuRow2;menuRow3;menuRow4;menuRow5;menuRow6;
    menuRow7;menuRow8;menuRow9;menuRow10;menuRow11;menuRow12;menuRow13];
drawScene(menuScene,menuArray);
selected = 0;
while selected < 1
    [r,c,b] = getMouseInput(menuScene);
    if b == 1
        if menuArray(r,c) == level1 && r ~= 9
            close
            selected = 1;
            sudokuLevel1
            selected = rebootGame;
            drawScene(menuScene,menuArray);
        elseif menuArray(r,c) == level2
            close
            selected = 1;
            sudokuLevel2
            selected = rebootGame;
            drawScene(menuScene,menuArray);
        elseif menuArray(r,c) == level3
            close
            selected = 1;
            sudokuLevel3
            selected = rebootGame;
            drawScene(menuScene,menuArray);
        elseif menuArray(r,c) == level4 && r ~= 5
            close
            selected = 1;
            sudokuLevel4
            selected = rebootGame;
            drawScene(menuScene,menuArray);
        elseif menuArray(r,c) == level5
            close
            selected = 1;
            sudokuLevel5
            selected = rebootGame;
            drawScene(menuScene,menuArray);
        elseif menuArray(r,c) == level6
            close
            selected = 1;
            sudokuLevel6
            selected = rebootGame;
            drawScene(menuScene,menuArray);
        elseif menuArray(r,c) == level7
            close
            selected = 1;
            sudokuLevel7
            selected = rebootGame;
            drawScene(menuScene,menuArray);
        elseif menuArray(r,c) == level8
            close
            selected = 1;
            sudokuLevel8
            selected = rebootGame;
            drawScene(menuScene,menuArray);
        elseif menuArray(r,c) == level9 && r ~= 8
            close
            selected = 1;
            sudokuLevel9
            selected = rebootGame;
            drawScene(menuScene,menuArray);
        elseif menuArray(r,c) == level10
            close
            selected = 1;
            sudokuLevel10
            selected = rebootGame;
            drawScene(menuScene,menuArray);
        elseif menuArray(r,c) == level11 && r == 9
            close
            selected = 1;
            sudokuLevel10
            selected = rebootGame;
            drawScene(menuScene,menuArray);
        elseif menuArray(r,c) == u && r == 1
            close
            selected = 1;
            dontOpen
            selected = rebootGame;
            drawScene(menuScene,menuArray)
        end
    end
end
