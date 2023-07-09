import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 1
    
    var body: some View {
        
        VStack {
            
            TabView(selection: $selectedTab) {
                
                // Page 1 (Abdulrahman)
                VStack {
                    
                    // Part 1: Top part
                    ZStack {
                        RadialGradient(colors: [Color(#colorLiteral(red: 0.10406332463026047, green: 1.014790654182434, blue: 0.36642885208129883, alpha: 1.0)), Color(#colorLiteral(red: 0.3675295114517212, green: 0.28984493017196655, blue: 1.0388718843460083, alpha: 1.0))], center: .center, startRadius: 0, endRadius: 300)
                            .opacity(0.8)
                            .blur(radius: 50)
                            .frame(width: 350, height: 350)
                            .clipShape(Circle())
                        
                        VStack(spacing: 20) {
                            Image("7manni")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250, height: 250)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Abdulrahman Atta")
                                    .font(.system(size: 20))
                                    .bold()
                                    .foregroundColor(.yellow)
                                
                                Text("RIT Alumni")
                                    .font(.system(size: 15))
                                    .bold()
                                    .foregroundColor(.yellow)
                            }
                            .padding(.bottom, 20)
                        }
                        .padding(30)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    
                    VStack {
                        Link(destination: URL(string: "https://www.apple.com")!) {
                            HStack {
                                Text("Apple")
                                    .font(.system(size: 25))
                                    .foregroundColor(.yellow)
                                Image(systemName: "applelogo")
                                    .font(.system(size: 60))
                                    .foregroundColor(.yellow)
                                    .padding(8)
                                    .clipShape(Circle())
                            }
                        }
                    }
                }
                
                .tag(1)
                
                // Page 2 (Shahed)
                VStack {
                    
                    // Part 1: Top part
                    ZStack {
                        
                        RadialGradient(colors: [Color(#colorLiteral(red: 0.10406332463026047, green: 1.014790654182434, blue: 0.36642885208129883, alpha: 1.0)), Color(#colorLiteral(red: 0.3675295114517212, green: 0.28984493017196655, blue: 1.0388718843460083, alpha: 1.0))], center: .center, startRadius: 0, endRadius: 300)
                            .opacity(0.8)
                            .blur(radius: 50)
                            .frame(width: 350, height: 350)
                            .clipShape(Circle())
                        
                        VStack(spacing: 20) {
                            Image("shahed")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250, height: 250)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Shahed Elhdad")
                                    .font(.system(size: 20))
                                    .bold()
                                    .foregroundColor(.black)
                                
                                Text("UOS Alumni")
                                    .font(.system(size: 15))
                                    .bold()
                                    .foregroundColor(.black)
                            }
                            .padding(.bottom, 20)
                        }
                        .padding(30)
                    }
                    VStack {
                        Link(destination: URL(string: "https://www.instagram.com/sh.allhdadd/?hl=en")!) {
                            HStack {
                                Text("Instagram")
                                    .font(.system(size: 25))
                                    .foregroundColor(.black)
                                Image("insta")
                                    .font(.system(size: 10))
                                    .foregroundColor(.black)
                                    .padding(6)
                                    .clipShape(Circle())
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                
                .tag(2)
            }
            
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            
            Spacer()
            
            HStack {
                Spacer()
                
                Button(action: {
                    selectedTab = 1
                }) {
                    VStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(selectedTab == 1 ? .white : .black)
                        
                        Text("Abdulrahman")
                            .font(.system(size: 12))
                            .foregroundColor(selectedTab == 1 ? .white : .black)
                    }
                }
                .padding()
                .opacity(selectedTab == 1 ? 0 : 1)
                
                Spacer()
                
                Button(action: {
                    selectedTab = 2
                }) {
                    VStack {
                        Image(systemName: "person")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(selectedTab == 2 ? .white : .black)
                        
                        Text("Shahed")
                            .font(.system(size: 12))
                            .foregroundColor(selectedTab == 2 ? .white : .black)
                    }
                }
                .padding()
                .opacity(selectedTab == 2 ? 0 : 1)
                
                Spacer()
            }
        }
        .background(Gradient(colors: [.indigo, .purple]))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
