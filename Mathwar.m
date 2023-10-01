clear all
clc 
canti=100;
estr=8; %número de estrategias que creemos
implay('intro.mp4')
D=input('Número total de jugadores que van a participar= ');
while D<=1|D>5
    disp('Número no válido.')
    if D>4
        disp('El número total de participantes no puede ser mayor que 5')
    end
    D=input('Número total de jugadores que van a participar= ');
end
N=input('Jugadores reales que van a participar= ');
while N>D
    disp('Número no válido.')
    N=input('Jugadores reales que van a participar= ');
end
w=zeros(1,D);
if D==2
    ppo=7;
end
if D==3
    ppo=4;
end
if D==4
    ppo=2;
end
if D==5
    ppo=2;
end
M=D-N;
s=150;
hd=zeros(D,5);
n=zeros(D,3);
d=zeros(D,3);
cant=zeros(1,D);
cant(1,:)=1;
f=zeros(1,D);
c=zeros(1,M);
if M>0
c(1)=ceil(rand*estr);
for k=2:M
    c(k)=ceil(rand*estr);
    while c(k)==c(k-1)
        c(k)=ceil(rand*estr);
    end
end
end

for kl=1:N
      disp('Para introducir el nombre que queráis tener debéis entrecomillarlo (")')
      k=['Nombre del jugador ',num2str(kl),': '];
      ju=input(k);
      jug(kl)=ju;
end
   %estrategia que va a jugar
  if N~=D 
  for kl=1:M
     if c(kl)==1
         k="España";
     end
     if c(kl)==2
         k="Estados Unidos";
     end
     if c(kl)==3
         k="Australia";
     end
     if c(kl)==4
         k="Rusia";
     end
     if c(kl)==5
         k="China";
     end
     if c(kl)==6
         k="Sudáfrica";
     end
     if c(kl)==7
         k="Venezuela";
     end
     if c(kl)==8
         k="Alemania";
     end
     klk=num2str(k);
     disp([klk,' te ha declarado la guerra.'])
     jug(N+kl)=k;
 end
     j=input('Pulsa cualquier número para comenzar el juego. ');
     clc
  end
%comienza el juego
while sum(sum(n))~=10*D&cant>0
 %primera decisión
if sum(sum(n))==0
clc
 for k=1:N
     disp('Ronda 1')
disp([num2str(jug(k)),': decide el modo de repartir los 100.'])
if D~=2
disp('1- Equitativamente.')
disp('2- 40% para ti y el resto equitativamente.')
disp('3- 50% para ti y el resto equitativamente.')
else 
disp('1- Equitativamente.')
disp('2- 60% para ti.')
disp('3- 80% para ti.')
end
i=input('Opción escogida: ');
f(k)=i;
n(k,i)=n(k,i)+1;
clc
 end
 for k=1:M
     [p] = llamar_jugador(c(k),n);
     f(k+N)=p;
     n(N+1,p)=n(N+1,p)+1;
 end
 o=ceil(rand*D); %la persona que decide
 p=f(o);
 if p==1
     cant(1:D)=canti/D;
 end
 if p==2
     if D~=2
     cant(1:D)=(0.6*canti)/D;
     cant(o)=0.4*canti;
     else
      cant(1:D)=0.4*canti;
     cant(o)=0.6*canti;   
     end
 end
 if p==3
     if D~=2
     cant(1:D)=canti/(2*D);
     cant(o)=0.5*canti;
     else
     cant(1:D)=0.2*canti;
     cant(o)=0.8*canti;
     end
 end
end
%ya está hecho el reparto inicial, comienza el juego
clc
 for k=1:N %para las personas reales
    %frases
    clc
    if mod(sum(sum(n)),D)==0
        R=sum(sum(n))/D;
    end
    disp(['Ronda ', num2str(R+1)])
    disp(['Turno de ',num2str(jug(k))])
    o=ceil(rand*A);
    disp('Últimas noticias:')
    if numel(num2str(xd(o)))>s
    xo=num2str(xd(o));
     while xo(s)~=' '
     s=s-1;
     end
     xo1=xo(1:s);
     disp(xo1)
     xo2=xo(s+1:numel(xo));
     disp(xo2)
    else
    disp(xd(o)) 
    end
  j=input('Pulsa cualquier número para que comience la ronda. ');
  clc
%fin de las frases
if D==2
    disp('Comodín 1: ver la cantidad de monedas de ambos.')
