//
//  SettingsView.swift
//  AirVisualAppDemo
//
//  Created by Zülal Sarıoğlu on 16.01.2026.
//

import SwiftUI

enum TemperatureUnit: String, CaseIterable {
    case c = "C"
    case f = "F"
}

enum PollutantUnits: String, CaseIterable {
    case ug = "ug/m^3"
    case aqı = "AQI"
}

struct SettingsView: View {
    @State private var unit: TemperatureUnit = .c
    @State private var pollutant: PollutantUnits = .aqı
    @State private var isDarkMode: Bool = false
    @State private var ispushNotify: Bool = false
    var body: some View {
        List {
            Section {
                HStack {
                    Label("Dark Mode", systemImage: "moon")
                    Toggle("", isOn: $isDarkMode)
                }

                HStack {
                    Label("Notification", systemImage: "bell")
                    Toggle("", isOn: $ispushNotify)
                }
            }

            Section {
                HStack {
                    Label("Temperature", systemImage: "thermometer.medium")
                    Spacer()
                    Picker("", selection: $unit) {
                        ForEach(TemperatureUnit.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                    .frame(width: 100)
                }

                HStack {
                    Label("Pollutant Units", systemImage: "wind")
                    Spacer()
                    Picker("", selection: $pollutant) {
                        ForEach(PollutantUnits.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                    .frame(width: 150)
                }
            }
        }
        .navigationTitle("Settings")
        
    }
}

#Preview {
    SettingsView()
}
