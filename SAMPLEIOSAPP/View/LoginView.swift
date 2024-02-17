//
//  SamopleUI.swift
//  SAMPLEIOSAPP
//
//  Created by Mangi Wimalaweera on 2024-02-10.
//

import SwiftUI

struct LoginView: View {
    @StateObject var loginVM : LoginViewModel = LoginViewModel()
    
    var body: some View {
        ZStack(content: {
            LinearGradient(colors: [Color.blue.opacity(0.5), Color.green.opacity(0.6)], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(height: 380)
                .foregroundColor(.white)
                .padding(EdgeInsets(top: 50, leading: 20, bottom: 50, trailing: 20))
            
            
            VStack(content: {
                
                if loginVM.showError {
                    Text(loginVM.errorMessage)
                        .frame(height: 72)
                        .font(.system(size: 16))
                        .foregroundColor(.red)
                        .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
                }
                
                VStack {
                    TextField("Username", text: $loginVM.username)
                            .padding()
                            .textFieldStyle(DefaultTextFieldStyle())
                    
                    TextField("Password", text: $loginVM.password)
                            .padding()
                            .textFieldStyle(DefaultTextFieldStyle())
                        }
                        .padding()
                
                Button(action: {
                    loginVM.verifyLogin()
                }, label: {
                    ZStack(content: {
                        RoundedRectangle(cornerRadius: 8.0)
                            .frame(height: 50)
                            .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
                        Text("LOGIN")
                            .foregroundColor(.white)
                    })
                })
            })
            NavigationLink("", isActive: $loginVM.success) {
                Text("Hello!")
            }
        })
    }
}

#Preview {
    LoginView()
}