else
    disp('Comodín 1: ver la cantidad de monedas que alguien tiene.')
end
    disp('Comodín 2: intercambiar la cantidad de monedas.')
    disp('Comodín 3: ver la última decisión de uno de tus oponentes.')
    disp('Comodín 4: la única decisión llevada a cabo será la tuya.')
    disp('¿Quieres algún comodín?')
    g=input('Si quieres usar alguno, pulsa 1, si no pulsa 0: ');
    while g~=1&g~=0
        disp('Ese número no es válido.')
        g=input('Si quieres usar alguno, pulsa 1, si no pulsa 0: ');
    end
    if g==1
       h=input('Comodín número ');
       while h~=1&h~=2&h~=3&h~=4
            disp('Ese número no es válido.')
            h=input('Comodín número ');
       end
       while hd(k,h)~=0&h~5
            disp('Ya habías usado ese comodín.')
            disp('Si ya no quieres ningún comodín, pulsa 0:')
            h=input('Comodín número ');
            if h==0
                h=5;
            end
            while h~=1&h~=2&h~=3&h~=4&h~=5
            disp('Ese número no es válido.')
            h=input('Comodín número ');
            end
       end
       while w~=0&h==4
           disp('Comodín no disponible.')
           h=input('Comodín número ');
            while h~=1&h~=2&h~=3&h~=4&h~=0
            disp('Ese número no es válido.')
            h=input('Comodín número ');
            end
       end
       end
       %recuento de comodines usados
       if g==1
           if h~=0
           hd(k,h)=hd(k,h)+1; 
           end
           %comodines
           if h==1 %comodin 1
               if D==2
                disp(num2str(cant))
               else
             nombres=[linspace(1,D,D)',jug'];  
             disp (nombres)
             i=input('Escoge de qué jugador: ');
             cfg=cant(i);
             disp(cfg)
               end
           end
           if h==2 %comodin 2
              if D~=2
             nombres=[linspace(1,D,D)',jug']; 
             disp (nombres)
             i=input('Escoge con qué jugador lo quieres intercambiar: ');
                 else
                 if k==1
                    i=2;
                else
                    i=1;
                end
             end
             x=[cant(k),cant(i)];
             cant(k)=x(2);
             cant(i)=x(1);
          end
        if h==3 %comodin 3
            if D==2
                if k==1
                    i=2;
                else
                    i=1;
                end
            else
              nombres=[linspace(1,D,D)',jug']; 
             disp (nombres)
             i=input('Escoge de qué jugador: ');
            end
             if f(i)==1
                 r='no hacer nada.';
            end
            if f(i)==2
                r='quitarte 5 monedas sin llevarsélas.';
            end
            if f(i)==3
                r='quitarte 10 monedas.';
            end
        disp(['La última decisión de ',num2str(jug(i)),' fue ', r])
        end 
        if h==4 %comodin 4
        w(k)=1;
        end
       end
        l=input('Cuando quieras continuar pulsa cualquier número: ');
    clc
    disp([num2str(jug(k)),': '])
    disp('1- No hacer nada.')
    disp('2- Quitarle 5 monedas a cada oponente, pero no te las llevas tú.')
    disp('3- Quitarle 10 monedas a cada oponente y llevarte tú 10.')
    f(k)=input('Opción escogida: ');
    while f(k)~=1&f(k)~=2&f(k)~=3
        disp('Número no válido.')
        f(k)=input('Opción escogida: ');
    end
    %decision de los jugadores reales
    i=f(k);
    %para que no escojan lo mismo más de dos veces seguidas
    while d(k,i)==2
       disp('No puedes escoger lo mismo más de dos veces seguidas.')
       f(k)=input('Opción escogida: ');
       while f(k)~=1&f(k)~=2&f(k)~=3
        disp('Número no válido.')
        f(k)=input('Opción escogida: ');
       end
       i=f(k);
    end
    d(k,i)=d(k,i)+1;
    if i==1
        d(k,2:3)=0;
    end
    if i==2
        d(k,1)=0;
        d(k,3)=0;
    end
    if i==3
        d(k,1:2)=0;
    end
    %recuento de decisiones
    n(k,i)=n(k,i)+1; 
 end

%jugadores de máquina
for k=1:M
    [p] = llamar_jugador(c(k),n);
    f(N+k)=p;
    while d(N+k,p)==2
    [p] = llamar_jugador(c(k),n);
    f(N+k)=p;
    end
    d(N+k,p)=d(N+k,p)+1;
    if p==1
        d(N+k,2:3)=0;
    end
    if p==2
        d(N+k,1)=0;
        d(N+k,3)=0;
    end
    if p==3
        d(N+k,1:2)=0;
    end
    n(N+k,p)=n(N+k,p)+1;
