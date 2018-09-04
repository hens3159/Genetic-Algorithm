% evaluasi fungsi 
%  input : 
%    fungsi : Fungsi kelayakan 
%    populasi : Jumlah populasi
%    xbit : Jumlah gen 
%    xbawah : Batas bawah 
%    xatas : Batas atas
%  output :
%    nilai fitness dan nilai x terbaik
function [fitness, x] = evaluasi(fungsi, populasi, xbit, xbawah, xatas)
    [nPop, bit] = size(populasi);
    fitness = zeros(nPop,1);
    
    desimal = [bi2de(populasi(:,1:xbit(1))) bi2de(populasi(:,xbit(1)+1:bit))];
    x = bsxfun(@plus, (xbawah), (bsxfun(@times, desimal,((xatas-xbawah)./(pow2(xbit)-1)))));
 
    for i = 1:nPop
        fitness(i) = fungsi(x(i,:));
    end
end
