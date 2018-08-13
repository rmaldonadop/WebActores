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
    
    @RequestMapping(value="/actor-model")
    public ModelAndView modelo(){
        
        return new ModelAndView("/modelo/actor-model");
    }
    
    @RequestMapping(value="/conceptos-basicos")
    public ModelAndView conceptosBasicos(){
        
        return new ModelAndView("/modelo/1-conceptos-basicos");
    }
    
    @RequestMapping(value="/caracteristicas")
    public ModelAndView caracteristicas(){
        
        return new ModelAndView("/modelo/2-caracteristicas");
    }
    
    @RequestMapping(value="/sincronizacion")
    public ModelAndView sincronizacion(){
        
        return new ModelAndView("/modelo/3-sincronizacion");
    }
    
    @RequestMapping(value="/propiedades-semanticas")
    public ModelAndView propiedadesSemanticas(){
        
        return new ModelAndView("/modelo/4-semantica");
    }
    
    @RequestMapping(value="/aplicacion-basica")
    public ModelAndView aplicacionBasica(){
        
        return new ModelAndView("/modelo/5-aplicacion");
    }
}