end
%consecuencias de las decisiones en funcion del comodin 4
if w==0
for k=1:D
    if f(k)==2
        cant=cant-5;
        cant(k)=cant(k)+5;
    end
    if f(k)==3
        cant=cant-10;
        cant(k)=cant(k)+20;
    end
end
else %alguien ha usado comodin 4
  i=find(w==1); 
  if f(i)==2
        cant=cant-5;
        cant(k)=cant(k)+5;
    end
    if f(i)==3
        cant=cant-10;
        cant(k)=cant(k)+20;
    end
end
ronda=sum(sum(n))/D;
CANT(ronda,:)=cant;
end
%se acaba el juego
clc
disp('Fin del juego.')
if cant>0 %ninguno ha llegado a 0
    asfd=1;
    for k=1:D
    disp(['Dinero de ',num2str(jug(k)),'= ',num2str(cant(k))])
    end
    disp('Pero, como os dijimos, no ser egoísta tiene sus ventajas: ')
    for k=1:D
    cant(k)=cant(k)+(sum(cant)-cant(k))*n(k,1)/(2*D);
    disp(['Dinero final de ', num2str(jug(k)),'= ',num2str(cant(k))])
    end
    i=find(cant==max(cant)); %persona que ha ganado
    disp(['Enhorabuena ', num2str(jug(i))])
else %uno de ellos ha llegado a 0
    asfd=0;
    k=find(cant<=0);
     i=find(cant==max(cant)); %persona que ha ganado
    if numel(k)==1
    disp(['Como ',num2str(jug(k)),' ha llegado a 0, todos perdéis :´('])
    else
     disp(['Como muchos de vostoros habéis llegado a 0, todos perdéis :´('])   
    end
end
datos=n(1:N,:);
save -ascii -append decisiones_reales.dat datos
%if asfd==1 %ninguno ha llegado a 0
if i<=N
ganar=n(1:N,i);
save -ascii -append ganar.dat ganar
else %ganador virtual
e=i-N;
c3po=[c(e),D];
save -ascii -append ganarf.dat c3po
end
%end
if N~=0
    jug2=jug(1:N);
save -ascii -append nombres.dat jug2
end
%datos para sólo estrategias
%mapa
for r=2:ronda %para las rondas
    figure('units','normalized','outerposition',[0,0,1,1],'Color',[.95 .9 .8]);
     txt=['Transcurso de la guerra. Ronda ',num2str(r-1)];
    title(txt,'FontSize',20)
    worldmap world
    load coastlines
    [latcells, loncells] = polysplit(coastlat, coastlon);
    numel(latcells);
    plotm(coastlat, coastlon)
    geoshow('landareas.shp','FaceColor','green')
    geoshow('worldlakes.shp','FaceColor','cyan')
    for n=1:M %para las estrategias
        l=c(n); %numero de estrategia
            if l==1
               
                    lat=40;
                    lon=-13;
                    textm(lat,lon,'España','Color','blue','FontSize',12)
                    textm(lat-6,lon+5,num2str(CANT(r,n)),'Color','red','FontSize',12)
                    textm(lat-11,lon+5,'\heartsuit','Color','red','FontSize',12)
              
            end
            if l==3
         
                    lat=-25;
                    lon=120;
                    textm(lat,lon,'Australia','Color','blue','FontSize',12)
                    textm(lat-6,lon+5,num2str(CANT(r,n)),'Color','red','FontSize',12)
                    textm(lat-11,lon+5,'\heartsuit','Color','red','FontSize',12)
                        
            end
            if l==2
               
                    lat=38;
                    lon=-117;
                    textm(lat,lon,'Estados Unidos','Color','blue','FontSize',12)
                    textm(lat-6,lon+5,num2str(CANT(r,n)),'Color','red','FontSize',12)
                    textm(lat-11,lon+5,'\heartsuit','Color','red','FontSize',12)
              
            end
        if l==4
            
                    lat=60;
                    lon=80;
                    textm(lat,lon,'Rusia','Color','blue','FontSize',12)
                    textm(lat-6,lon+5,num2str(CANT(r,n)),'Color','red','FontSize',12)
                    textm(lat-11,lon+5,'\heartsuit','Color','red','FontSize',12)
           
        end
        if l==5
            
                    lat=30;
                    lon=100;
                    textm(lat,lon,'China','Color','blue','FontSize',12)
                    textm(lat-6,lon+5,num2str(CANT(r,n)),'Color','red','FontSize',12)
                    textm(lat-11,lon+5,'\heartsuit','Color','red','FontSize',12)
           
        end
        if l==6
           
                    lat=-25;
                    lon=15;
                    textm(lat,lon,'Sudáfrica','Color','blue','FontSize',12)
                    textm(lat-6,lon+5,num2str(CANT(r,n)),'Color','red','FontSize',12)
                    textm(lat-11,lon+5,'\heartsuit','Color','red','FontSize',12)
           
        end
        if l==7
            
                    lat=8;
                    lon=-77;
                    textm(lat,lon,'Venezuela','Color','blue','FontSize',12)
                    textm(lat-6,lon+5,num2str(CANT(r,n)),'Color','red','FontSize',12)
                    textm(lat-11,lon+5,'\heartsuit','Color','red','FontSize',12)
           
        end
        if l==8
            
                    lat=53;
                    lon=7;
                    textm(lat,lon,'Alemania','Color','blue','FontSize',12)
                    textm(lat-6,lon+5,num2str(CANT(r,n)),'Color','red','FontSize',12)
                    textm(lat-11,lon+5,'\heartsuit','Color','red','FontSize',12)
            
        end
    end %fin de bucle de etrategia
    pause(0.5)
