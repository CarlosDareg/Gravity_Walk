void tutorial()
{
  textSize(30);
  fill(#0311FF,90);
  text("Utiliza las teclas A y D para mover al personaje",10,50);
  text("La tecla W te ayudara a invertir la gravedad",10,100);
  text("La tecla S te ayudara a regresar la gravedad",10,150);
  
  text("Intenta llegar a la meta",250,400);
  
  pp_1.move(0,height/2);
  pp_2.move(800,height/2);
  pp_3.move(width/2,0);
  pp_4.move(width/2,600);
  
  pp_1.display();
  pp_2.display();
  pp_3.display();
  pp_4.display();
  pp2.display();
  
  meta(400,320,35);
  
  heroe.display();
  heroe.reinicio(400,290);
  heroe.goal(390,410,310,330,600,100);
}

void stage1()
{  
  pp_1.move(200,180);
  pp_2.move(5000,100);
  pp_3.move(2000,-200);
  pp_4.move(2000,-200);
  
  pp2.move(600,150);
  pp3.move(350,500);
  pp4.move(100,150);
  pp5.move(100,500);
  
  
  pp_1.display();
  pp2.display();
  pp3.display();
  pp4.display();
  pp5.display();
  
  meta(75,125,35);
  
  heroe.display();
  heroe.reinicio(600,100);
  heroe.goal(55,105,100,150,250,140);
}

void stage2()
{ 
  pp2.move(250,150);
  pp3.move(450,550);
  pp4.move(150,450);
  pp5.move(150,150);
  pp6.move(450,200);
  pp7.move(700,350);
  
  pp_1.display();
  pp2.display();
  pp3.display();
  pp4.display();
  pp5.display();
  pp6.display();
  pp7.display();
  
  meta(150,125,35);
  tr(200,200,700,500);
  tr(0,0,70,600);
  
  heroe.display();
  heroe.reinicio(250,140);
  heroe.trampa(200,700,183,500,250,140);
  heroe.trampa(0,70,0,600,250,140);
  heroe.goal(125,175,100,150,750,95);
  
}

void stage3()
{
  pp_1.move(1000,-100);
  pp_3.move(600,100);
  pp2.move(250,500);
  pp3.move(450,500);
  pp4.move(1000,0);
  pp5.move(1000,0);
  pp6.move(1000,0);
  pp7.move(700,150);
  pp8.move(700,350);
  pp9.move(120,300);
  
  
  pp_3.display();
  pp2.display();
  pp3.display();
  pp7.display();
  pp8.display();
  pp9.display();
  
  meta(750,125,35);
  tr(120,102,700,498);
  
  heroe.display();
  heroe.reinicio(750,85);
  heroe.trampa(120,698,102,498,750,85);
  heroe.goal(725,775,100,150,750,85);
 
  // añadir pelotas matonas
  p1.display();
  p1.dir(0,30);
  p1.reinicio(50,500);
  
  p2.display();
  p2.dir(0,-30);
  p2.reinicio(350,300);
  
  p3.display();
  p3.dir(0,-30);
  p3.reinicio(550,300);
  
  p4.display();
  p4.dir(30,0);
  p4.reinicio(600,250);
  
}

void stage4()
{
  pp_1.move(600,100);
  pp_3.move(5000,-1000);
  pp2.move(450,500);
  pp3.move(650,500);
  pp4.move(1000,0);
  pp5.move(1000,0);
  pp6.move(1000,0);
  pp7.move(500,450);
  pp8.move(500,650);
  pp9.move(247,500);
  
  
  pp_1.display();
  pp2.display();
  pp3.display();
  pp7.display();
  pp8.display();
  pp9.display();
  
  meta(75,550,35);
  
  tr(500,390,600,400);
  tr(350,400,500,500);
  tr(120,400,245,600);
  
  
  heroe.display();
  heroe.reinicio(750,85);
  heroe.trampa(500,600,390,400,750,85);
  heroe.trampa(350,500,400,500,750,85);
  heroe.trampa(120,245,400,600,750,85);
  heroe.goal(50,150,525,575,400,290);
 
  // añadir pelotas matonas
  p1.display();
  p1.dir(0,100);
  p1.reinicio(100,500);
  
  p2.display();
  p2.dir(0,-50);
  p2.reinicio(350,300);
  
  p3.display();
  p3.dir(0,-50);
  p3.reinicio(550,300);
  
  p4.display();
  p4.dir(50,0);
  p4.reinicio(600,250);
  
}

void stage5()
{
  p4.reinicio(300,550);
  p3.reinicio(500,550);
  
  pp_1.move(1000,-100);
  pp2.move(400,300);
  pp3.move(400,595);
  pp7.move(1000,100);
  pp8.move(1000,100);
  pp9.move(1000,100);
  
  pp2.display();
  pp3.display();
  
  heroe.display();
  heroe.reinicio(400,290);
  
  p4.display();
  p4.dir(70,0);
  p4.reinicio(300,550);
  
  p3.display();
  p3.dir(-70,0);
  p3.reinicio(500,550);
  
  p5.display();
  p5.dir(0,-30);
  p5.reinicio(400,0);
  
  p6.display();
  p6.dir(70,0);
  p6.reinicio(400,400);
  
  p7.display();
  p7.dir(-70,0);
  p7.reinicio(400,400);
  
  meta(400,580,35);
  
  
  heroe.goal(390,410,580,600,-10,-10);
  
}

void inicio()
{
  textSize(50);
  fill(random(255),random(255),random(255));
  text("Gravity Walk",250,200);
  fill(255);
  textSize(20);
  text("Presiona Enter para continuar",250,400);
  
}

void instrucciones()
{
  textSize(20);
  fill(0);
  text("Hola, estas atrapado en la Matrix.",10,20);
  text("La unica forma de escapar es pasando por los 5 niveles que te atrapan.",10,50);
  text("Para ello debes entrar en las puertas verdes",10,80);
  text("Se que tienes muchas dudas pero no hay tiempo para responder.",10,300);
  text("Te esperan muchos obstaculos, suerte.",10,320);
  text("Cambia la pista de audio con las teclas 7,8,9,0",10,400);
  fill(random(255),random(255),random(255));
  text("Presiona Enter para continuar",280,500);
  
  fill(0,255,0);
  rect(400,200,50,50);
  
}

void fin()
{
  background(#057103,90);
  textSize(50);
  fill(random(255),random(255),random(255));
  text("Felicidades",280,100);
  fill(255);
  text("Lograste salir de la matrix",100,250);
  text(":D",380,350);
  textSize(20);
  text("¿Deseas volver a jugar?",300,450);
  fill(random(255),random(255),random(255));
  text("Y/N",400,500);
  
  if(keyPressed)
  {
    if(key =='y'|| key == 'Y')
    {
      sel = 2;
    }
    
    if(key == 'n' || key == 'N')
    {
      exit();
    }
  }
}
