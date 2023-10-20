//
//  RegistroLogInTest.swift
//  SingUp_TestinTests
//
//  Created by Marco Cruz Velázquez on 10/19/23.
//

import XCTest
@testable import SingUp_Testin

final class RegistroLogInTest: XCTestCase {
    
    func testSigupModel_whenNombreEsDado_ShouldPass(){
        //given
        let primerNombre = "Miguel"   //User Name
        let sut = ValidarNombreClase()
        //when
        let nombreValido = sut.FuncionQueValidaNombre(nombre: primerNombre)
        //then/Asset
        XCTAssertTrue(nombreValido, "Este es el happyPad")
    }
    
    func testSigupFuntion_whenNombreEsDadoyEsVacio_ShouldNOTPass(){
        //given
        let primerNombre = ""
        let sut = ValidarNombreClase()
        //when
        let nombreNovalido = sut.FuncionQueValidaNombre(nombre: primerNombre)
        //Assert
        XCTAssertFalse(nombreNovalido, "Este Assert espera un FALSE porque es nombre es vacio, si regresa TRUE es porque esta mal")
    }
    
    
    func testSigupModel_whenNombreEsDemaciadoCorto_ShouldNOTPass(){
        //given
        let primerNombre = "Mk"   //User Name
        let sut = ValidarNombreClase()
        //when
        let nombreValido = sut.FuncionQueValidaNombre(nombre: primerNombre)
        //then/Asset
        XCTAssertFalse(nombreValido, "Este testCase no debe pasar si el nombre es demasiado corto")
    }
   
    
    func testSigupModel_whenNombreEsDemaciadoLargo_ShouldNOTPass(){
        let primerNombre = "Mksadasdasdasd"   //User Name
        let sut = ValidarNombreClase()
        //when
        let nombreValido = sut.FuncionQueValidaNombre(nombre: primerNombre)
        //then/Asset
        XCTAssertFalse(nombreValido, "Este testCase no debe pasar si el nombre es demasiado largo")
    }
}
