//Sahar
import Foundation
import SwiftUI

class AuthenticationViewModel: ObservableObject{
    @Published var user: AuthModel?
    
    //sing up
    func signUp(email: String, password: String){
        
        let parameters = "{\n  \"email\": \"\(email)\",\n  \"password\": \"\(password)\"\n}"
        let postData = parameters.data(using: .utf8)
        var request = URLRequest(url: URL(string: "https://mpozuhsteilafzhaozwu.supabase.co/auth/v1/signup")!,timeoutInterval: Double.infinity)
        request.addValue("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1wb3p1aHN0ZWlsYWZ6aGFvend1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDE5ODIxNzksImV4cCI6MjAxNzU1ODE3OX0.A7odTvr1MovPd8tz4nU38qmNskAAWBqlI5JpMR6o4D0", forHTTPHeaderField: "apikey")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        request.httpMethod = "POST"
        request.httpBody = postData

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            return
          }
          print(String(data: data, encoding: .utf8)!)
        }

        task.resume()

    }
    
    
    func signIn(email: String, password: String){
        
        let parameters = "{\n  \"email\": \"\(email)\",\n  \"password\": \"\(password)\"\n}"


        let postData = parameters.data(using: .utf8)

        var request = URLRequest(url: URL(string: "https://mpozuhsteilafzhaozwu.supabase.co/auth/v1/token?grant_type=password")!,timeoutInterval: Double.infinity)
        request.addValue("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1wb3p1aHN0ZWlsYWZ6aGFvend1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDE5ODIxNzksImV4cCI6MjAxNzU1ODE3OX0.A7odTvr1MovPd8tz4nU38qmNskAAWBqlI5JpMR6o4D0", forHTTPHeaderField: "apikey")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        request.httpMethod = "POST"
        request.httpBody = postData

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            return
          }
          print(String(data: data, encoding: .utf8)!)
        }

        task.resume()

       


        
        
        
    }
    
    
}
