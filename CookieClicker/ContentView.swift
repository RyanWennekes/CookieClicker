import SwiftUI

struct ContentView: View {
    @State var timesClicked = 0
    @State var isShowingSheet = false
    
    var body: some View {
        NavigationView {
            VStack() {
                Button(
                    action: {
                        print("Cookie Clicked!")
                        timesClicked += 1
                    },
                    label: {
                        Image("Cookie")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                )
                Text("You clicked the cookie \(timesClicked) times!")
                Spacer()
                HStack () {
                    NavigationLink(destination: CreditsView()) {
                        Text("Credits")
                    }
                    Button("Store", action: {
                        isShowingSheet = true
                    })
                }
                Spacer()
            }
            .navigationBarTitle("Cookie Clicker")
            .sheet(isPresented: $isShowingSheet, content: { Store(timesClicked: $timesClicked) })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
