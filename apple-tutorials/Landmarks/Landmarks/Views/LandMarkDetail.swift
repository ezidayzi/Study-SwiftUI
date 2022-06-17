//
//  LandMarkDetail.swift
//  BuildingListsAndNavigation
//
//  Created by 김윤서 on 2022/06/16.
//

import SwiftUI

struct LandMarkDetail: View {
    var landmark: Landmark

    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height:300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(landmark.name)
                    .font(.largeTitle)
                    .foregroundColor(.green)
                HStack{
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.caption)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkDetail(landmark: landmarks[0])
    }
}
