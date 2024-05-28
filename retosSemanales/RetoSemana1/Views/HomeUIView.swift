//
//  HomeUIView.swift
//  retosSemanales
//
//  Created by Alejandro García on 27/05/24.
//

import SwiftUI
let principalData: PrincipalArray = PrincipalArray(image: "principalImage", imageApp: "tiktok", title: "APP OF THE DAY", titleApp: "TIK TOK")
let featuredData: [FeaturedArray] = [
    FeaturedArray(imageApp: "whatsApp", titleApp: "WhatsApp", backgroundApp: Color(red: 0.922, green: 0.958, blue: 0.94)),
    FeaturedArray(imageApp: "Facebook", titleApp: "FaceBook", backgroundApp: Color(red: 0.937, green: 0.945, blue: 0.958)),
    FeaturedArray(imageApp: "x", titleApp: "X", backgroundApp: Color(red: 0.222, green: 0.258, blue: 0.24))]

private var showAlert = false // Estado para controlar la visibilidad de la alerta

struct HomeUIView: View {
    
    
    var body: some View {
        ScrollView {
            // Title
            TitleView()
            // App del día
            AppDay()
            // Destacadas
            featuredView()
        }
    }
}

#Preview {
    HomeUIView()
}

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // Título
            Text("Bienvenido")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal, 32)
                .padding(.top, 8)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        
    }
    
}

struct AppDay: View {
    @State private var showAlert = false
    var body: some View {
        VStack(alignment: .leading) {
            Text("App del día")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.horizontal, 32)
                .padding(.top, 8)
            
            ZStack {
                Image(principalData.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 320)
                    .clipped()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                VStack(alignment: .leading) {
                    Image(principalData.imageApp)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipped()
                        .frame(width: 75, height: 75)
                        .padding(.top, 10)
                    
                    Text(principalData.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                        .frame(width: 140.0)
                    
                    
                    HStack(spacing: 30) {
                        Text(principalData.titleApp)
                            .frame(width: 120, alignment: .leading)
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                        Button(action: {
                            showAlert = true
                        }) {
                            Text("Obtener")
                                .padding(.horizontal, 12)
                                .padding(.vertical, 4)
                                .font(.body)
                                .foregroundColor(.blue)
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.blue, lineWidth: 1)
                                )
                                .alert(isPresented: $showAlert) {
                                    Alert(
                                        title: Text("Hola Mundo"),
                                        message: Text("Sedescarga la app"),
                                        dismissButton: .default(Text("OK"))
                                    )
                                }
                        }
                        .padding(.leading, 50)
                        
                        
                    }
                    .padding(.top, 3)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(.leading, 18)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 32)
            .padding(.top, 8)
        }
    }
}

struct featuredView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Destacadas")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.horizontal, 32)
                .padding(.top, 8)
            featuredAppView()
        }
    }
}

struct featuredAppView: View {
    @State private var showAlert = false
    var body: some View {
        
        ForEach(featuredData) { item in
            
            HStack{
                Image(item.imageApp)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.green)
                    .cornerRadius(10)
                    .padding(.leading, -70 )
                
                VStack(alignment: .leading) {
                    Text(item.titleApp)
                        .font(.headline)
                            .fontWeight(.bold)
                            .frame(width: 150, alignment: .leading)
                            .padding(.leading, 0)
                        
                    Button(action: {
                        showAlert = true
                    }) {
                        Text("Obtener")
                            .fontWeight(.semibold)
                            .padding(.horizontal, 6)
                            .padding(.vertical, 4)
                            .font(.system(size: 14))
                            .foregroundColor(.blue)
                            .background(Color.white)
                            .cornerRadius(10)
                            .alert(isPresented: $showAlert) {
                                Alert(
                                    title: Text("Hola Mundo"),
                                    message: Text("ConCredito, somos familia"),
                                    dismissButton: .default(Text("OK"))
                                )
                            }
                    }
                    
                }
                .padding(.vertical, 8)
                
            }
            .frame(height: 90)
            .frame(maxWidth: .infinity)
            .background(item.backgroundApp)
            .cornerRadius(10)
            
            
        }
        .padding(.horizontal, 25)
        
        
    }
    
}

