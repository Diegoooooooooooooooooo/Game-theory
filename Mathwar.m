clear all
clc 
canti=100;
estr=8; %n�mero de estrategias que creemos
implay('intro.mp4')
D=input('N�mero total de jugadores que van a participar= ');
while D<=1|D>5
    disp('N�mero no v�lido.')
    if D>4
        disp('El n�mero total de participantes no puede ser mayor que 5')
    end
    D=input('N�mero total de jugadores que van a participar= ');
end
N=input('Jugadores reales que van a participar= ');
while N>D
    disp('N�mero no v�lido.')
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
xd(1)="Donald Trump decide declararle la guerra a Albacete.";
xd(2)="En respuesta a los ataques recibidos, Coca-Cola decide fabricar su propia bomba de hidr�geno.";
xd(3)="Espa�a decide utilizar las ingentes cantidades de queso fabricadas a lo largo de 2 a�os como escudo antimisiles.";
xd(4)="Rusia negocia con China la compra de poblaci�n infectada con coronavirus como arma biol�gica.";
xd(5)="La Atl�ntida entra a la guerra y se posicina a favor de los terraplanistas.";
xd(6)="Descontento en Alemania por no ser los causantes de la guerra.";
xd(7)="El desafortunado comunicado de Francia <<no hay huevos>> provoca la entrada de Espa�a en la guerra con la declaraci�n de <<Portugal, suj�tame el cubata que voy>>.";
xd(8)="La OMS recomienda ignorar sus advertencias alimenticias y disfrutar de lo poco que le queda de vida a la humanidad.";
xd(9)="Bin Laden entra de forma p�stuma en la quiniela del Premio Nobel de la Paz";
xd(10)="Santiago Abascal y otros l�deres de Vox aprovechan el estallido de la guerra para invadir el pe��n de Gibraltar.";
xd(11)="Francia recluta al virus del resfriado com�n para contrarrestar el peso del coronavirus chino.";
xd(12)="Suiza se ofrece para guardar las reservas mundiales de oro alegando que <<luego llorar�is si se os pierden>>.";
xd(13)="China anuncia que s�lo utilizar� la mitad de sus soldados los primeros dos a�os de guerra para darle un poco de ventaja al resto.";
xd(14)="Gooooogle se ve obligado a ceder algunas de su <<o>> por el racionamiento de la guerra.";
xd(15)="Mathworks es clausurado por la creaci�n de un programa que simula la toma de decisiones de pa�ses en la guerra.";
xd(16)="Espa�a decide comenzar otra guerra civil como excusa para no entrar en la guerra mundial.";
xd(17)="Pedro S�nchez dice: <<La guerra no toca en esta legislatura...>>.";
xd(18)="El favorito para ganar la nueva modalidad de tiro de bomba at�mica en los Juegos Ol�mpicos es el competidor de Corea del Norte.";
xd(19)="La poblaci�n de Dub�i dice notar la escasez propia de la guerra: <<Ya hace como 2 horas que no como langosta porque apenas me queda dinero para la gasolina del yate.>>";
xd(20)="El neodarwinismo se encuentra contrariado ante la aparici�n de una nueva especie al aparearse un confuso pez con un torpedo: <<A ver si al final va a ser mentira lo de la evoluci�n...>>.";
xd(21)="Expertos predicen la inminente derrota de los terraplanistas, ya que seg�n sus creencias los GPS son imposibles y se niegan a utilizarlos.";
xd(22)="Sarah Connor muere por el coronavirus, <<Ya es definitivo, las m�quinas van a ganar.>> sentencia el secretario general de la ONU.";
xd(23)="Efectos de la guerra en Australia: manifestaciones por parte de los koalas por el racionamiento del eucalipto.";
xd(24)="Numerosos intentos de soborno a los guionistas de Los Simpson por la creencia popular de que los episodios de la serie condicionar�n el resultado de la guerra.";
xd(25)="Las bajas estadounidenses se multiplican por el uso indiscriminado de la homeopat�a como cura de los miembros amputados ante el lema <<eso crece ech�ndole agua>>.";
xd(26)="El ej�rcito espa�ol anuncia la elecci�n de <<ESTEFAN�AAAAAAAAAAA>> como grito de guerra.";
xd(27)="Iker Jim�nez se queja ante el ej�rcito illuminati formado por reptilianos: <<Si a m� no me dejan utilizar fantasmas, ellos no deber�an poder usar ovnis.>>";
xd(28)="Jordi Hurtado es nombrado consejero del ministro de Defensa por su �xito en las campa�as del territorio Ib�rico durante las Guerras P�nicas.";
xd(29)="Los recortes de la guerra provocan que la India venda 15000 de sus dioses, ahora s�lo les quedan 40000 a los que rezar.";
xd(30)="Italia renuncia al uso del 0 y recupera los n�meros romanos ante la subida del precio de los n�meros �rabes.";
xd(31)="Duras declaraciones por parte de la comunidad morse: <<.--- --- ... . / .- .--. .-. ..- . -... .- -. --- ... .-.-.>>.";
xd(32)="La decisi�n de los ingenieros de aproximar el n�mero <<e>> a 3 para aligerar tiempos de producci�n provoca la creaci�n de tanques defectuosos.";
xd(33)="La comunidad cient�fica reconoce que <<pi>> siempre ha sido exactamente 3, ya que consideran que con la guerra ya no est�n para tonter�as como calcular decimales.";
xd(34)="China ejecuta la orden 66 y todos los propietarios de bazares chinos atacan los supermercados tradicionales.";
xd(35)="Estados Unidos no termina de decidir su posici�n respecto a Alemania por temor a una bronca de <<la Merkel>>.";
xd(36)="Grecia, ante su inevitable derrota, env�a 300 soldados semidesnudos hacia las Term�pilas porque <<esta vez no conseguir�n rodearnos>>.";
xd(37)="<<Ojal� contar con m�s presupuesto para ayudar a los heridos...>> declaraba con aflicci�n el Papa bajando la ventanilla de su ferrari esta ma�ana.";
xd(38)="El ej�rcito espa�ol ha concluido que aquellos soldados con experiencia en Glovo no necesitar�n superar las pruebas f�sicas: <<Tanto correr al final sirvi� de algo.>>. ";
xd(39)="Los soldados espa�oles reciben clases por parte de Albert Rivera para aprender a desaparecer de un momento a otro con el uso de la frase <<�Oyen eso?, es el silencio...>>.";
xd(40)="Ante la escasez de misiles Espa�a comienza a emplear adoquines catalanes como arma arrojadiza.";
xd(41)="Los soldados de la guardia suiza se pasean con mecheros en alto por orden de la Iglesia en un intento de quemar el wifi y evitar as� la divulgaci�n de ideas herejes.";
xd(42)="Maduro anuncia que, a causa de la guerra y para recortar gastos, en las pr�ximas elecciones s�lo habr� una urna, la cual estar� en su casa y ser� de uso propio.";
xd(43)="Atenas proclama que lo de la democracia era un experimento social, <<a ver qu� pasaba>>, pero que han llegado a la conclusi�n de que no funciona.";
xd(44)="LA ONU denuncia que el CERN es en realidad una m�quina para crear bombas de antimateria y suplica <<Otro proyecto Manhattan NO, por favor.>>.";
xd(45)="Surge una nueva rama dentro de los terraplanistas que niega la existencia de la f�sica cu�ntica y asegura que <<Eso no se lo creen ni ellos, ah� est�n tramando algo.>>.";
xd(46)="La nueva coalici�n entre terraplanistas, home�patas, antivacunas, reptilianos y zurdos hace una demostraci�n de su poder destapando que el movimiento vegetariano comenz� por al�rgicos c�rnicos negacionistas.";
xd(47)="Donald Trump, <<Padre de Muros>>, <<el que no tributa>>, reclama el Trono de Hierro.";
xd(48)="Superman recibe numerosas propuestas de reclutamiento por parte de diferentes pa�ses tras darse de baja de la Liga de la justicia.";
xd(49)="Bel�n Esteban, nombrada comandante suprema del Ej�rcito de Espa�a por petici�n popular.";
xd(50)="La p�rdida de vegetaci�n por culpa de las explosiones provoca que los veganos comiencen a filtrar el aire, mientras perfeccionan la fotos�ntesis.";
xd(51)="El alcalde Almedida confiesa que mantuvo la contaminaci�n en Madrid para inmunizar a los habitantes en caso del uso de gas mostaza del enemigo.";
xd(52)="El gobierno recomienda urgar en los sof�s para paliar la crisis econ�mica con <<los centimillos p�rdidos entre los cojines.>>.";
xd(53)="Greta Thunberg pillada cazando osos polares con un abrigo de zorro �rtico usando el lema de <<En la guerra todo vale.>>.";
xd(54)="Google prev� un ciberataque a Mathwrks&%/(/&%$�$�(%%&!";
xd(55)="Iberdrola avisa de que a partir de ahora el Sol saldr� m�s tarde para ahorrar luz.";
xd(56)="Irlanda centra sus esfuerzos en encontrar el caldero de oro al final del arcoiris par paliar la escasez econ�mica";
A=numel(xd); %n�mero de frases
for kl=1:N
      disp('Para introducir el nombre que quer�is tener deb�is entrecomillarlo (")')
      k=['Nombre del jugador ',num2str(kl),': '];
      ju=input(k);
      jug(kl)=ju;
