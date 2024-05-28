//
//  ContentView.swift
//  retosSemanales
//
//  Created by Alejandro García on 27/05/24.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Título
                Text("Bienvenido")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal, 32)
                    .padding(.top, 8)

                // App del día
                VStack(alignment: .leading) {
                    Text("App del día")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 32)
                        .padding(.top, 8)
                    
                    Image("app_of_the_day_image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 32)
                        .padding(.top, 8)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    Text("APP OF THE DAY")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                        .padding(.top, 8)
                    
                    Text("TIK TOK")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                        .padding(.top, 8)
                    
                    Button(action: {
                        // Acción del botón "Descubrir"
                    }) {
                        Text("Descubrir")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .padding(.horizontal, 32)
                            .padding(.top, 8)
                    }
                }
                .background(Color.black)
                .cornerRadius(20)
                .padding(.horizontal, 32)
                .padding(.top, 8)
                
                // Destacadas
                VStack(alignment: .leading) {
                    Text("Destacadas")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 32)
                        .padding(.top, 8)
                    
                    // Ejemplo de aplicación destacada
                    HStack {
                        Image(systemName: "message.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.green)
                        
                        VStack(alignment: .leading) {
                            Text("Whatsapp")
                                .font(.headline)
                                .fontWeight(.bold)
                            
                            Button(action: {
                                // Acción del botón "Descubrir"
                            }) {
                                Text("Descubrir")
                                    .font(.subheadline)
                                    .foregroundColor(.blue)
                            }
                        }
                        .padding(.leading, 8)
                    }
                    .padding(.horizontal, 32)
                    .padding(.top, 8)
                    
                    // Otra aplicación destacada
                    HStack {
                        Image(systemName: "message.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.blue)
                        
                        VStack(alignment: .leading) {
                            Text("Facebook")
                                .font(.headline)
                                .fontWeight(.bold)
                            
                            Button(action: {
                                // Acción del botón "Descubrir"
                            }) {
                                Text("Descubrir")
                                    .font(.subheadline)
                                    .foregroundColor(.blue)
                            }
                        }
                        .padding(.leading, 8)
                    }
                    .padding(.horizontal, 32)
                    .padding(.top, 8)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

