import SwiftUI

struct PinkStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.pink)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(
                .easeOut(duration: 0.2),
                value: configuration.isPressed
            )
    }
}

#Preview {
    Button("Press Me") {
        print("Pink button pressed!")
    }
    .buttonStyle(PinkStyle())
}
