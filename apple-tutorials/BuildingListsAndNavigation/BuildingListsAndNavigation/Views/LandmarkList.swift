//
//  LandmarkList.swift
//  BuildingListsAndNavigation
//
//  Created by 김윤서 on 2022/06/16.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        /// Lists work with identifiable data
        ///  1)  identifies each element (ex. \.id)
        ///  2)  Identifiable protocol
        List(landmarks) { landmark in
            NavigationLink {
                LandMarkDetail(landmark: landmark)
            } label: {
                LandmarkRow(landmark: landmark)
            }
            
        }
        .navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
