/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utem.webactores.modulo3;

import akka.actor.AbstractActor;
import akka.actor.Props;
import akka.event.Logging;
import akka.event.LoggingAdapter;
import javax.inject.Named;
import org.springframework.context.annotation.Scope;

/**
 *
 * @author roberto
 */

@Named("ActorReceptor")
@Scope("prototype")
public class ActorReceptor extends AbstractActor {

    static public Props props() {
        return Props.create(ActorReceptor.class, () -> new ActorReceptor());
    }
    
    //logging
    private final LoggingAdapter log = Logging.getLogger(getContext().getSystem(), this);
    
    
    public ActorReceptor(){
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
                .match(String.class, m -> log.info("Mensaje |{}| recibido desde actor: {}", m, getSender().path().name()))
                .matchEquals("imprimir", m -> log.info("Mensaje recibido desde actor: {}", getSender().path().name()))
                .build();
    }
    
}
