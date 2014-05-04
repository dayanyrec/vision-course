//Visao Computacional
//Tarefa 3.1 - Brightness and clipping
//Dayany Espindola

clear;
clc;
exec('/usr/local/share/scilab/contrib/sip-0.12.0-SNAPSHOT/loader.sce');

[A,map] = imread('../figs/ImageA.jpg'); //leitura da imagem em escala de cinza
//imshow(A,map);                          //plota imagem

bright = 25;                            //10% do brilho

for i=1:size(A,1)
    for j=1:size(A,2)
        B(i,j) = A(i,j) + bright;
        if (B(i,j) > 255) then
            B(i,j) = 255;
        elseif (B(i,j) < 0)
            B(i,j) = 0;
        end
    end
end

//figure();
//imshow(B,map);

imwrite(B, map, 'figs/image_brightness.jpg');
