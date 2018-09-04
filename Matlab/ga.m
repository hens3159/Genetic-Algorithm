% Memaksimalkan fungsi
%  input :
%    fungsi : Fungsi kelayakan 
%    nPop : Ukuran populasi
%    xbit : Jumlah gen 
%    xbawah : Batas bawah 
%    xatas : Batas atas
%    ngen : Jumlah generasi
%    pc : Probabilitas crossover
%    pm : Probabilitas mutasi
%    digit : Jumlah angka di belakang koma
%  output :
%    nilaiOpt : Nilai maksimum
%    xOpt : Nilai x
 
function [nilaiOpt, xOpt, posisi, fitbgt, fitrata] = ga(fungsi, xbawah, xatas, ngen, nPop, pc, pm, digit)
 
% Menyimpan fitness per generasi
fitbgt = zeros(1,ngen);
fitrata = zeros(1,ngen);
fitx = zeros(ngen, 2);
 
% Populasi Awal
xkrom = ceil(log2((xatas - xbawah) * 10^digit));
populasi = randi([0 1], nPop, sum(xkrom));
 
for i = 1:ngen
    
    [fitness, x] = evaluasi(fungsi, populasi, xkrom, xbawah, xatas);
    
    [fitbgt(i) index] = max(fitness);
    fitx(i,:) = x(index,:);
    fitrata(i) = mean(fitness);
    
    popBaru  = seleksi(populasi, fitness);
    popCrossover = crossover(pc, popBaru);
    popMutasi = mutasi(pm, popCrossover);
    populasi = popMutasi;
   
end
% Hasil akhir
[nilaiOpt, posisi] = max(fitbgt);
xOpt = fitx(posisi,:);
 
if nargout == 0
    plot(fitbgt)
    hold on
    plot(fitrata, 'Color', 'red')
end
end
