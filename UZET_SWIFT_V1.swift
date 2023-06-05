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
        let UZET_Url = URL(string: "")!;
        let UZET_Key   = "";
        let UZET_Email = "";
       
        
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
