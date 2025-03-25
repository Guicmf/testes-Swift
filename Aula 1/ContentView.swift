//
//  ContentView.swift
//  Aula 1
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI


struct ContentView: View {
    
    @State private var idadehumana: String = ""
    
    @State private var idadecachorro: String = ""
    
    }
    
    var body: some View {
        VStack {
            Image(systemName: "cachorro")
                .foregroundColor(.accentColor)
            
            Text("Calculadora de Idade Canina")
            
            
            TextField("Digite a idade humana",
                      text:$idadehumana).padding(3.0).textFieldStyle(.roundedBorder)
               
            
            Button(action: Calcular) {
                Text("Calcular")
            }
            
           if !idadecachorro.isEmpty {
               Text("Idade em anos caninos: \(idadecachorro)")
               .font(.headLine)
               .padding()
            
        }
        .padding()
    }
func Calcular () {
 if let age = Int(idadehumana) {
     let result = age * 7
     idadecachorro = "\(result) anos"
 } else {
     idadecachorro = "Digite um número válido"
}     
}   
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
