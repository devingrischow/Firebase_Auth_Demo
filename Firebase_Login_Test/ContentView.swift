//
//  ContentView.swift
//  Firebase_Login_Test
//
//  Created by Devin Grischow on 10/23/23.
//

import SwiftUI
import Firebase
import Firebase


struct ContentView: View {
    
    //@State makes the variable "Globally" accessible. Without it the variable would be private to this struct.
    
    //@State makes it so the value is able to change and be mutable.
    
    @State private var email:String = ""
    @State private var password:String = ""
    
    
    var body: some View {
        VStack {
            
            Text("Welcome To The Basic Signup and Login Demonstration!")
                //sets the text style to be like a poem, Centered
                .multilineTextAlignment(.center)
            
            TextField("Email", text: $email)
            //Text Field Modifiers
                .foregroundColor(.black)
                .bold()
                .textFieldStyle(.plain)
            
            //Just a Simple line Dividing the sections
            Rectangle()
                .frame(width: 350, height: 1)
                .foregroundColor (.black)
            
            
            /*
             This Secure Field is similar to password fields youve seen before
             By default everything in this field is
             hidden to the user
             */
            SecureField("Password: ", text: $password)
            
            
            //Another Divider
            Rectangle()
                .frame(width: 350, height: 1)
                .foregroundColor (.black)
            
            
            /*
             Go Button:
             This buttons purpose is to when clicked
             Call the function to register a new user.
        
             */
            
            Button{
                
                registerNewUser()
                
            }label: {
                //Button Modifiers for rounded look.
                Text("Sign UP!")
                    .padding([.bottom, .top], 20)
                
                    .frame(width: 100)
                    .background(.orange)
                    .cornerRadius(15)
            }
            
            
        }
        .padding()
    }
    
    //Firebase Handles both new logins and new users similarly, but here would most likely be a check in
    func registerNewUser(){
        
        /*
         This is a function from the firebase Auth Library
         
         All this function does is create a new user with the given parameters: withEmail and a password.
         The format you see with this function is how we can manipulate the function to throw out a error when something occurs.
         */
        
        
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            
            if error != nil {
                print(error!.localizedDescription)
                
                //Here if we wanted to we could present a popup to the user explaining a error occured and they cant be logged it.
                
            }
            
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
