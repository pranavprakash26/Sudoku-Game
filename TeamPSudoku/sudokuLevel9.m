retroScene = simpleGameEngine('retro_pack.png', 16, 16, 4, [75,75,75]);

%%
n1 = 949;
n2 = 950;
n3 = 951;
n4 = 952;
n5 = 953;
n6 = 954;
n7 = 955;
n8 = 956;
n9 = 957;
%%
AnsRow1 = [625,626,626,626,626,626,626,626,626,626,626,626,627];
AnsRow2 = [657,n5,n2,n1,657,n3,n8,n9,659,n7,n4,n6,659];
AnsRow3 = [657,n4,n3,n8,657,n7,n6,n5,659,n9,n1,n2,659];
AnsRow4 = [657,n6,n9,n7,657,n2,n1,n4,659,n8,n3,n5,659];
AnsRow5 = [657,626,626,626,626,626,626,626,626,626,626,626,659];
AnsRow6 = [657,n3,n6,n5,657,n8,n9,n1,659,n2,n7,n4,659];
AnsRow7 = [657,n8,n7,n2,657,n4,n5,n3,659,n6,n9,n1,659];
AnsRow8 = [657,n1,n4,n9,657,n6,n7,n2,659,n3,n5,n8,659];
AnsRow9 = [657,690,690,690,690,690,690,690,690,690,690,690,659];
AnsRow10 = [657,n7,n8,n4,657,n1,n3,n6,659,n5,n2,n9,659];
AnsRow11 = [657,n2,n5,n9,657,n9,n4,n7,659,n1,n8,n3,659];
AnsRow12 = [657,n9,n1,n3,657,n5,n2,n8,659,n4,n6,n7,659];
AnsRow13 = [689,690,690,690,690,690,690,690,690,690,690,690,691];

AnsFinalArray = [AnsRow1;AnsRow2;AnsRow3;AnsRow4;AnsRow5; AnsRow6;
    AnsRow7;AnsRow8;AnsRow9;AnsRow10;AnsRow11;AnsRow12;AnsRow13];
%%
puzzleFinalArray = zeros(13,13);
puzzleRow1 = [625,626,626,626,626,626,626,626,626,626,626,626,627];
puzzleRow2 = [657,1,1,n1,657,1,n8,1,659,1,1,1,659];
puzzleRow3 = [657,1,n3,1,657,n7,1,1,659,1,1,1,659];
puzzleRow4 = [657,1,n9,1,657,1,1,1,659,n8,1,n5,659];
puzzleRow5 = [657,626,626,626,626,626,626,626,626,626,626,626,659];
puzzleRow6 = [657,1,1,1,657,1,1,n1,659,1,1,n4,659];
puzzleRow7 = [657,1,1,1,657,1,1,n3,659,1,n9,n1,659];
puzzleRow8 = [657,1,1,1,657,n6,n7,n2,659,1,1,1,659];
puzzleRow9 = [657,690,690,690,690,690,690,690,690,690,690,690,659];
puzzleRow10 = [657,n7,1,1,657,1,n3,1,659,1,n2,1,659];
puzzleRow11 = [657,n2,1,n6,657,1,1,1,659,n1,1,1,659];
puzzleRow12 = [657,1,1,1,657,1,1,1,659,1,n6,1,659];
puzzleRow13 = [689,690,690,690,690,690,690,690,690,690,690,690,691];

puzzleFinalArray = [puzzleRow1;puzzleRow2;puzzleRow3;puzzleRow4;puzzleRow5; puzzleRow6;
    puzzleRow7;puzzleRow8;puzzleRow9;puzzleRow10;puzzleRow11;puzzleRow12;puzzleRow13];

drawScene(retroScene,puzzleFinalArray)
title('Sudoku: Level 9')

ticker = 0;
% Change below to adjust for blank spots.
while ticker < 59
    [r,c,b] = getMouseInput(retroScene); 
 if b == 1
     if puzzleFinalArray(r,c) == 1
         puzzleFinalArray(r,c) = 822;
         drawScene(retroScene,puzzleFinalArray);
         x = 10000;
         f2 = inputdlg('Type the new number.');
         if isempty(f2)
            f = 10000;
         else
            f = str2num(f2{1});
         end
         if f ~= 1|f~= 2|f~= 3|f~= 4|f~= 5|f~= 6|f~= 7|f~= 8|f~= 9|x==10000
             x = 10000;
         end
             if f == 1
                x = 949;
                puzzleFinalArray(r,c) = x;
                
             elseif f == 2
                x = 950;
                puzzleFinalArray(r,c) = x;
                
             elseif f == 3
                x = 951;
                puzzleFinalArray(r,c) = x;
                
             elseif f == 4
                x = 952;
                puzzleFinalArray(r,c) = x;
                
             elseif f == 5
                x = 953;
                puzzleFinalArray(r,c) = x;
                
             elseif f == 6
                x = 954;
                puzzleFinalArray(r,c) = x;
                
             elseif f == 7
                x = 955;
                puzzleFinalArray(r,c) = x;
                
             elseif f == 8
                x = 956;
                puzzleFinalArray(r,c) = x;
                
             elseif f == 9
                x = 957;
                puzzleFinalArray(r,c) = x;
                
             end
             if x == AnsFinalArray(r,c)
                 drawScene(retroScene,puzzleFinalArray);
                 ticker = ticker + 1;
             elseif x == 10000
                errorMessage = sprintf('Error: One of the following situations occured.\n -You entered character letters\n -You entered numbers outside the range 1-9\n -You canceled out of the submission box\n \n Please only enter numerical didgets 1-9. Close this message to Continue.');
                uiwait(msgbox(errorMessage));
                puzzleFinalArray(r,c) = 1;
                drawScene(retroScene,puzzleFinalArray);
             else
                uiwait(msgbox('That number is incorrect! Please choose another number.'));
                puzzleFinalArray(r,c) = 1;
                drawScene(retroScene,puzzleFinalArray);
             end 
        end
     end
 end
 
win = sprintf('Congratulations! You win!');
uiwait(msgbox(win));
close