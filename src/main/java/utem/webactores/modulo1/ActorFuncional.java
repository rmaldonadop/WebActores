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

@Named("ActorFuncional")
@Scope("prototype")
public class ActorFuncional extends AbstractActor {

    static public Props props(){
        return Props.create(ActorFuncional.class, () -> new ActorFuncional());
    }
    
    //logging
    private final LoggingAdapter log = Logging.getLogger(getContext().getSystem(), this);
    
    //estados
    private AbstractActor.Receive receptor1;
    private AbstractActor.Receive receptor2;
    
    //variables
    private ActorRef actorReceptor1 = null;
    private ActorRef actorReceptor2 = null;
    private boolean estado = true;
    
    //Contructor de clase
    public ActorFuncional(){
        
        receptor1 = receiveBuilder()
                .matchEquals("enviar", m -> {
                    String receptorFinal = actorReceptor1.path().name();
                    log.info("Enviando mensaje a actor: |{}|", receptorFinal);
                    actorReceptor1.tell("imprimir", getSelf());
                })
                .matchEquals("cambiar", m -> {
                    log.info("Cambiando estado a: receptor2");
                    getContext().become(receptor2);})
                .matchEquals("crear", m -> this.crear())
                .matchEquals("imprimir", m -> log.info("Mensaje recibido desde actor: |{}|", getSender().path().name()))
                .match(String.class, m -> log.info("Mensaje no valido: sin reaccion"))
                .build();
        
        receptor2 = receiveBuilder()
                .matchEquals("enviar", m -> {
                    String receptorFinal = actorReceptor2.path().name();
                    log.info("Enviando mensaje a actor: |{}|", receptorFinal);
                    actorReceptor2.tell("imprimir", getSelf());
                })
                .matchEquals("cambiar", m -> {
                    log.info("Cambiando estado a: receptor1");
                    getContext().become(receptor1);})
                .matchEquals("crear", m -> this.crear())
                .matchEquals("imprimir", m -> log.info("Mensaje recibido desde actor: |{}|", getSender().path().name()))
                .match(String.class, m -> log.info("Mensaje no valido: sin reaccion"))
                .build();
    }
    
    //procedimientos
    
    /*
    public void enviar(){
        if (estado) {
            String receptorFinal = actorReceptor1.path().name();
            log.info("Enviando mensaje a: |{}|", receptorFinal);
            actorReceptor1.tell("imprimir", getSelf());
        }
        else{
            String receptorFinal = actorReceptor2.path().name();
            log.info("Enviando mensaje a: |{}|", receptorFinal);
            actorReceptor2.tell("imprimir", getSelf());
        }
    }
    */
    
    public void crear(){
        ActorRef actorTemporal = getContext().actorOf(ActorReceptor.props(), "receptor-temporal");
        actorTemporal.tell("imprimir", getSelf());
        getContext().stop(actorTemporal);
    }
    
    //funciones de actor
    @Override
    public void preStart(){
        log.info("Actor inciado: |{}|", getSelf().path().name());
        actorReceptor1 = getContext().actorOf(ActorReceptor.props(), "receptor-1");
        actorReceptor2 = getContext().actorOf(ActorReceptor.props(), "receptor-2");
    }
    
    @Override
    public void postStop(){
        log.info("Actor detenido: |{}|", getSelf().path().name());
    }
    
    @Override
    public Receive createReceive() {
        return receiveBuilder()
                .matchEquals("enviar", m -> {
                    String receptorFinal = actorReceptor1.path().name();
                    log.info("Enviando mensaje a actor: |{}|", receptorFinal);
                    actorReceptor1.tell("imprimir", getSelf());
                })
                .matchEquals("cambiar", m -> { 
                    log.info("Cambiando estado a: receptor2");
                    getContext().become(receptor2); 
                })
                .matchEquals("crear", m -> this.crear())
                .matchEquals("imprimir", m -> log.info("Mensaje recibido desde actor: |{}|", getSender().path().name()))
                .match(String.class, m -> log.info("Mensaje no valido: sin reaccion"))
                .build();
    }
    
}
