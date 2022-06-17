//
//  LandmarkRow.swift
//  BuildingListsAndNavigation
//
//  Created by 김윤서 on 2022/06/15.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            /// landmark 이미지 사이즈 조정
            landmark.image
                .resizable() /// resizable을 먼저 선언해주어야 조정이 가능
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
            LandmarkRow(landmark: landmarks[2])
        }
        /// 셀의 크기로  preview를 볼 수 있다.
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
