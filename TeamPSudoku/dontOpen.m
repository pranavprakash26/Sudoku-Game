retroScene = simpleGameEngine('retro_pack.png', 16, 16, 4, [75,75,75]);
%%
a = 980;
b = 981;c = 982;d = 983;e = 984;f = 985;g = 986;h = 987;i = 988;j = 989;
k = 990;l = 991;m = 992;n = 1012;o = 1013;p = 1014;q = 1015;r = 1016;
s = 1017;t = 1018;u = 1019;v = 1020;w = 1021;x = 1022;y = 1023;z = 1024;

%%
eggRow1 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
eggRow2 = [1,1,1,1,t,f,t,f,1,1,1,1,1];
eggRow3 = [1,1,1,1,h,o,h,r,1,1,1,1,1];
eggRow4 = [1,1,1,1,a,r,e,o,1,1,1,1,1];
eggRow5 = [1,1,1,1,n,1,1,m,1,1,1,1,1];
eggRow6 = [1,1,1,1,k,p,g,1,1,1,1,1,1];
eggRow7 = [1,1,1,1,1,l,a,t,1,1,1,1,b];
eggRow8 = [1,1,1,1,y,a,m,e,1,1,1,1,a];
eggRow9 = [1,1,1,1,o,y,e,a,1,1,1,1,c];
eggRow10 = [1,1,1,1,u,i,1,m,1,1,1,1,k];
eggRow11 = [1,1,1,1,1,n,1,1,1,1,1,1,1];
eggRow12 = [1,1,1,1,1,g,1,p,1,1,1,1,1];
eggRow13 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
eggArray = [eggRow1;eggRow2;eggRow3;eggRow4;eggRow5;eggRow6;
    eggRow7;eggRow8;eggRow9;eggRow10;eggRow11;eggRow12;eggRow13];
drawScene(retroScene,eggArray)
waitegg = 0;
while waitegg < 1
    [r,c,b] = getMouseInput(retroScene);
    if b == 1
        if menuArray(r,c) == b && c == 13
            waitegg = 1
            break
        elseif menuArray(r,c) == a && c == 13
            waitegg = 1
            break
        elseif menuArray(r,c) == c && c == 13
            waitegg = 1
            break
        elseif menuArray(r,c) == k && c == 13
            waitegg = 1
            break
        end
    end
end
close