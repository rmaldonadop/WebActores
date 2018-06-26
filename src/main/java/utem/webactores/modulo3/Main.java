/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utem.webactores.modulo3;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import java.io.IOException;

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
        
        try {
            
            final ActorRef receptor = system.actorOf(ActorReceptor.props(), "receptor");
            
            final ActorRef mensajero1 = system.actorOf(ActorMensajero.props(), "mensajero-1");
            final ActorRef mensajero2 = system.actorOf(ActorMensajero.props(), "mensajero-2");
            final ActorRef mensajero3 = system.actorOf(ActorMensajero.props(), "mensajero-3");
            
            mensajero1.tell(1, receptor);
            mensajero2.tell(1, receptor);
            mensajero3.tell(1, receptor);
            
            System.out.println(">>> Press ENTER to exit <<<");
            System.in.read();
            
        } catch (IOException ioe) {
        } finally {
            system.terminate();
        }
    }
    
}
