/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utem.webactores.controller;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import org.springframework.boot.SpringApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import utem.webactores.config.SpringExtension;

/**
 *
 * @author roberto
 */

@Controller
public class Modulo3Controller {
    
    @RequestMapping(value="/modulo3", method = RequestMethod.GET)
    public ModelAndView modulo3() {
        
        //final ActorSystem system = ActorSystem.create("modulo-3");
        //final ActorRef receptor = system.actorOf(ActorReceptor.props(), "receptor");
        
        return new ModelAndView("modulos/modulo3");
    } 
    
    public void funcion(){
        
        ConfigurableApplicationContext applicationContext = SpringApplication.run(ActorSystem.class);
        ActorSystem actorSystem = applicationContext.getBean(ActorSystem.class);
        
        final ActorRef receptor = actorSystem.actorOf(SpringExtension.SpringExtProvider.get(actorSystem).props("ActorReceptor"), "receptor");
        
        final ActorRef mensajero1 = actorSystem.actorOf(SpringExtension.SpringExtProvider.get(actorSystem).props("ActorMensajeror"), "mensajero-1");
        final ActorRef mensajero2 = actorSystem.actorOf(SpringExtension.SpringExtProvider.get(actorSystem).props("ActorMensajeror"), "mensajero-2");
        final ActorRef mensajero3 = actorSystem.actorOf(SpringExtension.SpringExtProvider.get(actorSystem).props("ActorMensajeror"), "mensajero-3");
        
        mensajero1.tell(1, receptor);
        mensajero2.tell(1, receptor);
        mensajero3.tell(1, receptor);
    }
}
