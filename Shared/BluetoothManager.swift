//
//  BluetoothManager.swift
//  PomodoroTimer
//
//  Created by Yudha Hamdi Arzi on 02/08/22.
//

import Foundation
import CoreBluetooth

class BluetoothManager: NSObject, ObservableObject {
  private var centralManager: CBCentralManager?
  private var peripherals: [CBPeripheral] = []
  @Published var peripheralNames: [String] = []
  private var timeStamp: Double = 0.0
  
  static let shared = BluetoothManager()
  
  override init(){
    super.init()
    self.centralManager = CBCentralManager(delegate: self, queue: .main)
  }
  
  func epochTime(timeData: Double)->NSDate{
    let date = NSDate(timeIntervalSince1970: timeData)
    return date
  }
  
}

extension BluetoothManager: CBCentralManagerDelegate {
  func centralManagerDidUpdateState(_ central: CBCentralManager) {
    if central.state == .poweredOn {
      self.centralManager?.scanForPeripherals(withServices: nil)
    }
  }
  
  func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
    if !peripherals.contains(peripheral) {
      self.peripherals.append(peripheral)
      self.peripheralNames.append(peripheral.name ?? "Unnamed device")
    }
  }
  
//  func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
//    <#code#>
//  }
//  
//  func centralManager(_ central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?) {
//    <#code#>
//  }
  
}
