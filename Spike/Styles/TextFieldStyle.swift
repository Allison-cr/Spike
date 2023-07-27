//
//  TextFieldStyle.swift
//  Spike
//
//  Created by Alexander Suprun on 14.07.2023.
//

import Foundation
import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
      return configuration
            .textFieldStyle(.plain)
            .padding(.horizontal, 8)
            .frame(height: 45)
            .cornerRadius(10)
            .foregroundColor(.white)
            .accentColor(.pink)
            .autocorrectionDisabled()
            .textInputAutocapitalization(.never)
    }
}
