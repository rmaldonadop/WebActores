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
public class MenuController {
    
    @RequestMapping(value="/menu")
    public ModelAndView menu(){
        return new ModelAndView("/layouts/menu");
    }
}
