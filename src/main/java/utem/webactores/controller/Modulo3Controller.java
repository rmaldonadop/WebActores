/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utem.webactores.controller;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
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
    
    @Autowired
    private ApplicationContext applicationContext;
    
    //actores
    private ActorSystem system;
    private ActorRef receptor;
    private ActorRef mensajero1;
    private ActorRef mensajero2;
    private ActorRef mensajero3;
    
    @RequestMapping(value="/modulo3", method = RequestMethod.GET)
    public ModelAndView modulo3() throws InterruptedException {
        
        this.system = applicationContext.getBean(ActorSystem.class);
        iniciarActores();
        Thread.sleep(3000);
        cerrarActores();
        return new ModelAndView("modulos/modulo3");
    } 
    
    public void iniciarActores(){
        
        this.receptor = this.system.actorOf(SpringExtension.SpringExtProvider.get(this.system).props("ActorReceptor"),"receptor");
        this.mensajero1 = this.system.actorOf(SpringExtension.SpringExtProvider.get(this.system).props("ActorMensajero"),"mensajero-1");
        this.mensajero2 = this.system.actorOf(SpringExtension.SpringExtProvider.get(this.system).props("ActorMensajero"),"mensajero-2");
        this.mensajero3 = this.system.actorOf(SpringExtension.SpringExtProvider.get(this.system).props("ActorMensajero"),"mensajero-3");
    }
    
    public void cerrarActores(){
        this.system.terminate();
    }
}
