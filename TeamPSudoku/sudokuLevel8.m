retroScene = simpleGameEngine('retro_pack.png', 16, 16, 4, [75,75,75]);


%%

AnsRow1 = [625,626,626,626,626,626,626,626,626,626,626,626,627];
AnsRow2 = [657,951,956,955,657,952,949,953,659,957,954,950,659];
AnsRow3 = [657,952,957,950,657,955,954,951,659,949,956,953,659];
AnsRow4 = [657,953,949,954,657,957,950,956,659,951,955,952,659];
AnsRow5 = [657,626,626,626,626,626,626,626,626,626,626,626,659];
AnsRow6 = [657,956,950,951,657,949,953,955,659,952,957,954,659];
AnsRow7 = [657,949,954,957,657,950,956,952,659,955,953,951,659];
AnsRow8 = [657,955,953,952,657,951,957,954,659,950,949,956,659];
AnsRow9 = [657,690,690,690,690,690,690,690,690,690,690,690,659];
AnsRow10 = [657,957,952,956,657,954,955,950,659,953,951,949,659];
AnsRow11 = [657,954,951,949,657,953,952,957,659,956,950,955,659];
AnsRow12 = [657,950,955,953,657,956,951,949,659,954,952,957,659];
AnsRow13 = [689,690,690,690,690,690,690,690,690,690,690,690,691];

AnsFinalArray = [AnsRow1;AnsRow2;AnsRow3;AnsRow4;AnsRow5; AnsRow6;
    AnsRow7;AnsRow8;AnsRow9;AnsRow10;AnsRow11;AnsRow12;AnsRow13];
%%
puzzleFinalArray = zeros(13,13);
puzzleRow1 = [625,626,626,626,626,626,626,626,626,626,626,626,627];
puzzleRow2 = [657,951,956,1,657,952,1,1,659,1,1,1,659];
puzzleRow3 = [657,952,1,1,657,1,1,1,659,949,956,1,659];
puzzleRow4 = [657,953,949,954,657,1,950,1,659,1,1,1,659];
puzzleRow5 = [657,626,626,626,626,626,626,626,626,626,626,626,659];
puzzleRow6 = [657,1,950,951,657,949,953,955,659,1,1,1,659];
puzzleRow7 = [657,949,954,957,657,1,1,1,659,1,953,951,659];
puzzleRow8 = [657,1,1,952,657,1,1,1,659,950,949,1,659];
puzzleRow9 = [657,690,690,690,690,690,690,690,690,690,690,690,659];
puzzleRow10 = [657,957,1,956,657,954,1,1,659,1,1,949,659];
puzzleRow11 = [657,954,1,949,657,953,1,957,659,956,1,1,659];
puzzleRow12 = [657,1,1,953,657,956,951,949,659,1,952,957,659];
puzzleRow13 = [689,690,690,690,690,690,690,690,690,690,690,690,691];

puzzleFinalArray = [puzzleRow1;puzzleRow2;puzzleRow3;puzzleRow4;puzzleRow5; puzzleRow6;
    puzzleRow7;puzzleRow8;puzzleRow9;puzzleRow10;puzzleRow11;puzzleRow12;puzzleRow13];

drawScene(retroScene,puzzleFinalArray)
title('Sudoku: Level 8')

ticker = 0;
% Change below to adjust for blank spots.
while ticker < 43
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