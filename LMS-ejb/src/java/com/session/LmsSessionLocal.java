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
import javax.ejb.Local;

/**
 *
 * @author GBENGE AONDOAKULA
 */
@Local
public interface LmsSessionLocal {

    String addAnimal(Animals a);

    public void persist(Object object);

    String addDisease(Disease disease);

    String addHousing(Housing house);

    String addFeed(Feed feed);

   

    String addPrevention(Prevention prevent);

    public String generateAnimalID();

    public String generatecomentID();

    public String generateFeedID();

    public String generateHosingID();

    public String generateDiseaseID();

    public String generatePreventtionID();

    List<Animals> viewAnimals();

    List<Disease> viewDisease();

    List<Disease> viewDisease(String ida);

    public List<Housing> viewHousing(String ida);

    public List<Feed> viewFeed(String ida);

    public List<Prevention> viewPrevention(String ida);

   

    String editAnimal(Animals animal);

    Animals getAnimal(String id);

    List<Feed> viewFeeds();

    List<Housing> viewHouse();

    List<Prevention> viewPreventio();

    Disease viewD(String id);

    Prevention viewP(String id);

    String checkUsername(String username);

    boolean validatePassword(String username, String password);

    boolean checkStatus(String username, String status);

    void removeUsers(String username);

    List<Userlogin> viewAllUsers();

    void disableuser(String username);

    void enableuser(String username);
    List<Comment> viewComment(String ida);
   

    String addComment(Comment comment);

    Comment viewCommentById(String id);

    List<Comment> viewPendingComment( );

    String editComment(Comment comment);

    List<Comment> viewAllComment();

    List<Updates> viewUpdate();

    String addUpdate(Updates u);

    String removeUpdate(Updates u);

    String editUpdate(Updates u);

    String generateUpdateID();

    String deleteLivestock(String ida);

   
    public void editHousing(Housing h);
    public void editFeeeds(Feed h) ;
    public void editDisease(Disease h) ;

    String generateClientID();

    String editClient(Client client);

    String addClient(Client client);

    String removeClient(Client client);

    boolean clienExist(String name);

    Client getClient(String name);

    boolean emailExist(String email);

    boolean clientExist(String name, String password);

List<Client>  getClientt(String name, String password);

    List<Comment> viewCommentbyClientID(String idc);

}
