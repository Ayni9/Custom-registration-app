import SwiftUI

struct SignUpView: View {
    @State private var name: String = ""
    @State private var password: String = ""
    @State private var email: String = ""
    @State private var cpassword: String = ""
    @State var isLinkActive = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .topLeading) {
                Color("color1").ignoresSafeArea()
                VStack {
                    VStack(spacing: 40) {
                        ZStack {
                            Ellipse()
                                .frame(width: 458, height: 420)
                                .padding(.trailing, -500)
                                .foregroundColor(Color("color2"))
                                .padding(.top, -200)
                            
                            Text("Create \nAccount")
                                .foregroundColor(.white)
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 20)
                                .padding(.top, 100)
                        }
                        
                        VStack(spacing: 20) {
                            VStack(spacing: 20) {
                                CustomTextField(placeHolder: "Name", imageName: "person", bColor: "textColor2", tOpacity: 1.0, value: $name)
                                CustomTextField(placeHolder: "Email", imageName: "envelope", bColor: "textColor2", tOpacity: 1.0, value: $email)
                                CustomTextField(placeHolder: "Password", imageName: "lock", bColor: "textColor2", tOpacity: 1.0, value: $password)
                                CustomTextField(placeHolder: "Confirm Password", imageName: "lock", bColor: "textColor2", tOpacity: 1.0, value: $cpassword)
                            }
                            
                            VStack(alignment: .trailing) {
                                Button {
                                    
                                } label: {
                                    CustomButton(title: "SIGN UP", bgColor: "color2")
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
                        Text("Already Registered?")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                        NavigationLink(destination: LoginView(), isActive: $isLinkActive) {
                            Button {
                                self.isLinkActive.toggle()
                            } label: {
                                Text("SIGN IN")
                                    .font(.system(size: 18))
                                    .foregroundColor(Color("color1"))
                                    .fontWeight(.bold)
                            }
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

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
