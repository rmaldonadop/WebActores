/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utem.webactores.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author roberto
 */

@Controller
public class Modulo3Controller {
    
    @RequestMapping(value="/modulo3")
    public ModelAndView modulo3() {
        
        return new ModelAndView("modulos/modulo3");
    } 
   
}
