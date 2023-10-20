//
//  ValidarNombreClase.swift
//  SingUp_Testin
//
//  Created by Marco Cruz Velázquez on 10/19/23.
//

import Foundation

class ValidarNombreClase{
    
    func FuncionQueValidaNombre(nombre: String) -> Bool {
        var valorDeRegreso = true
        
        if nombre.count < 3 || nombre.count > 10 {
            valorDeRegreso = false
        }
        return valorDeRegreso
    }
    
    func doPasswordsMatch(password: String, repearPassword: String) -> Bool{
       
        return password == repearPassword
    }
}
