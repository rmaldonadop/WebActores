/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utem.webactores.modulo3;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import java.io.IOException;
import org.springframework.boot.SpringApplication;
import org.springframework.context.ConfigurableApplicationContext;
import utem.webactores.config.SpringExtension;

/**
 *
 * @author roberto
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        final ActorSystem system = ActorSystem.create("modulo-3");
        
        ConfigurableApplicationContext applicationContext = SpringApplication.run(ActorSystem.class);
        ActorSystem actorSystem = applicationContext.getBean(ActorSystem.class);
        
        final ActorRef receptor = actorSystem.actorOf(SpringExtension.SpringExtProvider.get(actorSystem).props("ActorReceptor"), "receptor");
        
        final ActorRef mensajero1 = actorSystem.actorOf(SpringExtension.SpringExtProvider.get(actorSystem).props("ActorMensajeror"), "mensajero-1");
        final ActorRef mensajero2 = actorSystem.actorOf(SpringExtension.SpringExtProvider.get(actorSystem).props("ActorMensajeror"), "mensajero-2");
        final ActorRef mensajero3 = actorSystem.actorOf(SpringExtension.SpringExtProvider.get(actorSystem).props("ActorMensajeror"), "mensajero-3");
        
        mensajero1.tell(1, receptor);
        mensajero2.tell(1, receptor);
        mensajero3.tell(1, receptor);
        
        try {
            
            System.out.println(">>> Press ENTER to exit <<<");
            System.in.read();
            
        } catch (IOException ioe) {
        } finally {
            actorSystem.terminate();
        }
    }
    
}
