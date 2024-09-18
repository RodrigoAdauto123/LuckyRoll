//
//  DiceView.swift
//  LuckyRoll
//
//  Created by Rodrigo Adauto Ortiz on 28/04/24.
//

import SwiftUI

struct DiceView: View {
    @State private var diceValue: Int = 1
    @State private var isRolling: Bool = false
    @State private var selection: Int = 0

    var body: some View {
        VStack {
            Image("dado", bundle: nil)
                .resizable()
                .frame(width: 200,height: 200)
                .rotation3DEffect(
                    .degrees(isRolling ? 360*10 : 0),
                    axis: (x: 1, y: 0, z: 0)
                )
                .disabled(isRolling)
            Text("Valor: \(diceValue)")
                .font(.title)
                .padding()

            Button(action: rollDice) {
                Text("Jugar")
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        
    }

    func rollDice() {
        withAnimation {
            isRolling = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                diceValue = Int.random(in: 1...6)
                isRolling = false
            }
        }
    }
}

#Preview {
    DiceView()
}
