//tenutto lucila 93568/8
//comision 8
//tp 3 "cuento de navidad" ray bradbury

PImage imagenActual;
PFont titulos;
int [] cant = new int[12];
int numero0, numero1, numero2, numero3, numero4, numero5, numero6, numero7, numero8, numero9, numero10, numero11;
PImage pant0, pant1, pant2, pant3, pant4, pant5, pant6, pant7, pant8, pant9, pant10, pant11;
String[] listaTextos = {
  "La magia de la navidad",
  "Billy estaba ansiosa, este año iría con su familia a pasar las vísperas de navidad a lo de sus abuelos y tenían que viajar hasta La Ciudad Invierno",
  "Al llegar la niña saluda a sus abuelos y les dice: -Abuelos, ¿Por qué su casa no está decorada? - a lo que Ribor, su abuelo,  responde- no creo en esa tontería de la navidad, es una pérdida de tiempo",
  "Al escuchar esto, la niña decide hacer una carta llena de colores y pura energía navideña y entregársela a su abuelo, a lo que él reacciona de esta manera:",
  "Al recibir la carta de su nieta, Ribor la mira con curiosidad y:",
  "Se da cuenta de lo hermosamente decorada que está y le agradece por hacer que vuelva a creer en la magia de la navidad",
  "Sin decir una palabra, Ribor toma la carta y se dirige a su viejo ático, donde guarda todas las decoraciones navideñas que había acumulado a lo largo de los años. Juntos, Billy y Ribor decoran la casa con luces brillantes, guirnaldas y adornos, convirtiéndola en un lugar mágico. Desde ese día, el espíritu navideño renace en su hogar, y Ribor se convierte en un abuelo cariñoso y entusiasta de la Navidad",
  "Ribor se enoja y:",
  "Ante la respuesta de su abuelo, Billy siente una gran tristeza, pero no se rinde. Decide seguir con los festejos navideños con su familia",
  "Se rinde y decide no hacer nada navideño para que su abuelo no se fastidie.",
  "Billy, al escuchar la respuesta de su abuelo, siente una profunda tristeza, pero decide no dejar que eso arruine su espíritu navideño. La niña se dedica a explorar la ciudad y descubre un lugar secreto lleno de magia llamado El Bosque de Navidad. Allí, se encuentra con un grupo de duendes y hadas que le enseñan la verdadera esencia de la Navidad: la alegría de dar y compartir momentos especiales con sus seres queridos. De vuelta en casa, Ribor abraza la magia de la Navidad y festeja con su familia",
  "Créditos: Lucila Tenutto \n Autor: Ray Bradbury \n Comision: 1"
};  
int pantallaActual = 0;

void setup() {
  numero0 = 0;
  numero1 = 1;
  numero2 = 2;
  numero3 = 3;
  numero4 = 4;
  numero5 = 5;
  numero6 = 6;
  numero7 = 7;
  numero8 = 8;
  numero9 = 9;
  numero10 = 10;
  numero11 = 11;
  
  size(600, 600);
titulos = createFont("BerlinSansFB-Reg-48.vlw", 45);
textFont(titulos);
//createFont("BerlinSansFB-Reg.vlw",45);

textFont(titulos);
textAlign(CENTER, CENTER);
  
  pant0 = loadImage("image1.jpg");
  pant1 = loadImage("image2.jpg");
  pant2 = loadImage("image3.jpg");
  pant3 = loadImage("image4.jpg");
  pant4 = loadImage("image5.jpg");
  pant5 = loadImage("image6.jpg");
  pant6 = loadImage("image7.jpg");
  pant7 = loadImage("image8.jpg");
  pant8 = loadImage("image9.jpg");
  pant9 = loadImage("image10.jpg");
  pant10 = loadImage("image11.jpg");
  pant11 = loadImage("image12.jpg");
  

 imagenActual=getPantallaActualImage();
}
void draw() {
  // Muestra la imagen de la pantalla actual
  PImage imagenActual = getPantallaActualImage();
  image(imagenActual, 0, 0, width, height);

  // Ajusta el tamaño de texto y la fuente para la "pant1"
  if (pantallaActual == 0) {
    textSize(40);  // Ajusta el tamaño del texto
    textFont(titulos);  // Asigna la fuente
  } else {
    // Restaura el tamaño de texto y la fuente para las demás pantallas
    textSize(25);
    textFont(createFont("Arial", 25));
  }

  // Muestra el texto narrativo de la pantalla actual
  textAlign(CENTER);
  fill(255);
  text(listaTextos[pantallaActual], width / 2, height / 2);

  // Muestra el número de pantalla actual
  textSize(30);
  textAlign(CENTER);
  text((pantallaActual + 1), 15, 30);

  // Muestra los botones de acción según la pantalla actual
  mostrarBotonesAccion();
}


