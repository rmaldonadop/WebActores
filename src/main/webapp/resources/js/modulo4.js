//variables principales canvas
var canvas = document.getElementById("lienzo4");
var ctx = canvas.getContext("2d");

//objetos
var actor1 = {nombre: "Cliente", x: 350, y: 100};
var actor2 = {nombre: "Cliente", x: 350, y: 250};
var actor3 = {nombre: "Cliente", x: 350, y: 400};
var actor4 = {nombre: "Servicio #1", x: 600, y: 175};
var actor5 = {nombre: "Servicio #2", x: 600, y: 325};
var actor6 = {nombre: "-abrir-", x: 600, y: 175};
var actor7 = {nombre: "-leer|cerrar-", x: 600, y: 325};

var mensaje1 = {xinicial: 350, yinicial:170, x: 350,y: 170,velocidad: 3, mensajes: 1, envios: 0};

//variables
var tipo = true;
var imgMensaje = document.getElementById("mensaje");

function loadModulo(){
    dibujarModulo4();
}

//botones
document.getElementById("btnTipo").addEventListener("click", function() {
     if(tipo){
         tipo = false;
         this.value = "R. Local";
         dibujarModulo4();
     }
     else{
         tipo = true;
         this.value = "RCP";
         dibujarModulo4();
     }
});

//funciones
function dibujarActor(actor) {
    ctx.save();
    ctx.font = "15px Arial";
    ctx.textAlign = "center";
    ctx.fillText(actor.nombre,actor.x,actor.y);
    ctx.beginPath();
    ctx.arc(actor.x, actor.y, 45, 0, 2*Math.PI);
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

function fecha(fromx, fromy, tox, toy) {
    ctx.save();
    var headlen = 10;   // length of head in pixels
    var angle = Math.atan2(toy-fromy,tox-fromx);
    ctx.beginPath();
    ctx.setLineDash([0]);
    ctx.moveTo(fromx, fromy);
    ctx.lineTo(tox, toy);
    ctx.stroke();
    ctx.beginPath();
    ctx.moveTo(tox, toy);
    ctx.lineTo(tox-headlen*Math.cos(angle-Math.PI/6),toy-headlen*Math.sin(angle-Math.PI/6));
    ctx.moveTo(tox, toy);
    ctx.lineTo(tox-headlen*Math.cos(angle+Math.PI/6),toy-headlen*Math.sin(angle+Math.PI/6));
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

function dibujarModulo4() {
    canvas.width = canvas.width;
    
    //dibujar actores
    dibujarActor(actor1);
    dibujarActor(actor2);
    dibujarActor(actor3);
    fecha(350,150,350,200);
    fecha(350,300,350,350);
    
    if(tipo){
        dibujarActor(actor4);
        dibujarActor(actor5);
        
        //dibujar flechas
        fechaSegmentada(400,100,550,170);
        fechaSegmentada(550,180,400,240);
        fechaSegmentada(400,260,550,320);
        fechaSegmentada(550,330,400,400);
    }
    else{
        dibujarActor(actor6);
        dibujarActor(actor7);
        
        //dibujar flechas
        fechaSegmentada(400,100,550,170);
        fechaSegmentada(400,250,550,320);
        fechaSegmentada(400,400,550,330);
        fecha(600,225,600,275);
    }
}

function resetearMensaje(msj){
    msj.x = msj.xinicial;
    msj.y = msj.yinicial;
    msj.envios = 0;
}

function frameLoop() {
    canvas.width = canvas.width;
    moverMensaje(mensaje1, 600, 175);
    dibujarModulo4();
    dibujarMensaje(mensaje1);
}
