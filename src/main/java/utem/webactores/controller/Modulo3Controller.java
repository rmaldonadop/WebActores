/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utem.webactores.controller;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import akka.actor.PoisonPill;
import javax.servlet.http.HttpServletRequest;
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
    public ModelAndView modulo3(HttpServletRequest request) throws InterruptedException{
        
        detenerActores();
        iniciarActores();
        
        String m1 = request.getParameter("m1");
        
        ModelAndView view = new ModelAndView("modulos/modulo3");
        
        view.addObject("m1", m1);
        
        return view;
    } 
    
    public void iniciarActores() throws InterruptedException{
        
        this.system = applicationContext.getBean(ActorSystem.class);
        this.receptor = this.system.actorOf(SpringExtension.SpringExtProvider.get(this.system).props("ActorReceptorM3"),"receptor");
        this.mensajero1 = this.system.actorOf(SpringExtension.SpringExtProvider.get(this.system).props("ActorMensajero"),"mensajero-1");
        this.mensajero2 = this.system.actorOf(SpringExtension.SpringExtProvider.get(this.system).props("ActorMensajero"),"mensajero-2");
        this.mensajero3 = this.system.actorOf(SpringExtension.SpringExtProvider.get(this.system).props("ActorMensajero"),"mensajero-3");
        Thread.sleep(250);
    }
    
    public void detenerActores() throws InterruptedException{
        
        if(this.system!=null){
            this.system.actorSelection("/user/*").tell(PoisonPill.getInstance(), ActorRef.noSender());
            Thread.sleep(250);
        }
    }
}
