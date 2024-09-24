//
//  HeaderView.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 18/9/2024.
//

import SwiftUI

struct HeaderView: View {
        // MARK: - Properties
    @Binding var showInfoView: Bool
    let haptics = UINotificationFeedbackGenerator()
    
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 28)
            
            Image("logo-whoswill-black")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
                .padding(.horizontal, 50)
            
            Spacer()
            
            Button {
                self.haptics.notificationOccurred(.success)
                self.showInfoView.toggle()
            } label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showInfoView, content: {
                InfoView()
            })
        }
        .padding()
    }
}

#Preview {
    @Previewable @State var showInfo: Bool = false
    
    return HeaderView(showInfoView: $showInfo)
}
