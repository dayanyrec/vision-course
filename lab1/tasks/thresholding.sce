//Visao Computacional
//Tarefa 2.1 - Thresholding
//Dayany Espindola

A = gray_imread('../figs/white_blood_cells.png'); //leitura da imagem em escala de cinza
//imshow(A);                                    //plota imagem

//figure();
//histplot(100, A);                             //plota histograma da imagem A

theta = 0.78;                                   //limite

for i=1:size(A,1)
    for j=1:size(A,2)
        if (A(i,j) > 0.78) then
            B(i,j) = 0;
        else
            B(i,j) = 1;
        end
    end
end

//figure();
//imshow(B);

imwrite(B, 'figs/cells_threshold.png');

//figure();
//histplot(100, B);                             //plota histograma da imagem B
