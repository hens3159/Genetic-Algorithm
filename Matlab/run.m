clc; 
clear;
close all; 
 
% Deklarasi fungsi
soal = @(x) 10.4 + x(1)*sin(3*pi*x(1)) + x(2)*sin(13*pi*x(2));
xbawah = [-2.0 3.27];
xatas = [15.5 8.75];
 
disp('************************************************************')
disp('=              *** GENETIC ALGHORITHM ***                  =')
disp('=        ** Fungsi fitness dengan dua variabel **          =')
disp('=              * Henhen Lukmana G651170141*                =')
disp('=**********************************************************=')
disp('=**********************************************************=')
disp('=***      Mencari nilai makmisal pada fungsi berikut    ***=')
disp('=  Max f(x1,x2)=10.4 + x1*sin(3*3.14*x1)+x2*sin(13*3.14*x2 =') 
disp('=         variabel x1 berada antara -2.0 dan 15.5          =')
disp('=         variabel x2 berada antara 3.27 dan 8.75          =')
disp('************************************************************')
disp(' ')
disp('************************************************************')
fprintf(1,'Ukuran populasi        = 40\n');
fprintf(1,'Probabilitas mutasi    = 0.1\n');
fprintf(1,'Probabilitas crossover = 0.8\n');
fprintf(1,'Jumlah generasi        = 1000\n');
disp('************************************************************')
disp(' ')
disp('************************************************************')
disp('=== Tekan tombol yang mana saja pada keyboard untuk      ===')
disp('=== menjalankan Optimasi                                 ===')
disp('************************************************************')
pause
 
% Jalankan optimasi 
[nilaiOpt, xOpt, posisi, fitbgt, fitrata] = ga (soal, xbawah, xatas,  1000, 40, 0.8, 0.1, 2);
disp(' ')
disp('************************************************************')
disp('=== Tekan tombol yang mana saja pada keyboard untuk      ===') 
disp('=== menampilkan  nilai x1 dan x2 terbaik                 ===')
disp('************************************************************')
pause
 
disp('=====================')
disp('*      x1       x2  *')
disp('=====================')
disp(xOpt);
disp('=====================')

disp(' ')
disp('************************************************************')
disp('=== Tekan tombol yang mana saja pada keyboard untuk      ===')
disp('=== menampilkan nilai fitness                            ===')
disp('************************************************************')
pause

disp('=====================')
disp('nilai fitness:')
disp(nilaiOpt)
disp('=====================')
disp(' ')
disp('************************************************************')
disp('=== Tekan tombol yang mana saja pada keyboard untuk      ===')
disp('=== menampilkan grafik kinerja algoritma genetika        ===')
disp('************************************************************')
pause
 
% Buat plot perkembangan fitness
plot(fitbgt)
title('Grafik perkembangan nilai fitness')
xlabel('Generasi')
ylabel('Fitness')
hold on
plot(fitrata, 'Color', 'red')
grid on;

