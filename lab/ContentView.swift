import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello.").padding();
            Text("min(1,2): " + String(mymin(1, 2)));
            Text("max(1,2): " + String(mymax(1, 2)));
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
