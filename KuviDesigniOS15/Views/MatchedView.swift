//
//  MatchedView.swift
//  KuviDesigniOS15
//
//  Created by Andrea Moreno on 05-08-24.
//

import SwiftUI

struct MatchedView: View {
    @Namespace var namespace
    @State var show = false
    
    var body: some View {
        ZStack {
            if !show {
                VStack {
                    Spacer()
                    //Title
                    VStack (alignment: .leading, spacing: 12) {
                        Text("SwiftUI")
                            .font(.title)
                            .fontWeight(.bold)
                            .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        //Subtitle
                        Text("20 sections - 3 hours")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .matchedGeometryEffect(id: "subtitle", in: namespace)
                        //Caption
                        Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .matchedGeometryEffect(id: "text", in: namespace)
                        
                    }.padding(20)
                    .background(
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                            .blur(radius: 30)
                            .matchedGeometryEffect(id: "blur", in: namespace)
                        )
                    
                }.foregroundColor(.white)
                    .background(
                        Image("Illustration 9")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .matchedGeometryEffect(id:"image", in: namespace))
                    .background(
                        Image("Background 5")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .matchedGeometryEffect(id:"background", in: namespace))
                    .mask(
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .matchedGeometryEffect(id:"mask", in: namespace)).padding(20)
                    .frame(width: .infinity, height: 300)
            }
            else{
                //Subtitle
                ScrollView {
                    VStack {
                        Spacer()
                       
                        
                    }.frame(maxWidth: .infinity)
                    .overlay(
                        VStack(alignment: .leading, spacing: 12){
                        //Caption
                        Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .matchedGeometryEffect(id: "text", in: namespace)
                        
                        Text("20 sections - 3 hours")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .matchedGeometryEffect(id: "subtitle", in: namespace)
                        
                        Text("SwiftUI")
                            .font(.title)
                            .fontWeight(.bold)
                            .matchedGeometryEffect(id: "title", in: namespace)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                            .background(
                            Rectangle()
                                .fill(.ultraThinMaterial)
                                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                .matchedGeometryEffect(id: "blur", in: namespace)
                            ).offset(y: 100)
                    )
                    .frame(height: 300)
                        .padding(20)
                        .foregroundColor(.white)
                        .background(
                            Image("Illustration 9")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .matchedGeometryEffect(id:"image", in: namespace))
                        .background(
                            Image("Background 5")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .matchedGeometryEffect(id:"background", in: namespace))
                    
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .matchedGeometryEffect(id:"mask", in: namespace))
                }
                
            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                show.toggle()
            }
        }
    }
}

#Preview {
    MatchedView()
}
