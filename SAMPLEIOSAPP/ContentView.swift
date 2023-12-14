import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack(content: {
//            Button("SwiftUI") {
//                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//            }
//            HStack {
//                Button("Combine") {
//                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                }
//                Button("APKit") {
//                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                }.padding(.all, 12)
//                Button("RealityKit") {
//                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                }
//            }
//            Button("CoreML") {
//                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//            }
//        })
        
        // Sample Form like UI ;)
//        VStack(content: {
//            Circle()
//                .frame(width: 150, height: 150)
//            HStack {
//                Text("Waruna")
//                Text("||")
//                Text("Wimalaweera")
//            }
//            Text("waruna@gmail.com")
//            HStack{
//                Text("Verified")
//                Image(systemName: "checkmark.seal.fill")
//                    .foregroundStyle(.green)
//            }
//            Spacer()
//        }).padding()
        
//        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
//            ZStack(){
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                    .frame(height: 180)
//                    .foregroundStyle(Color.red)
//                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                Text("ios")
//                    .font(.largeTitle)
//            }.padding()
//            
//            ZStack(){
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(height: 180)
//                    .foregroundStyle(Color.green)
//                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                Text("macOS")
//                    .font(.largeTitle)
//            }.padding()
//            
//            ZStack(){
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                    .frame(height: 180)
//                    .foregroundStyle(Color.yellow)
//                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                Text("tvOS")
//                    .font(.largeTitle)
//            }.padding()
//        })
        
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                                .foregroundStyle(Color.orange)
                                .padding()
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                .frame(height: 280)
            VStack{
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.white)
                Text("User Name : Admin")
                    .font(.callout)
                    .padding()
                    .foregroundStyle(.white)
                Text("Password : **********")
                    .font(.callout)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
