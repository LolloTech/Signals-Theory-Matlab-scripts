
B = zeros(4); % crea una matrice di zeri 4x4;
B = zeros(1,3); % crea un vettore di dimensione 3 di zeri
B = zeros(1,3) + 2; % crea un vettore di dimensione 3 di zeri, zeroes(riga, colonna)
C = ones(3,1); % crea una colonna di 1
C = ones(3,1)*3; % crea una colonna di 3

save; % salvataggio workspace (A) in matlab.mat
pause; % attende la pressione di un tasto
clear; % clear screen

% Assegnamento implicito

t = -10:.1:10; % vettore da -10 a 10 spaziato di 0.1
t1 = -100:100; % vettore da -100 a 100 spaziato di 1

clear B; % libera una variabile dalla memoria una variabile
clear; % libera la memoria
% es 1 generare un vettore COLONNA t2 che va da 0 a 2 con passo 0.1;

	%per fare la matrice colonna, basta trasporre una matrice riga
	t2 = 0:0.1:2;
	t2 = t2';
	t2;

% es 2 generare una matrice E quadrata 4x4 con ogni elemento pari a -1;

	E = ones(4)*(-1);
	E;

% es 3 aggiungere una quinta colonna alla matrice E tutta nulla;

	%aggiungo ad ogni riga, nella quinta posizione, uno zero
	% : indica ogni elemento
	E(:,5) = 0;
	E;

% es 4 definire la matrice F come la seconda e la terza riga di E;
	
	% prendo la riga dalla 2 alla 3, con tutte le colonne annesse (indicato dal ':')
	F = (E(2:3,:));
	F;

% es 5 cancellare da F la prima colonna.

	F(:,1) = [];
	F;

% Comandi vari per la manipolazione di matrici, copiato da tutorial1.m
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
A
A(2,2) % estrazione di un elemento da una matrice
pause;
A(:,3) % estrazione di una colonna da una matrice
pause;
A(1,:) % estrazione di una riga di una matrice
pause;
diag(A) % diagonale di A (quadrata)
pause;
A+eye(3) % eye=matrice identita
pause;
size(A) % dimensioni (righe/colonne/...) di A (sia per vettori che per matrici)
pause;
length(B) % lunghezza del vettore B
pause;
sum(A) % somma di un vettore o delle colonne di una matrice
sum(B)
pause;
sum(sum(A)) % somma di una matrice
pause;
abs(A) % valore assoluto
pause
A = int8(A) % cast - help datatypes
whos A % tipo della variabile
A = [A; 1 5 -2] % aggiunta di una riga
pause;
A = double([A (2:5)']) % aggiunta di una colonna e cast a double
whos A
E =  [5*rand -3*rand]
pause;
floor(E) % arrotondamento all'intero precedente
ceil(E) % arrotondamento all'intero successivo
round(E) % arrotondamento all'intero piu' vicino
mod(E,1) % resto della divisione
pause;

%disegno un sin
t = -10:.1:10;
x = 5*(sin(t).^2)+1; % x(t) = 1+5sen^2(t)

%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

%segnale rect
passo = 0.1;
%definisco il tempo
t = -10:passo:10;
% definisco i valori i-esimi della funzione
x = zeros(size(t));
for i = 1:length(t)
	if t(i) > -0.5 && t(i) < 0.5
		x(i) = 1;
	elseif t(i) == -0.5 || t(i) == 0.5
		x(i) = 0.5;
	end
end

% infine, chiamo la funzione rect.m per disegnare un rettangolo

clear;
t = -10:0.1:10;
y = rect(t);
plot(t, y, 'g');

% da completare aggiungendo tri.m e gradino.m