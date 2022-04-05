/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.session;

import com.lmsClasses.Animals;
import com.lmsClasses.Client;
import com.lmsClasses.Comment;

import com.lmsClasses.Disease;
import com.lmsClasses.Feed;
import com.lmsClasses.Housing;
import com.lmsClasses.Prevention;
import com.lmsClasses.Updates;
import com.lmsClasses.Userlogin;
import java.util.List;
import java.util.Random;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author GBENGE AONDOAKULA
 */
@Stateless
public class LmsSession implements LmsSessionLocal {

    @PersistenceContext(unitName = "LMS-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    @Override
    public String addAnimal(Animals animal) {
        String msg = "";
        if (em.find(Animals.class, animal.getId()) == null) {
            em.persist(animal);
            msg = "<div class='btn btn-success' >  Summitted </div>";
        } else {
            msg = " <div class='btn btn-error'>Already Exist</div>";
        }

        return msg;

    }

    @Override
    public String generatecomentID() {
        String f="co";
        Random r=new Random();
       for(int i=0;i<6;i++){
           f=f+Integer.toString(r.nextInt(9));
       }
        return f ;

    }

    @Override
    public String generateFeedID() {
        String f="fe";
        Random r=new Random();
       for(int i=0;i<6;i++){
           f=f+Integer.toString(r.nextInt(9));
       }
        return f ;
    }

    @Override
    public String generateHosingID() {
        String f="ho";
        Random r=new Random();
       for(int i=0;i<6;i++){
           f=f+Integer.toString(r.nextInt(9));
       }
        return f ;

    }

    @Override
    public String generatePreventtionID() {
       String f="pr";
        Random r=new Random();
       for(int i=0;i<6;i++){
           f=f+Integer.toString(r.nextInt(9));
       }
        return f ;

    }

    @Override
    public String generateAnimalID() {
        String f="an";
        Random r=new Random();
       for(int i=0;i<6;i++){
           f=f+Integer.toString(r.nextInt(9));
       }
        return f ;
    }

    @Override
    public String generateDiseaseID() {
        String f="di";
        Random r=new Random();
       for(int i=0;i<6;i++){
           f=f+Integer.toString(r.nextInt(9));
       }
        return f ;

    }

    @Override
    public String addDisease(Disease disease) {
        String msg = "";
        if (em.find(Disease.class, disease.getId()) == null) {
            em.persist(disease);
            msg = "<div class='btn btn-success' >  Summitted </div>";
        } else {
            msg = " <div class='btn btn-error'>Already Exist</div>";
        }

        return msg;

    }

    @Override
    public String addHousing(Housing house) {
        String msg = "";
        if (em.find(Housing.class, house.getId()) == null) {
            em.persist(house);
            msg = "<div class='btn btn-success' >  Summitted </div>";
        } else {
            msg = " <div class='btn btn-error'>Already Exist</div>";
        }

        return msg;

    }

    @Override
    public String addFeed(Feed feed) {
        String msg = "";
        if (em.find(Feed.class, feed.getId()) == null) {
            em.persist(feed);
            msg = "<div class='btn btn-success' >  Summitted </div>";
        } else {
            msg = " <div class='btn btn-error'>Already Exist</div>";
        }

        return msg;

    }

    @Override
    public String addPrevention(Prevention prevent) {
        String msg = "";
        if (em.find(Prevention.class, prevent.getId()) == null) {
            em.persist(prevent);
            msg = "<div class='btn btn-success' >  Summitted </div>";
        } else {
            msg = " <div class='btn btn-error'>Already Exist</div>";
        }

        return msg;

    }

    @Override
    public List<Animals> viewAnimals() {
        return em.createNamedQuery("Animals.findAll").getResultList();
    }

    @Override
    public List<Disease> viewDisease() {
        return em.createNamedQuery("Disease.findAll").getResultList();
    }

    @Override
    public List<Disease> viewDisease(String ida) {
        return em.createNamedQuery("Disease.findByIda").
                setParameter("ida", ida).getResultList();

    }

    @Override
    public List<Housing> viewHousing(String ida) {
        return em.createNamedQuery("Housing.findByIda").
                setParameter("ida", ida).getResultList();

    }

    @Override
    public List<Feed> viewFeed(String ida) {
        return em.createNamedQuery("Feed.findByIda").
                setParameter("ida", ida).getResultList();

    }

    @Override
    public List<Prevention> viewPrevention(String ida) {
        return em.createNamedQuery("Prevention.findByIda").
                setParameter("ida", ida).getResultList();

    }

    @Override
    public String editAnimal(Animals animal) {
        em.merge(animal);
        return "DONE";
    }

    @Override
    public Animals getAnimal(String id) {
        return em.find(Animals.class, id);
    }

    @Override
    public List<Feed> viewFeeds() {
        return em.createNamedQuery("Feed.findAll").getResultList();
    }

    @Override
    public List<Housing> viewHouse() {
        return em.createNamedQuery("Housing.findAll").getResultList();
    }

    @Override
    public List<Prevention> viewPreventio() {
        return em.createNamedQuery("Prevention.findAll").getResultList();
    }

    @Override
    public Disease viewD(String id) {
        return em.find(Disease.class, id);
    }

    @Override
    public Prevention viewP(String id) {
        return em.find(Prevention.class, id);
    }

    @Override
    public String checkUsername(String username) {
        Userlogin ul = null;
        try {
            ul = em.find(Userlogin.class, username);
        } catch (Exception e) {
        }
        return ul.getRole();
    }

    @Override
    public boolean validatePassword(String username, String password) {
        Userlogin ul = null;
        boolean bol = false;
        try {
            ul = em.find(Userlogin.class, username);
            bol = true;
        } catch (Exception e) {
            System.out.println(e.getMessage() + "error couldnot validate Password");
        }
        return (bol && ul.getPassword().equalsIgnoreCase(password));
    }

    @Override
    public boolean checkStatus(String username, String status) {
        boolean bol = true;
        Userlogin ul = null;
        try {
            ul = (Userlogin) em.createNamedQuery("Userlogin.findByUsernameAndStatus")
                    .setParameter("username", username)
                    .setParameter("Status", status)
                    .getSingleResult();
            bol = false;
        } catch (Exception e) {
        }
        return bol;
    }

    @Override
    public void removeUsers(String username) {
        Userlogin ul = null;
        try {
            ul = em.find(Userlogin.class, username);
            em.remove(ul);
        } catch (Exception poms) {
            System.out.println("Error cannto remove user due to " + poms.getMessage());
        }
    }

    @Override
    public List<Userlogin> viewAllUsers() {
        return em.createNamedQuery("Userlogin.findAll").getResultList();
    }

    @Override
    public void disableuser(String username) {
        Userlogin cs = null;
        try {
            cs = em.find(Userlogin.class, username);
            em.merge(cs).setStatus("0");
            //em.merge(cs).setStartdate(this.currentDate1());           
        } catch (Exception poms) {
        }
    }

    @Override
    public void enableuser(String username) {
        Userlogin cs = null;
        try {
            cs = em.find(Userlogin.class, username);
            em.merge(cs).setStatus("1");
        } catch (Exception poms) {
        }
    }

    @Override
    public List<Comment> viewComment(String ida) {
        return em.createNamedQuery("Comment.findByIda").
                setParameter("ida", ida).getResultList();
    }

    @Override
    public String addComment(Comment comment) {
        String msg = "";
        if (em.find(Comment.class, comment.getId()) == null) {
            em.persist(comment);
            msg = "<div class='btn btn-success' >  Summitted </div>";
        } else {
            msg = " <div class='btn btn-error'>Already Exist</div>";
        }

        return msg;
    }

    @Override
    public Comment viewCommentById(String id) {
        return em.find(Comment.class, id);
    }

    @Override
    public List<Comment> viewPendingComment( ) {
        return em.createNamedQuery("Comment.findByStatus").
                setParameter("status", "pending").getResultList();
    }

    @Override
    public String editComment(Comment comment) {
        em.merge(comment);
        return "done";
    }

    @Override
    public List<Comment> viewAllComment() {
        return em.createNamedQuery("Comment.findAll").getResultList();
    }

    @Override
    public List<Updates> viewUpdate() {
  
        return em.createNativeQuery("SELECT * FROM Updates u ORDER BY u.time DESC",Updates.class).getResultList();
    }

    @Override
    public String addUpdate(Updates u) {
         String msg = "";
         int size=em.createNamedQuery("Updates.findAll").getResultList().size();
        if(size<3){     
        if (em.find(Updates.class, u.getId()) == null) {
            em.persist(u);
            msg = "<div class='btn btn-success' >  Summitted </div>";
        } else {
            msg = " <div class='btn btn-error'>Already Exist</div>";
        }

        return msg;
        
        }else{
          List<Updates>lu =em.createNativeQuery("SELECT * FROM Updates u ORDER BY u.time DESC",Updates.class).getResultList();
          em.remove(lu.get(size-1));   
          em.persist(u);
             return msg;
        }
    }

    @Override
    public String removeUpdate(Updates u) {
         em.remove(u);
         return"done";
    }

    @Override
    public String editUpdate(Updates u) {
        em.merge(u);
        return "done";
    }

    @Override
    public String generateUpdateID() {
      String f="up";
        Random r=new Random();
       for(int i=0;i<6;i++){
           f=f+Integer.toString(r.nextInt(9));
       }
        return f ;
    }

    @Override
    public String deleteLivestock(String ida) {
        Animals a = null;
      a= em.find(Animals.class, ida);
      if(a!= null){
        List<Comment> c=em.createNamedQuery("Comment.findByIda").
                setParameter("ida", a.getId()).getResultList();
        if(c!=null){
           for(Comment v:c ) {
           em.remove(v);
           } 
        }
       
        List<Feed> f=em.createNamedQuery("Feed.findByIda").
                setParameter("ida", a.getId()).getResultList();
        if(f!=null){
           for(Feed d:f ) {
           em.remove(d);
           } 
        }
         List<Housing> h=em.createNamedQuery("Housing.findByIda").
                setParameter("ida", a.getId()).getResultList();
        if(h!=null){
           for(Housing l:h ) {
           em.remove(l);
           } 
        }
       
         
         em.remove(a);
      }
      else return "a is null";
       
        return "done ";
    }

    @Override
    public void editHousing(Housing h) {
        em.merge(h);
    }
    @Override
    public void editFeeeds(Feed h) {
        em.merge(h);
    }
@Override
    public void editDisease(Disease h) {
        em.merge(h);
    }

    @Override
    public String generateClientID() {
        
        String f="cl";
        Random r=new Random();
       for(int i=0;i<6;i++){
           f=f+Integer.toString(r.nextInt(9));
       }
        return f ;
    }

    @Override
    public String editClient(Client client) {
        String msg = "";
        if (em.find(Client.class, client.getId()) != null) {
            em.merge(client);
            msg = "<div class='btn btn-success' >  Summitted </div>";
        } else {
            msg = " <div class='btn btn-error'>Error Not Found </div>";
        }

        return msg;
    }

    @Override
    public String addClient(Client client) {
       String msg = "";
       
        if (em.find(Client.class, client.getId())== null) {
            em.persist(client);
            msg = "<div class='btn btn-success' >  Summitted </div>";
        } else {
            msg = " <div class='btn btn-error'>Already Exist</div>";
        }

        return msg;
    }

    @Override
    public String removeClient(Client client) {
       String msg = "";
        if (em.find(Client.class, client.getId()) != null) {
            em.remove(client);
            msg = "<div class='btn btn-success' > Removed </div>";
        } else {
            msg = " <div class='btn btn-error'> User Not Found </div>";
        }

        return msg;
    }

    @Override
    public boolean clienExist(String id) {
        
        if ( em.find(Client.class, id) != null)
           return false;
           return true;
           
    }

    @Override
    public Client getClient(String id) {
        
        if (em.find(Client.class, id) != null) {
           return em.find(Client.class, id) ;
           
        } else {
        return null;    
        }

        
    }

    @Override
    public boolean emailExist(String email) {
        
        if(em.createNativeQuery("SELECT *FROM Client where email='"+email+"'",Client.class).getResultList().size()>0){
             System.out.println("emailExist return true;");
            return true;
           
        }
          System.out.println("emailExist return false;");
        return false;
    }

    @Override
    public boolean clientExist(String name, String password) {
       if( em.createNativeQuery("SELECT *FROM Client WHERE  name = '"+name+"' and  password = '"+password+"'",Client.class).getResultList().size()>0){
         System.out.println("user Exist return true;");
            return true;
           
        }
          System.out.println("usert Exist return false;");
        return false;
    }

    @Override
    public List<Client> getClientt(String name, String password) {
        return  em.createNativeQuery("SELECT *FROM Client WHERE name = '"+name+"' and  password = '"+password+"'",Client.class).getResultList() ;
    }

    @Override
    public List<Comment> viewCommentbyClientID(String idc) {
        
        return em.createNamedQuery("Comment.findByIdc",Comment.class).setParameter("idc", idc).getResultList();
    }
    
    
    
    
    
}