PImage getPantallaActualImage() {
  if (pantallaActual == 0) {
    return pant0;
  } else if (pantallaActual == 1) {
    return pant1;
  } else if (pantallaActual == 2) {
    return pant2;
  } else if (pantallaActual == 11) {
    return pant11;
  }

  // Si ninguna condición se cumple, puedes devolver un valor por defecto o lanzar una excepción
  throw new RuntimeException("Pantalla no encontrada: " + pantallaActual);
}


void mostrarBotonesAccion1() {
  if (pantallaActual == 0) {
    // Pantalla 1: botones de acción
    fill(27, 19, 124);
    rect(100, 100, 100, 50);
    rect(390, 100, 130, 50);
    fill(255);
    text("Inicio", 140, 130);
    text("Créditos", 450, 130);
  } else if (pantallaActual == 3) {
    // Pantalla 4: botones de acción
    fill(255);
    rect(100, 100, 100, 50);
    rect(300, 100, 100, 50);
    rect(500, 100, 100, 50);
    fill(0);
    text("1", 135, 130);
    text("2", 335, 130);
    text("3", 535, 130);
  } else if (pantallaActual == 4) {
    // Pantalla 5: botones de acción
    fill(255);
    rect(100, 100, 100, 50);
    rect(300, 100, 100, 50);
    fill(0);
    text("A", 135, 130);
    text("B", 335, 130);
  } else if (pantallaActual == 8) {
    // Pantalla 8: botones de acción
    fill(255);
    rect(100, 100, 100, 50);
    rect(300, 100, 100, 50);
    fill(0);
    text("A", 135, 130);
    text("B", 335, 130);
  }
}


void mousePressed() {
  // Verifica si el clic del mouse está dentro del rectángulo del botón de inicio
  if (pantallaActual == 0 && mouseX >= 100 && mouseX <= 200 && mouseY >= 100 && mouseY <= 150) {
    pantallaActual = 1;  // Cambia a la siguiente pantalla
  }

  if (pantallaActual == 0 && mouseX >= 390 && mouseX <= 520 && mouseY >= 100 && mouseY <= 150) {
    pantallaActual = 11;  // Cambia a la siguiente pantalla
    imagenActual = getPantallaActualImage();  // Actualiza la imagen actual
  }

  // Verifica si el clic del mouse está dentro del rectángulo del botón "1" en la pantalla 4
  if (pantallaActual == 4 && mouseX >= 100 && mouseX <= 200 && mouseY >= 100 && mouseY <= 150) {
    pantallaActual = 5;  // Cambia a la pantalla 5
  }
    imagenActual = getPantallaActualImage();

  
  // Verifica si el clic del mouse está dentro del rectángulo del botón "2" en la pantalla 4
  if (pantallaActual == 4 && mouseX >= 300 && mouseX <= 400 && mouseY >= 100 && mouseY <= 150) {
    pantallaActual = 8;  // Cambia a la pantalla 8
  }
    imagenActual = getPantallaActualImage();


  // Verifica si el clic del mouse está dentro del rectángulo del botón "3" en la pantalla 4
  if (pantallaActual == 4 && mouseX >= 500 && mouseX <= 600 && mouseY >= 100 && mouseY <= 150) {
    pantallaActual = 11;  // Cambia a la pantalla 11
  }
    imagenActual = getPantallaActualImage();

  if (pantallaActual == 1 && mouseX >= 480 && mouseX <= 570 && mouseY >= 520 && mouseY <= 550) {
    pantallaActual = 2;  // Cambia a la pantalla 2
  }
    imagenActual = getPantallaActualImage();


  // Verifica si el clic del mouse está dentro del rectángulo del botón "Siguiente" en la pantalla 2
  if (pantallaActual == 2 && mouseX >= 480 && mouseX <= 570 && mouseY >= 520 && mouseY <= 550) {
    pantallaActual = 3;  // Cambia a la pantalla 3
  }

  // Actualiza la imagen actual
  imagenActual = getPantallaActualImage();
}


void mostrarBotonesAccion() {
  if (pantallaActual == 0) {
    // Pantalla 1: botones de acción
    fill(27, 19, 124);
    rect(100, 100, 100, 50);
    rect(390, 100, 130, 50);
    fill(255);
    text("Inicio", 140, 130);
    text("Créditos", 450, 130);
  } else if (pantallaActual == 3) {
    // Pantalla 4: botones de acción
    fill(255);
    rect(100, 100, 100, 50);
    rect(300, 100, 100, 50);
    rect(500, 100, 100, 50);
    fill(0);
    text("1", 135, 130);
    text("2", 335, 130);
    text("3", 535, 130);
  }
}
