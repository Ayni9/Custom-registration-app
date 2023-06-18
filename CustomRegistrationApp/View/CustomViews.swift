import SwiftUI

struct CustomViews: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct CustomViews_Previews: PreviewProvider {
    static var previews: some View {
        CustomViews()
    }
}

struct CustomTextField: View {
    var placeHolder: String
    var imageName: String
    var bColor: String
    var tOpacity: Double
    @Binding var value: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.leading, 20)
                .foregroundColor(Color(bColor).opacity(tOpacity))
            
            if placeHolder == "Password" || placeHolder == "Confirm Password" {
                ZStack(alignment: .leading) {
                    if value.isEmpty {
                        Text(placeHolder)
                            .foregroundColor(Color(bColor).opacity(tOpacity))
                            .padding(.leading, 12)
                            .font(.system(size: 20))
                    }
                    
                    SecureField("", text: $value)
                        .padding(.leading, 12)
                        .font(.system(size: 20))
                        .frame(height: 45)
                }
            }
            
            else {
                ZStack(alignment: .leading) {
                    if value.isEmpty {
                        Text(placeHolder)
                            .foregroundColor(Color(bColor).opacity(tOpacity))
                            .padding(.leading, 12)
                            .font(.system(size: 20))
                    }
                    
                    TextField("", text: $value)
                        .padding(.leading, 12)
                        .font(.system(size: 20))
                        .frame(height: 45)
                        .foregroundColor(Color(bColor))
                }
            }
        }
        .overlay (
            Divider()
                .overlay (
                    Color(bColor).opacity(tOpacity)
                ).padding(.horizontal, 20)
            , alignment: .bottom
        )
    }
}

struct CustomButton: View {
    var title: String
    var bgColor: String
    
    var body: some View {
        Text(title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(height: 58)
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color(bgColor))
            .cornerRadius(15)
    }
}

struct TopBarView: View {
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: "arrow.backward")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.black)
                .frame(width: 20, height: 20)
                .padding(.horizontal, 24)
        }
    }
}
