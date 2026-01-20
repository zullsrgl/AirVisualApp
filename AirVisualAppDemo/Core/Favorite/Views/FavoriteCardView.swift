//
//  FavoriteCardView.swift
//  AirVisualAppDemo
//
//  Created by Zülal Sarıoğlu on 16.01.2026.
//

import SwiftUI

struct FavoriteCardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(Color("primary").opacity(0.3))
                .frame(height: 150)
            HStack{
                VStack(alignment: .leading){
                    Text("Turkey")
                        .foregroundStyle(Color("black").opacity(0.5))
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .padding(.leading,16)
                    
                    Text("Sakarya")
                        .foregroundStyle(Color("black").opacity(0.5))
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .padding(.leading,16)
                }
                Spacer()
                VStack {
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundStyle(Color("primary"))
                            .frame(width: 100, height: 60)
                        
                        Text("12")
                            .foregroundStyle(.white)
                            .font(.system(size: 32, weight: .semibold))
                        
                    }
                    .padding(.trailing, 16)
                    
                    Text("Good")
                        .foregroundStyle(Color("primary"))
                        .font(.system(size: 16, weight: .semibold))
                }
                
            }
        }
    }
}

#Preview {
    FavoriteCardView()
}