end %fin de bucle de ronda
G=10^2;
for n=1:G+50
xv=linspace(0,0);
yv=linspace(0,0);
figure(11)
plot(xv,yv)
axis([0,G,0,G]);
txt=["Gracias por vuestra participación";"Desarrolladores";"Esther Menéndez Ibáñez";"Diego A. Moreno Ramos"];
text(30,n,txt,'FontSize', 20)
pause(0.05)
hold off
end
function [f,g] = llamar_jugador(c,n)
g=0;
if c==1
    [f] = Spain(c);
end
if c==2
    [f] = Estados_Unidos(c);
end
if c==3
    [f] = Australia(c)
end
if c==4
    [f] = Rusia(c)
end
if c==5
    [f] = China(c)
end
if c==6
    [f] = Sudafrica(c)
end
if c==7
    [f] = Venezuela(c)
end
if c==8
    [f] = Alemania(c)
end
end
function [f] = Spain(a)
%Se convocan elecciones cada día, no se toman decisiones.
g=rand;
if g<=(1/3)
    f=1;
end
if g<=(2/3)&g>(1/3)
    f=2;
end
if g>(2/3)
    f=3;
end
end
function [f] = Estados_Unidos(a)
% Los conflictos favorecen su economía.
h=rand;
if h<=0.6
    f=3;
end
if h>0.6&h<=0.9
    f=2;
end
if h>0.9
    f=1;
end
end
function [f] = Australia(a)
% Defenderá sus intereses a toda costa, pero intentará no provocar
% conflictos.
r=rand;
if r<=(0.25)
    f=3;
end
if r>(0.25)& r<=(0.75)
    f=2;
end
if r>(0.75)
    f=1;
end
end
function [f] = Rusia(a)
%Proteccionista, ataques tácticos.
r=rand;
if r<=(0.5)
    f=3;
end
if r>(0.5)& r<=(0.85)
    f=2;
end
if r>(0.85)
    f=1;
end
end
function [f] = China(a)
%Extremadamente belicoso, dispara primero pregunta después.
r=rand;
if r<=(0.8)
    f=3;
end
if r>(0.8)& r<=(0.9)
    f=2;
end
if r>(0.9)
    f=1;

end
end
function [f] = Sudafrica(a)
%Comercio fuerte, intentará evitar el conflicto.
g=rand;
if g<=0.8
    f=1;
end
if g<=0.9&g>0.8
    f=2;
end
if g>0.9
    f=3;
end

end
function [f] = Venezuela(a)
%Poca capacidad de respuesta.
g=rand;
if g<=0.6
    f=1;
end
if g<=0.9&g>0.6
    f=2;
end
if g>0.9
    f=3;
end
end
function [f] = Alemania(a)
%Atacará moderadamente.
r=rand;
if r<=(0.4)
    f=3;
end
if r>(0.4)& r<=(0.8)
    f=2;
end
if r>(0.8)
    f=1;
end
end
