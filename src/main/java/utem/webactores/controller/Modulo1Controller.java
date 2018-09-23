/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utem.webactores.controller;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import akka.actor.PoisonPill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import utem.webactores.config.SpringExtension;

/**
 *
 * @author roberto
 */

@Controller
public class Modulo1Controller {
    
    @Autowired
    private ApplicationContext applicationContext;
    
    //actores
    private ActorSystem system;
    private ActorRef actor1;
    private ActorRef actor2;
    private ActorRef actor3;
    private ActorRef actor4;
    private ActorRef actor5;
    
    @RequestMapping(value="/modulo1")
    public ModelAndView modulo1() throws InterruptedException{

        detenerActores();
        iniciarActores();
        return new ModelAndView("modulos/modulo1");
    } 
    
    public void iniciarActores() throws InterruptedException{
        
        this.system = applicationContext.getBean(ActorSystem.class);
        this.actor1 = this.system.actorOf(SpringExtension.SpringExtProvider.get(this.system).props("ActorInicial"),"inicial");
        this.actor2 = this.system.actorOf(SpringExtension.SpringExtProvider.get(this.system).props("ActorFuncional"),"funcional");
        this.actor3 = this.system.actorOf(SpringExtension.SpringExtProvider.get(this.system).props("ActorReceptorM1"),"receptor-1");
        this.actor4 = this.system.actorOf(SpringExtension.SpringExtProvider.get(this.system).props("ActorReceptorM1"),"receptor-2");
        Thread.sleep(250);
    }
    
    public void detenerActores() throws InterruptedException{
        
        if(this.system!=null){
            this.system.actorSelection("/user/*").tell(PoisonPill.getInstance(), ActorRef.noSender());
            Thread.sleep(250);
        }
    }
}
