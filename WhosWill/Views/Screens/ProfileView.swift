//
//  ProfileView.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 18/9/2024.
//

import SwiftUI

struct ProfileView: View {
    // MARK: - Properties
    @State var showInfo: Bool = false
    @State var showGuide: Bool = false

    var body: some View {
        VStack {
            HeaderView(showInfoView: $showInfo)
            
            Spacer()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                        // Header
                    HStack {
                        Text("👋 Hi, I’m @WillLam-852")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Spacer()
                        
                        Image("profile")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                    }
                    .padding(.top, 20)
                    
                        // Location
                    Text("📍 From Hong Kong")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Spacer()

                    SessionRowComponent(title: "About Me", texts: ProfileData.aboutMe)
                    
                        // Quote
                    HStack {
                        Spacer()
                        Text(ProfileData.quote)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .italic()
                        Spacer()
                    }
                    .padding(.vertical, 20)
                    
                    Spacer()
                    
                    SessionRowComponent(title: "Mobile App", textWithIcons: ProfileData.mobileAppDevelopmentSkills.map { $0.converttoTextWithIcon() } )
                    
                    Spacer()

                    SessionRowComponent(title: "Web Frontend", textWithIcons: ProfileData.webFrontendDevelopmentSkills.map { $0.converttoTextWithIcon() } )
                }
                .padding()
                .frame(maxWidth: .infinity)
                
                Spacer()
                
                Text("Education")
                    .modifier(TitleModifier())
    
                VStack(alignment: .leading, spacing: 20) {
                    SessionCardView(
                        backgroundColor: Color.blue,
                        title: educationData[0].organizationName,
                        subtitle: educationData[0].position,
                        subheadline: "\(educationData[0].startDate.toMMMMyyyyString()) - Present",
                        bodys: educationData[0].descriptions
                    )
                    
                    SessionCardView(
                        backgroundColor: Color.green,
                        title: educationData[1].organizationName,
                        subtitle: educationData[1].position,
                        subheadline: "Class of 2021",
                        bodys: educationData[1].descriptions
                    )
                }
            }
            
        }
    }
}

#Preview {
    ProfileView()
}
