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
            
            Text($idadecachorro)
            
        }
        .padding()
    }
func Calcular () {
    if{Int(idadehumana) > 0
        $idadecachorro = Int($idadehumana) * 7}
    else  {}
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
