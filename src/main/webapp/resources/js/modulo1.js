//variables principales canvas
var canvas = document.getElementById("lienzo1");
var ctx = canvas.getContext("2d");

//objetos
var actor1 = {nombre: "Actor 1", x: 300, y: 200};
var actor2 = {nombre: "Actor 2", x: 550, y: 200, estado: true};
var actor3 = {nombre: "Actor 3", x: 800, y: 100};
var actor4 = {nombre: "Actor 4", x: 800, y: 300};
var actor5 = {nombre: "Actor 5", x: 550, y: 400};

var mensaje1 = {xinicial: 350, yinicial:170, x: 350,y: 170,velocidad: 3, mensajes: 1, envios: 0};
var mensaje2 = {xinicial: 600, yinicial:140, x: 600,y: 140,velocidad: 3, mensajes: 1, envios: 0};
var mensaje3 = {xinicial: 600, yinicial:230, x: 600,y: 230,velocidad: 3, mensajes: 1, envios: 0};

//variables
var intervalo;
var mensaje;
var imgMensaje = document.getElementById("mensaje");

function loadModulo(){
    dibujarModulo1();
    dibujarTexto("enviar", mensaje1.x, mensaje1.y);
    dibujarMensaje(mensaje1);
    dibujarMensaje(mensaje2);
    dibujarMensaje(mensaje3);
}

//botones
document.getElementById("btnEnviar").addEventListener("click", function() {
    
    mensaje = document.getElementById("txtMensaje").value.toString().toLowerCase();
    
    if(mensaje === "enviar"){
        intervalo = window.setInterval(function(){animarEnviar();},1000/55);
    }
    if(mensaje === "cambiar"){
        intervalo = window.setInterval(function(){animarCambiar();},1000/55);
        if(actor2.estado){
            actor2.estado = false;
        }
        else{
            actor2.estado = true;
        }
    }
    if(mensaje === "crear"){
    }
    if(mensaje === "imprimir"){
        intervalo = window.setInterval(function(){animarCambiar();},1000/55);
    }
    else{
        
    }
    
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

function dibujarTexto(texto, x, y) {
    ctx.save();
    ctx.font = "15px Arial";
    ctx.textAlign = "center";
    ctx.fillText(texto,x+15,y);
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
    if(msj.envios === msj.mensajes){
        return true;
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

function reiniciar(){
    window.clearInterval(intervalo);
    resetearMensaje(mensaje1);
    resetearMensaje(mensaje2);
    resetearMensaje(mensaje3);
    canvas.width = canvas.width;
    loadModulo();
}

function resetearMensaje(msj){
    msj.x = msj.xinicial;
    msj.y = msj.yinicial;
    msj.envios = 0;
}

//animaciones
function animarEnviar(){
    var aux, aux2;
    if(actor2.estado){
        aux = animarMensaje1();
        if(aux===true){
            aux2 = animarMensaje2();
            if(aux2){
                reiniciar();
            }
        }
    }
    else{
        aux = animarMensaje1();
        if(aux===true){
            aux2 = animarMensaje3();
            if(aux2){
                reiniciar();
            }
        }
    }
}

function animarCambiar(){
    var aux = animarMensaje1();
    if(aux){
        reiniciar();
    }
    
}

function animarImprimir(){
    var aux = animarMensaje1();
    if(aux){
        reiniciar();
    }
    
}

function animarMensaje1(){
    
    canvas.width = canvas.width;
    var aux = moverMensaje(mensaje1, 500, 170);
    dibujarModulo1();
    dibujarMensaje(mensaje1);
    dibujarMensaje(mensaje2);
    dibujarMensaje(mensaje3);
    return aux;

}

function animarMensaje2(){
    
    canvas.width = canvas.width;
    var aux = moverMensaje(mensaje2, 750, 45);
    dibujarModulo1();
    dibujarMensaje(mensaje1);
    dibujarMensaje(mensaje2);
    dibujarMensaje(mensaje3);
    return aux;
}

function animarMensaje3(){
    
    canvas.width = canvas.width;
    var aux = moverMensaje(mensaje3, 750, 325);
    dibujarModulo1();
    dibujarMensaje(mensaje1);
    dibujarMensaje(mensaje2);
    dibujarMensaje(mensaje3);
    return aux;
}