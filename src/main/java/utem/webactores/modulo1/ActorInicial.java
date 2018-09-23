/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utem.webactores.modulo1;

import akka.actor.AbstractActor;
import akka.actor.ActorRef;
import akka.actor.Props;
import akka.event.Logging;
import akka.event.LoggingAdapter;
import javax.inject.Named;
import org.springframework.context.annotation.Scope;

/**
 *
 * @author roberto
 */

@Named("ActorInicial")
@Scope("prototype")
public class ActorInicial extends AbstractActor{
    
    static public Props props() {
        return Props.create(ActorInicial.class, () -> new ActorInicial());
    }
    
    //logging
    private final LoggingAdapter log = Logging.getLogger(getContext().getSystem(), this);
    
    //variables
    private ActorRef funcional = null;
    String mensaje;
    
    //contructor de clase
    public ActorInicial(){
    }
    

    //procedimientos
    public void enviar(String msj){
        funcional.tell(msj, getSelf());
    }
    
    //funciones de actor
    @Override
    public void preStart(){
        log.info("Actor inciado: |{}|", getSelf().path().name());
        funcional = getContext().actorOf(ActorFuncional.props(), "funcional");
    }
    
    @Override
    public void postStop(){
        log.info("Actor detenido: |{}|", getSelf().path().name());
    }
    
    @Override
    public Receive createReceive() {
        return receiveBuilder()
                .match(String.class ,m -> {
                    log.info("Enviando mensaje |{}| a actor |{}|", m, funcional.path().name());
                    this.enviar(m);})
                .build();
    }
}
