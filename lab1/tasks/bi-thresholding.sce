//Visao Computacional
//Tarefa 2.2 - Thresholding
//Dayany Espindola

[A, map] = imread('../figs/snowman.jpg');   //leitura da imagem
//imshow(A,map);                            //plota imagem

//figure();
//histplot(100, A);                           //plota histograma da imagem A

theta0 = 90;                                //limite inferior
theta1 = 185;                               //limite superior

for i=1:size(A,1)
    for j=1:size(A,2)
        if ((A(i,j) > theta0) & (A(i,j) < theta1))  then
            B(i,j) = 255;
        else
            B(i,j) = 0;
        end
    end
end

//figure();
//imshow(B,map);

imwrite(B, map, 'figs/snowman_threshold.jpg');

//figure();
//histplot(100, B);                             //plota histograma da imagem B
