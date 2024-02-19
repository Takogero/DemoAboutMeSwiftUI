import SwiftUI

struct ContentView: View {
    
    @State var message: String = ""
    
    var body: some View {
        VStack {
            Text("Абросимов Антон ")
                .font(.title)
                .fontWeight(.bold)
            Image("avatar")
                .resizable()
                .scaledToFit()
            Spacer()
            Text("IOS разработчик - Написал несколько проектов с помощью языка Swift на UIKit, взаимодействовал с API с помощью URLSession и JSONDecoder.  Для контроля версий использовал Git.  Верстал кодом с помощью ProgrammaticUI и SnapKit.  В качестве архитектуры проекта выбирал MVC, MVVM и MVP.  Для базы данных использовал Realm и Core Data.  Подключал зависимости через Swift Package Manager и CocoaPods")
            TextField("send me a message", text: $message)
                .frame(height: 35)
                .padding(.leading)
                .border(.primary)
            Button("Send") {
                print(message)
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
            Spacer()
            
        }
        .padding()
        .background(.gray)
    }
}

#Preview {
    ContentView()
}
