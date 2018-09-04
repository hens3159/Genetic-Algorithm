% CROSSOVER
%  input : 
%    pc : Probabilitas crossover
%    populasi : Jumlah kromosom
%  output :
%    popCrossover : populasi crossover
 
function popCrossover = crossover(pc, populasi)
    nPop = size(populasi,1);
    bit = size(populasi,2);
    
    roulette = rand(nPop,1);
    indeks = find(roulette < pc);
    if mod(length(indeks),2) ~= 0
        indeks = indeks(2:end);
    end
 
    popCrossover = populasi;
    for i = 1:2:length(indeks)
        titikCrossover = randi(bit-1);    
        poptitikCrossover(indeks(i),:) = [populasi(indeks(i+1),1:titikCrossover) populasi(indeks(i),titikCrossover+1:bit)];
        poptitikCrossover(indeks(i+1),:) = [populasi(indeks(i),1:titikCrossover) populasi(indeks(i+1),titikCrossover+1:bit)];
    end
end
