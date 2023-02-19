clear all 
close all

%Número de muestras
N = 10e6;
exito = 0;
radio = 3;
%Limites para las muestras
a = -3;
b = 3;

%Grafica del Circulo
figure(1);
xlabel('Eje x');
ylabel('Eje y');
viscircles([0 0],radio);
hold on
grid on
axis([-3 3 -3 3])

%Implementacion de simulación MonteCarlo
for n=1:N
    x = a + (b-a).*rand;
    y = a + (b-a).*rand;
    
    rad = sqrt(x^2 + y^2);
    
    plot(x,y,'o');
    
    if rad <= 3
        exito = exito + 1;
    end
    
end

%Comparación de valores obtenidos
areaCuadrado =(2*radio)^2
areaReal = pi*(radio^2)
areaEstimada = exito/N * areaCuadrado


