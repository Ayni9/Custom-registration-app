import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State var isLinkActive = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .topLeading) {
                VStack {
                    VStack(spacing: 40) {
                        ZStack {
                            Ellipse()
                                .frame(width: 510, height: 478)
                                .padding(.leading, -200)
                                .foregroundColor(Color("color2"))
                                .padding(.top, -200)
                            
                            Ellipse()
                                .frame(width: 458, height: 420)
                                .padding(.trailing, -500)
                                .foregroundColor(Color("Color1"))
                                .padding(.top, -200)
                            
                            Text("Welcome \nBack")
                                .foregroundColor(.white)
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 20)
                        }
                        
                        VStack(spacing: 30) {
                            VStack(spacing: 30) {
                                CustomTextField(placeHolder: "Email", imageName: "envelope", bColor: "textcolor1", tOpacity: 0.6, value: $email)
                                CustomTextField(placeHolder: "Password", imageName: "lock", bColor: "textcolor1", tOpacity: 0.6, value: $password)
                            }
                            
                            VStack(alignment: .trailing) {
                                Text("Forgor Password?")
                                    .fontWeight(.medium)
                                
                                NavigationLink(destination: SignUpView(), isActive: $isLinkActive) {
                                    Button {
                                        self.isLinkActive.toggle()
                                    } label: {
                                        CustomButton(title: "SIGN IN", bgColor: "Color1")
                                    }
                                }
                            }
                            .padding(.horizontal, 20)
                            
                            HStack {
                                Button {
                                    
                                } label: {
                                    Image(systemName: "playstation.logo")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                        .padding(.horizontal, 60)
                                        .padding(.vertical, 15)
                                        .foregroundColor(.black)
                                        .background(Color("button-bg"))
                                        .cornerRadius(15)
                                }
                                
                                Spacer()
                                
                                Button {
                                    
                                } label: {
                                    Image(systemName: "xbox.logo")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                        .padding(.horizontal, 60)
                                        .padding(.vertical, 15)
                                        .foregroundColor(.black)
                                        .background(Color("button-bg"))
                                        .cornerRadius(15)
                                }
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("Unregistered? Bruh Frr")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                        Button {
                            
                        } label: {
                            Text("SIGN IN")
                                .font(.system(size: 18))
                                .foregroundColor(Color("Color1"))
                                .fontWeight(.bold)
                        }
                    }
                    .frame(height: 63)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(Color("color2"))
                    .ignoresSafeArea()
                }
                TopBarView()
            }
            .edgesIgnoringSafeArea(.bottom)
        }
        .toolbar(.hidden)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
