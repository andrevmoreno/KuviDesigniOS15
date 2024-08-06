//
//  FeatureItem.swift
//  KuviDesigniOS15
//
//  Created by Andrea Moreno on 31-07-24.
//

import SwiftUI

struct FeatureItem: View {
    var course: Course = courses[0]
    
    var body: some View {
        VStack {
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 8.0) {
                Spacer()
                //Logo
                Image(course.logo).resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 26, height: 26).cornerRadius(10)
                    .padding(9)
                    .background(.ultraThinMaterial)
                    .cornerRadius(30)
                    .strokeStyle()
                    .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x:0, y: 10)
                //Text Box
                Text(course.title)
                    .font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)],startPoint: .topLeading, endPoint: .bottomTrailing)).lineLimit(1)
                
                Text(course.subtitle.uppercased())
                    .font(.footnote).fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/).foregroundStyle(.linearGradient(colors: [.secondary, .primary.opacity(0.3)],startPoint: .topLeading, endPoint: .bottomTrailing)).lineLimit(1)
                
                Text(course.image)
                    .font(.caption).multilineTextAlignment(.leading)
                    .lineLimit(2).frame(maxWidth: .infinity,alignment: .leading).foregroundColor(.secondary)
            }
            .padding(.all,20)
            .frame(height: 350)
            .background(.ultraThinMaterial)
            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
            //.cornerRadius(30.0)
            .strokeStyle()
            .padding(.horizontal, 20)

            
            Spacer()
            
            VStack(alignment: .leading,spacing: 12) {
         
                
             /*   HStack (spacing: 20.0){
                    handbook
                    reactHandbook
                }*/
            }
        }
    
}
var handbook: some View {
    
    VStack(alignment: .leading, spacing: 10) {
        ZStack {
            VStack(alignment: .leading, spacing: 8.0){
                Image("Illustration 4").resizable().aspectRatio(contentMode: .fill).frame(width: 130, height: 105, alignment: .center)

            }.background(.ultraThinMaterial)
            .cornerRadius(20.0)
        }

        //Title
        Text("SwiftUI Handbook")
            .font(.title2).fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/).foregroundColor(.black)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        //Hours
        Text("80 sections - 9 hours")
            .font(.footnote).fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
        //Text
        Text("A comprehensive series of tutorials...")
            .font(.footnote)
            .foregroundColor(.black)
        .frame(maxWidth: .infinity, alignment: .topLeading)
        
    }.padding()
        .frame(width: 160, alignment: .topLeading)
        .background(.ultraThinMaterial)
        .background(
        LinearGradient(
        stops: [
        Gradient.Stop(color: Color(red: 0.39, green: 0.04, blue: 0.55).opacity(0.3), location: 0.00),
        Gradient.Stop(color: Color(red: 0.25, green: 0.55, blue: 0.84).opacity(0.3), location: 1.00),
        ],
        startPoint: UnitPoint(x: 0.5, y: 0),
        endPoint: UnitPoint(x: 0, y: 0.98)
        )
        )
        .cornerRadius(30)
        .shadow(color: Color("Shadow").opacity(0.15), radius: 10, x:0, y: 10)
        .strokeStyle()
}
    var reactHandbook: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            ZStack {
                VStack(alignment: .leading, spacing: 8.0){
                    Image("Illustration 4").resizable().aspectRatio(contentMode: .fill).frame(width: 130, height: 105, alignment: .center)
                    
                }.background(.ultraThinMaterial)
                    .cornerRadius(20.0)
            }
            
            //Title
            Text("React Hooks Advanced")
                .font(.title2).fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/).foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.4)],startPoint: .topLeading, endPoint: .bottomTrailing)).foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            //Hours
            Text("20 sections - 3 hours")
                .font(.footnote).fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
            //Text
            Text("A comprehensive series of tutorials...")
                .font(.footnote)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            
        }.padding()
            .frame(width: 160, alignment: .topLeading)
            .background(.ultraThinMaterial)
            .background(
                LinearGradient(
                    stops: [
                        Gradient.Stop(color: Color(red: 0.51, green: 0.25, blue: 0.74).opacity(0.3), location: 0.00),
                        Gradient.Stop(color: Color(red: 0.88, green: 0.28, blue: 0.52).opacity(0.7), location: 0.54),
                        Gradient.Stop(color: Color(red: 0.98, green: 0.65, blue: 0.55).opacity(0.3), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: 0.5, y: 0),
                    endPoint: UnitPoint(x: 0.5, y: 1)
                )
            )
            .cornerRadius(30)
            .shadow(color: Color("Shadow").opacity(0.15), radius: 10, x:0, y: 10)
            .strokeStyle()


    }
}

#Preview {
    FeatureItem()
}
