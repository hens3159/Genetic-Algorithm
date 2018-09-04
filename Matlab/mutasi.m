% MUTASI 
%  input :
%    pm : Probabilitas mutasi
%    populasi : Populasi mutasi
%  output :
%    popMutasi
 
function popMutasi = mutasi(pm, populasi)   
    roulette = rand(size(populasi));
    indeks = find(roulette < pm);
 
    popMutasi = populasi;
    
    for i = 1:length(indeks)
        if populasi(i) == 0
            popMutasi(i) = 1;
        else
            popMutasi(i) = 0;
        end
    end
end
 
