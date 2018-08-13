//variables principales canvas
var canvas = document.getElementById("lienzo3");
var ctx = canvas.getContext("2d");

//objetos
var mensajero1 = {nombre: "Mensajero 1", x: 300, y: 100};
var mensajero2 = {nombre: "Mensajero 2", x: 300, y: 250};
var mensajero3 = {nombre: "Mensajero 3", x: 300, y: 400};
var receptor = {nombre: "Receptor", x: 700, y: 250};

var mensaje1 = {xinicial: 350, yinicial:70, x: 350,y: 70,velocidad: Math.floor(Math.random() * 4) + 2, mensajes: 1, envios: 0};
var mensaje2 = {xinicial: 350, yinicial:220, x: 350,y: 220,velocidad: Math.floor(Math.random() * 4) + 2, mensajes: 1, envios: 0};
var mensaje3 = {xinicial: 350, yinicial:400, x: 350,y: 400,velocidad: Math.floor(Math.random() * 4) + 2, mensajes: 1, envios: 0};

//variables
var iniciar = false;
var imgMensaje = document.getElementById("mensaje");

function loadModulo(){
    dibujarModulo3();
    dibujarMensaje(mensaje1);
    dibujarMensaje(mensaje2);
    dibujarMensaje(mensaje3);
}

//boton iniciar
document.getElementById("btnIniciar").addEventListener("click", function() {
    if(iniciar){
        window.clearInterval(intervalo);
        this.value = "Continuar";
        iniciar = false;
    }
    else{
        mensaje1.mensajes = document.getElementById("actor1").value;
        mensaje2.mensajes = document.getElementById("actor2").value;
        mensaje3.mensajes = document.getElementById("actor3").value;
        intervalo = window.setInterval(function(){frameLoop();},1000/55);
        this.value = "Pausar";
        iniciar = true;
    }
});

//boton reiniciar
document.getElementById("btnReiniciar").addEventListener("click", function() {
    window.clearInterval(intervalo);
    resetearMensaje(mensaje1);
    resetearMensaje(mensaje2);
    resetearMensaje(mensaje3);
    canvas.width = canvas.width;
    loadModulo();
    var btn = document.getElementById("btnIniciar");
    btn.value = "Iniciar";
    iniciar = false;
    
});

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
function resetearPosicion(obj){
    obj.x = obj.xinicial;
    obj.y = obj.yinicial;
}

function moverMensaje(msj, tox, toy) {
    var distanciax = Math.abs(tox-msj.xinicial);
    var tiempox = Math.abs(distanciax/msj.velocidad);
    var distanciay = Math.abs(toy-msj.yinicial);
    var vely = distanciay/tiempox;
    
    if (msj.mensajes > msj.envios){
        //movimiento en y
        if ((toy-msj.yinicial)>0){    //hacia abajo
            msj.y += vely;
            if (msj.y > toy){
                resetearPosicion(msj);
                msj.envios += 1;
            }
        }
        if ((toy-msj.yinicial)<0){    //hacia arriba
            msj.y -= vely;
            if (msj.y < toy){
                resetearPosicion(msj);
                msj.envios += 1;
            }
        }

        //movimiento en x
        if ((tox-msj.xinicial)>0){  //hacia derecha
            msj.x +=  msj.velocidad;
            if(msj.x > tox) {
                resetearPosicion(msj);
                msj.envios += 1;
            }
        }

        if ((tox-msj.xinicial)<0){  //hacia izquierda
            msj.x -=  msj.velocidad;
            if(msj.x < tox) {
                resetearPosicion(msj);
                msj.envios += 1;
            }
        }
    }
}

function dibujarModulo3() {
    //dibujar actores
    dibujarActor(mensajero1);
    dibujarActor(mensajero2);
    dibujarActor(mensajero3);
    dibujarActor(receptor);
    
    //dibujar flechas
    fechaSegmentada(350,100,660,230);
    fechaSegmentada(350,250,650,250);
    fechaSegmentada(350,400,660,270);
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
