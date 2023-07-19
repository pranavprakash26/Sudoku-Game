retroScene = simpleGameEngine('retro_pack.png', 16, 16, 4, [75,75,75]);

%%
n1 = 949;
n2 = 950;
n3 = 951;
n4 = 952;

%%
AnsRow1 = [625,626,626,626,626,626,627];
AnsRow2 = [657,n3,n4,442,n1,n2,659];
AnsRow3 = [657,n2,n1,442,n4,n3,659];
AnsRow4 = [657,501,501,501,501,501,659];
AnsRow5 = [657,n4,n3,442,n2,n1,659];
AnsRow6 = [657,n1,n2,442,n3,n4,659];
AnsRow7 = [689,690,690,690,690,690,691];

AnsFinalArray = [AnsRow1;AnsRow2;AnsRow3;AnsRow4;AnsRow5;AnsRow6;AnsRow7];
%%
puzzleRow1 = [625,626,626,626,626,626,627];
puzzleRow2 = [657,1,1,442,1,1,659];
puzzleRow3 = [657,1,n1,442,1,n3,659];
puzzleRow4 = [657,501,501,501,501,501,659];
puzzleRow5 = [657,n4,1,442,n2,1,659];
puzzleRow6 = [657,1,1,442,1,1,659];
puzzleRow7 = [689,690,690,690,690,690,691];

puzzleFinalArray = [puzzleRow1;puzzleRow2;puzzleRow3;puzzleRow4;puzzleRow5;puzzleRow6;
    puzzleRow7];

drawScene(retroScene,puzzleFinalArray)
title('Sudoku: Level 4')

ticker = 0;
% Change below to adjust for blank spots.
while ticker < 12
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
         if f ~= 1|f~= 2|f~= 3|f~= 4|x==10000
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
             end
             if x == AnsFinalArray(r,c)
                 drawScene(retroScene,puzzleFinalArray);
                 ticker = ticker + 1;
             elseif x == 10000
                errorMessage = sprintf('Error: One of the following situations occured.\n -You entered character letters\n -You entered numbers outside the range 1-4\n -You canceled out of the submission box\n \n Please only enter numerical didgets 1-4. Close this message to Continue.');
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