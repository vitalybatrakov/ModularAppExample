import SwiftUI

public struct PinkStyle: ButtonStyle {
    public func makeBody(
        configuration: Configuration
    ) -> some View {
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

extension ButtonStyle where Self == PinkStyle {
    public static var pink: PinkStyle { PinkStyle() }
}

#Preview {
    VStack {
        Button("Press Me") {
            print("Pink button pressed!")
        }
        .buttonStyle(PinkStyle())
        
        Button("Press Me More") {
            print("Pink button pressed again!")
        }
        .buttonStyle(.pink)
        
    }
}
