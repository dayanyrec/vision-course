//Visao Computacional
//Tarefa 3.2 - Inverse
//Dayany Espindola

clear;
clc;
exec('/usr/local/share/scilab/contrib/sip-0.12.0-SNAPSHOT/loader.sce');

A = imread('../figs/white_blood_cells.png'); //leitura da imagem
//imshow(A);                                    //plota imagem

B = 1 - A(1:$,1:$,1:$);

//figure();
//imshow(B);

imwrite(B, 'figs/inverse-cells.png');
