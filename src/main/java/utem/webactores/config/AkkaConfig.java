/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utem.webactores.config;

import akka.actor.ActorSystem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 *
 * @author roberto
 */

@Configuration
public class AkkaConfig {
 
    @Autowired
    private ApplicationContext applicationContext;
 
    @Bean
    public ActorSystem actorSystem() {
        ActorSystem actorSystem = ActorSystem.create("ActorSystem");
        SpringExtension.SpringExtProvider.get(actorSystem).initialize(applicationContext);
        return actorSystem;
    }
}
