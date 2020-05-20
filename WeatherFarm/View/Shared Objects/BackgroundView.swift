//
//  BackgroundView.swift
//  WeatherFarm
//
//  Created by mohsen on 2020-02-24.
//  Copyright © 2020 mohsen. All rights reserved.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [ Color("EndBackground"), Color("StartBackground")]), startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
