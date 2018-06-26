//variables principales canvas
var canvas = document.getElementById("lienzo1");
var ctx = canvas.getContext("2d");

//objetos
var actor1 = {nombre: "Actor 1", x: 300, y: 200};
var actor2 = {nombre: "Actor 2", x: 550, y: 200};
var actor3 = {nombre: "Actor 3", x: 800, y: 100};
var actor4 = {nombre: "Actor 4", x: 800, y: 300};
var actor5 = {nombre: "Actor 5", x: 550, y: 400};

var mensaje1 = {xinicial: 350, yinicial:170, x: 350,y: 170,velocidad: 3, mensajes: 1, envios: 0};
var mensaje2 = {xinicial: 600, yinicial:140, x: 600,y: 140,velocidad: 3, mensajes: 1, envios: 0};
var mensaje3 = {xinicial: 600, yinicial:230, x: 600,y: 230,velocidad: 3, mensajes: 1, envios: 0};

//variables
var iniciar = false;
var imgMensaje = document.getElementById("mensaje");

function loadModulo(){
    dibujarModulo1();
    dibujarMensaje(mensaje1);
    dibujarMensaje(mensaje2);
    dibujarMensaje(mensaje3);
}

//botones

//funciones
function dibujarActor(actor) {
    ctx.save();
    ctx.font = "15px Arial";
    ctx.textAlign = "center";
    ctx.fillText(actor.nombre,actor.x,actor.y + 50);
    ctx.beginPath();
    ctx.arc(actor.x, actor.y, 40, 0, 2*Math.PI);
    ctx.stroke();
    ctx.restore();
}

function fechaSegmentada(fromx, fromy, tox, toy) {
    ctx.save();
    var headlen = 10;   // length of head in pixels
    var angle = Math.atan2(toy-fromy,tox-fromx);
    ctx.beginPath();
    ctx.setLineDash([5,3]);
    ctx.moveTo(fromx, fromy);
    ctx.lineTo(tox, toy);
    ctx.stroke();
    ctx.beginPath();
    ctx.setLineDash([0]);
    ctx.moveTo(tox, toy);
    ctx.lineTo(tox-headlen*Math.cos(angle-Math.PI/6),toy-headlen*Math.sin(angle-Math.PI/6));
    ctx.moveTo(tox, toy);
    ctx.lineTo(tox-headlen*Math.cos(angle+Math.PI/6),toy-headlen*Math.sin(angle+Math.PI/6));
    ctx.stroke();
    ctx.restore();
}

function dibujarMensaje(msj) {
    ctx.save();
    ctx.drawImage(imgMensaje, msj.x, msj.y);
    ctx.restore();
}

function moverMensaje(msj, tox, toy) {
    var distanciax = Math.abs(tox-msj.xinicial);
    var tiempox = Math.abs(distanciax/msj.velocidad);
    var distanciay = Math.abs(toy-msj.yinicial);
    var vely = distanciay/tiempox;
    
    if(msj.x === msj.xinicial && msj.mensajes >= msj.envios){
        msj.envios += 1;
    }
    
    if (msj.mensajes >= msj.envios){
        //movimiento en y
        if ((toy-msj.yinicial)>0){    //hacia abajo
            msj.y += vely;
            if (msj.y > toy)
                msj.y = msj.yinicial;
        }
        if ((toy-msj.yinicial)<0){    //hacia arriba
            msj.y -= vely;
            if (msj.y < toy)
                msj.y = msj.yinicial;
        }

        //movimiento en x
        if ((tox-msj.xinicial)>0){  //hacia derecha
            msj.x +=  msj.velocidad;
            if(msj.x > tox) 
                msj.x = msj.xinicial;
        }

        if ((tox-msj.xinicial)<0){  //hacia izquierda
            msj.x -=  msj.velocidad;
            if(msj.x < tox) 
                msj.x = msj.xinicial;
        }
    }
}

function dibujarModulo1() {
    //dibujar actores
    dibujarActor(actor1);
    dibujarActor(actor2);
    dibujarActor(actor3);
    dibujarActor(actor4);
    
    //dibujar flechas
    fechaSegmentada(350,200,500,200);
    fechaSegmentada(600,190,750,100);
    fechaSegmentada(600,210,750,300);
}

function resetearMensaje(msj){
    msj.x = msj.xinicial;
    msj.y = msj.yinicial;
    msj.envios = 0;
}

function frameLoop() {
    canvas.width = canvas.width;
    moverMensaje(mensaje1, 600, 175);
    moverMensaje(mensaje2, 600, 220);
    moverMensaje(mensaje3, 600, 295);
    dibujarModulo3();
    dibujarMensaje(mensaje1);
    dibujarMensaje(mensaje2);
    dibujarMensaje(mensaje3);
}
