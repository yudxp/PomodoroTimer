//
//  BluetoothPeriph.swift
//  PomodoroTimer
//
//  Created by Yudha Hamdi Arzi on 02/08/22.
//

import SwiftUI

struct BluetoothPeriph: View {
  @ObservedObject private var bluetoothModel = BluetoothManager.shared
  
    var body: some View {
      NavigationView {
        List(bluetoothModel.peripheralNames, id: \.self) { peripheral in
          Text(peripheral)
        }
        .navigationTitle("Peripheral")
      }
    }
}

struct BluetoothPeriph_Previews: PreviewProvider {
    static var previews: some View {
        BluetoothPeriph()
    }
}
