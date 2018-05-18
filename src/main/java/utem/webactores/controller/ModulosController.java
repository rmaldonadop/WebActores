/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utem.webactores.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author roberto
 */

@Controller
public class ModulosController {
    
    @RequestMapping(value="/modulos")
    public ModelAndView moodulos(HttpServletRequest request){
        
        
        String id = request.getParameter("id");
        String id2 = request.getParameter("id2");
        
        ModelAndView mv = new ModelAndView("/modulos/modulos");
        mv.addObject("id", id);
        mv.addObject("id2", id2);
        return mv;
    }
}
