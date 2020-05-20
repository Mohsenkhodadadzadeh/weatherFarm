//
//  craftImageView.swift
//  WeatherFarm
//
//  Created by mohsen on 2020-02-25.
//  Copyright © 2020 mohsen. All rights reserved.
//

import SwiftUI

struct craftImageView: View {
    var image: Image
    var body: some View {
        VStack {
            image
                .resizable()
                .scaledToFit()
        }.padding([.trailing, .leading], 50)
    }
}

struct craftImageView_Previews: PreviewProvider {
    static var previews: some View {
        craftImageView(image: Image("lightCraft"))
    }
}
