/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utem.webactores.modulo1;

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

@Named("ActorReceptorM1")
@Scope("prototype")
public class ActorReceptor extends AbstractActor{
    
    static public Props props(){
        return Props.create(ActorReceptor.class, () -> new ActorReceptor());
    }
    
    //logging
    private final LoggingAdapter log = Logging.getLogger(getContext().getSystem(), this);
    
    //contructor de clase
    public ActorReceptor(){
        
    }

    //funciones de actor
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
                .matchEquals("imprimir", m -> log.info("Mensaje recibido desde actor: |{}|", getSender().path().name()))
                .build();
    }
}
