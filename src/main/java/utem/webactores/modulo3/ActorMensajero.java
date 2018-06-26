/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utem.webactores.modulo3;

import akka.actor.AbstractActor;
import akka.actor.ActorRef;
import akka.actor.Props;
import akka.event.Logging;
import akka.event.LoggingAdapter;

/**
 *
 * @author roberto
 */
public class ActorMensajero extends AbstractActor{
    
    static public Props props() {
        return Props.create(ActorMensajero.class, () -> new ActorMensajero());
    }
    
    //logging
    private final LoggingAdapter log = Logging.getLogger(getContext().getSystem(), this);
    
    //constructor de actor
    public ActorMensajero(){
    }
    
    //procedimientos
    public void enviar(ActorRef receptor, int n){
        String mensaje;
        for (int i = 0; i < n; i++) {
            mensaje = "imprimir" + (i+1);
            log.info("Mensaje N°{} enviado", i+1);
            receptor.tell(mensaje, getSelf());
        }
    }
    
    @Override
    public void preStart(){
        log.info("Actor inciado: |{}|", getSelf().path().name());
    }
    
    @Override
    public void postStop(){
        log.info("Actor detenido: |{}|", getSelf().path().name());
    }

    @Override
    public Receive createReceive() {
        return receiveBuilder()
                .match(Integer.class, m -> {this.enviar(getSender(), m);})
                .build();
    }
}
