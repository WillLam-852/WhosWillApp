//
//  HomeView.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 18/9/2024.
//

import SwiftUI

struct HomeView: View {
    // MARK: - Properties
    @State var showInfo: Bool = false
    @State var showGuide: Bool = false

    var body: some View {
        VStack {
            HeaderView(showInfoView: $showInfo, showGuideView: $showGuide)
            
            Spacer()
            
            ScrollView {
                VStack {
                    
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    HomeView()
}
