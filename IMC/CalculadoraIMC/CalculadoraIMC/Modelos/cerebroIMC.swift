//
//  cerebroIMC.swift
//  CalculadoraIMC
//
//  Created by marco rodriguez on 06/10/21.
//

import Foundation
import UIKit




struct cerebroIMC {
    
    var imc: objetoIMC?
    
    let color: UIColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    //metodos para hacer el calculo
    mutating func calcularIMC(peso: Float, altura: Float){
        let valorIMC = peso / (altura * altura)
        
        if valorIMC < 18.5 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Probabilidad de anemia, Cuidate!!!", color:  #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), imagen: #imageLiteral(resourceName: "desnutrido"))
            print(valorIMC)
        }
        else if valorIMC < 24.9 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Tu IMC es normal, Felicidades!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), imagen: UIImage(systemName: "Normal") ?? #imageLiteral(resourceName: "Normal"))
            print(valorIMC)
            
        } else if valorIMC < 29.9 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Tienes sobrepeso atencion!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), imagen: UIImage(systemName: "sobre") ?? #imageLiteral(resourceName: "sobre"))
            print(valorIMC)
        } else {
            imc = objetoIMC(valor: valorIMC, mensaje: "Tienes obesidad Extrema", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), imagen: UIImage(systemName: "obeso") ?? #imageLiteral(resourceName: "obeso"))
        }
    }
    
    func retornarValorIMC() -> String {
        let imcCon1Decimal = String(format: "%.1f", imc?.valor ?? 0.0)
        return imcCon1Decimal
    }
    
    func retornarColor () -> UIColor {
        return imc?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func retornarMSJ() -> String {
        return imc?.mensaje ?? "Sin MSJ"
    }
    
    func retornarImage() -> UIImage {
        return imc?.imagen ?? #imageLiteral(resourceName: "imc")
    }
    
    
    
}
