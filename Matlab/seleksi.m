%SELEKSI 
%  input :
%    populasi : Populasi seleksi
%    fitness : nilai fitness
%  output :
%    popBaru : Populasi baru
 
function popBaru = seleksi(populasi, fitness)
    nPop = size(fitness,1);
    
    sumFit = sum(fitness);
    prob = fitness./sumFit;
    probKum = cumsum(prob);
 
    roulette = rand(nPop,1);
    
    popBaru = populasi;
    for i = 1:nPop
        if roulette(i) < min(probKum)
            popBaru(i,:) = populasi(1,:);
        else
            popBaru(i,:) = populasi((find(probKum < roulette(i), 1, 'last' ) + 1),:);
        end
    end
end
