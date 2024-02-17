//
//  LoginViewModel.swift
//  SAMPLEIOSAPP
//
//  Created by Mangi Wimalaweera on 2024-02-10.
//

import Foundation

class LoginViewModel : ObservableObject {
    @Published var username : String = ""
    @Published var password : String = ""
    @Published var showError : Bool = false
    @Published var errorMessage : String = ""
    @Published var success : Bool = false
    
    func verifyLogin() {
        if username.isEmpty || password.isEmpty {
            showError = true
            errorMessage = "Please fill in both password and the username fields"
        } else if username.lowercased() == "abc" && password == "123" {
            showError = false
            success = true
        } else {
            showError = true
            errorMessage = "Username and password missmatched. Please try again!"
        }
    }
}