end
   %estrategia que va a jugar
  if N~=D 
  for kl=1:M
     if c(kl)==1
         k="Espa�a";
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
         k="Sud�frica";
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
     j=input('Pulsa cualquier n�mero para comenzar el juego. ');
     clc
  end
%comienza el juego
while sum(sum(n))~=10*D&cant>0
 %primera decisi�n
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
i=input('Opci�n escogida: ');
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
%ya est� hecho el reparto inicial, comienza el juego
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
    disp('�ltimas noticias:')
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
  j=input('Pulsa cualquier n�mero para que comience la ronda. ');
  clc
%fin de las frases
if D==2
    disp('Comod�n 1: ver la cantidad de monedas de ambos.')
else
    disp('Comod�n 1: ver la cantidad de monedas que alguien tiene.')
end
    disp('Comod�n 2: intercambiar la cantidad de monedas.')
    disp('Comod�n 3: ver la �ltima decisi�n de uno de tus oponentes.')
    disp('Comod�n 4: la �nica decisi�n llevada a cabo ser� la tuya.')
    disp('�Quieres alg�n comod�n?')
    g=input('Si quieres usar alguno, pulsa 1, si no pulsa 0: ');
    while g~=1&g~=0
        disp('Ese n�mero no es v�lido.')
        g=input('Si quieres usar alguno, pulsa 1, si no pulsa 0: ');
    end
    if g==1
       h=input('Comod�n n�mero ');
       while h~=1&h~=2&h~=3&h~=4
            disp('Ese n�mero no es v�lido.')
            h=input('Comod�n n�mero ');
       end
       while hd(k,h)~=0&h~5
            disp('Ya hab�as usado ese comod�n.')
            disp('Si ya no quieres ning�n comod�n, pulsa 0:')
            h=input('Comod�n n�mero ');
            if h==0
                h=5;
            end
            while h~=1&h~=2&h~=3&h~=4&h~=5
            disp('Ese n�mero no es v�lido.')
            h=input('Comod�n n�mero ');
            end
       end
       while w~=0&h==4
           disp('Comod�n no disponible.')
           h=input('Comod�n n�mero ');
            while h~=1&h~=2&h~=3&h~=4&h~=0
            disp('Ese n�mero no es v�lido.')
            h=input('Comod�n n�mero ');
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
             i=input('Escoge de qu� jugador: ');
             cfg=cant(i);
             disp(cfg)
               end
           end
           if h==2 %comodin 2
              if D~=2
             nombres=[linspace(1,D,D)',jug']; 
             disp (nombres)
             i=input('Escoge con qu� jugador lo quieres intercambiar: ');
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
             i=input('Escoge de qu� jugador: ');
            end
             if f(i)==1
                 r='no hacer nada.';
            end
            if f(i)==2
                r='quitarte 5 monedas sin llevars�las.';
            end
            if f(i)==3
                r='quitarte 10 monedas.';
            end
        disp(['La �ltima decisi�n de ',num2str(jug(i)),' fue ', r])
        end 
        if h==4 %comodin 4
        w(k)=1;
        end
       end
        l=input('Cuando quieras continuar pulsa cualquier n�mero: ');
    clc
    disp([num2str(jug(k)),': '])
    disp('1- No hacer nada.')
    disp('2- Quitarle 5 monedas a cada oponente, pero no te las llevas t�.')
    disp('3- Quitarle 10 monedas a cada oponente y llevarte t� 10.')
    f(k)=input('Opci�n escogida: ');
    while f(k)~=1&f(k)~=2&f(k)~=3
        disp('N�mero no v�lido.')
        f(k)=input('Opci�n escogida: ');
    end
    %decision de los jugadores reales
    i=f(k);
    %para que no escojan lo mismo m�s de dos veces seguidas
    while d(k,i)==2
       disp('No puedes escoger lo mismo m�s de dos veces seguidas.')
       f(k)=input('Opci�n escogida: ');
       while f(k)~=1&f(k)~=2&f(k)~=3
        disp('N�mero no v�lido.')
        f(k)=input('Opci�n escogida: ');
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

%jugadores de m�quina
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
    disp('Pero, como os dijimos, no ser ego�sta tiene sus ventajas: ')
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
    disp(['Como ',num2str(jug(k)),' ha llegado a 0, todos perd�is :�('])
    else
     disp(['Como muchos de vostoros hab�is llegado a 0, todos perd�is :�('])   
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
%datos para s�lo estrategias
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
                    textm(lat,lon,'Espa�a','Color','blue','FontSize',12)
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
                    textm(lat,lon,'Sud�frica','Color','blue','FontSize',12)
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
txt=["Gracias por vuestra participaci�n";"Desarrolladores";"Esther Men�ndez Ib��ez";"Diego A. Moreno Ramos"];
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
%Se convocan elecciones cada d�a, no se toman decisiones.
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
% Los conflictos favorecen su econom�a.
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
% Defender� sus intereses a toda costa, pero intentar� no provocar
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
%Proteccionista, ataques t�cticos.
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
%Extremadamente belicoso, dispara primero pregunta despu�s.
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
%Comercio fuerte, intentar� evitar el conflicto.
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
%Atacar� moderadamente.
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