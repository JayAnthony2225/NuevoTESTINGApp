//
//  RegistroLogInTest.swift
//  SingUp_TestinTests
//
//  Created by Marco Cruz Velázquez on 10/19/23.
//

import XCTest
@testable import SingUp_Testin

final class RegistroLogInTest: XCTestCase {
    let sut = ValidarNombreClase()
    func testSigupModel_whenNombreEsDado_ShouldPass(){
        //given
        let primerNombre = "Miguel"   //User Name
       
        //when
        let nombreValido = sut.FuncionQueValidaNombre(nombre: primerNombre)
        //then/Asset
        XCTAssertTrue(nombreValido, "Este es el happyPad")
    }
    
    func testSigupFuntion_whenNombreEsDadoyEsVacio_ShouldNOTPass(){
        //given
        let primerNombre = ""
       
        //when
        let nombreNovalido = sut.FuncionQueValidaNombre(nombre: primerNombre)
        //Assert
        XCTAssertFalse(nombreNovalido, "Este Assert espera un FALSE porque es nombre es vacio, si regresa TRUE es porque esta mal")
    }
    
    
    func testSigupModel_whenNombreEsDemaciadoCorto_ShouldNOTPass(){
        //given
        let primerNombre = "Mk"   //User Name
      
        //when
        let nombreValido = sut.FuncionQueValidaNombre(nombre: primerNombre)
        //then/Asset
        XCTAssertFalse(nombreValido, "Este testCase no debe pasar si el nombre es demasiado corto")
    }
    
    
    func testSigupModel_whenNombreEsDemaciadoLargo_ShouldNOTPass(){
        let primerNombre = "Mksadasdasdasd"   //User Name
        
        //when
        let nombreValido = sut.FuncionQueValidaNombre(nombre: primerNombre)
        //then/Asset
        XCTAssertFalse(nombreValido, "Este testCase no debe pasar si el nombre es demasiado largo")
    }
    
    
    func testSignUpModel_WhenEqualPasswordProvided_ShouldReturnTrue(){
        
        let doPassWordsMatch = sut.doPasswordsMatch(password: "123123", repearPassword: "123123")
        XCTAssertTrue(doPassWordsMatch, "debe regresar TRUE cuando concidan los passwords , pero ha regresado FALSE")
        
    }
    
    func testSignUpModel_WhenPasswordisNOTEqual_ShouldReturnFALSE(){
    
        
        let doPassWordsMatch = sut.doPasswordsMatch(password: "1231236", repearPassword: "123123")
        XCTAssertFalse(doPassWordsMatch, "debe regresar FALSE cuando NO concidan los passwords , pero ha regresado TRUE")
        
    }
}
