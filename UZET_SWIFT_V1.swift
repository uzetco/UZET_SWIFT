//
//  UZET_SWIFT_V1.swift
//  Uzet APi
//
//  Created by Azozz ALFiras on 05/06/2023.
//

import Foundation





class UZETCreatePaymentLinkV1 {
    static func post(Product: String, Total: String, callback_url: String) {
        
        // this info's will get from your email README.pdf
        let UZET_Url = URL(string: "https://213.136.74.225:2827/v313/uzet/api/V1/3zozz")!;
        let UZET_Key   = "Yl7q4rXe3jyr05mB0LDAAxpzNU9r8amiBuCM3iyhqDPpmwLjBS";
        let UZET_Email = "azozzalfiras@gmail.com";
       
        
        let request = NSMutableURLRequest(url: UZET_Url)
        request.httpMethod = "POST"
       

        let body = "email=\(UZET_Email)&Publishable_Key=\(UZET_Key)&Product=\(Product)&Total=\(Total)&callback_url=\(callback_url))"
        request.httpBody = body.data(using: .utf8)

        let task = URLSession.shared.dataTask(with: request as URLRequest as URLRequest) { data, response, error in
            if let error = error {
                print(error)
                return
            }

            if let data = data {
                let responseString = String(data: data, encoding: .utf8)!
                let dictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                let url = dictionary["url"] as! String
                print("Payment url is : ",url)
            }
        }

        task.resume()
    }
}
