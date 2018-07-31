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
public class ModeloController {
    
    @RequestMapping(value="/actor_model")
    public ModelAndView modelo(){
        
        return new ModelAndView("/modelo/actor_model");
    }
    
    @RequestMapping(value="/conceptos_basicos")
    public ModelAndView conceptos_basicos(){
        
        return new ModelAndView("/modelo/conceptos_basicos");
    }
    
    @RequestMapping(value="/caracteristicas")
    public ModelAndView caracteristicas(){
        
        return new ModelAndView("/modelo/caracteristicas");
    }
    
    @RequestMapping(value="/sincronizacion")
    public ModelAndView sincronizacion(){
        
        return new ModelAndView("/modelo/sincronizacion");
    }
}
