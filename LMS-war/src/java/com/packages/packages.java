/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.packages;

import com.session.LmsSessionLocal;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author GBENGE AONDOAKULA
 */
public class packages {

    LmsSessionLocal lmsSession = lookupLmsSessionLocal();

    private LmsSessionLocal lookupLmsSessionLocal() {
        try {
            Context c = new InitialContext();
            return (LmsSessionLocal) c.lookup("java:global/LMS/LMS-ejb/LmsSession!com.session.LmsSessionLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
    
}
