//
//  UZET_SWIFT_V2.swift
//  Uzet APi
//
//  Created by Azozz ALFiras on 05/06/2023.
//

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif







class UZETCreatePaymentLink {
    static func post(Product: String, amount: String, callback_url: String, customer_email: String, billing_street1: String, billing_city: String, billing_state: String, billing_country: String, billing_postcode: String, customer_givenName: String, customer_surname: String, customer_phonenumber: String ) {
        
        // this info's will get from your email README.pdf
        let UZET_Url = URL(string: "")!;
        let UZET_Key   = "";
        let UZET_Email = "";
       
        
        let request = NSMutableURLRequest(url: UZET_Url)
        request.httpMethod = "POST"
       

        let body = "email=\(UZET_Email)&Publishable_Key=\(UZET_Key)&Product=\(Product)&amount=\(amount)&callback_url=\(callback_url)&customer_email=\(customer_email)&billing_street1=\(billing_street1)&billing_city=\(billing_city)&billing_state=\(billing_state)&billing_country=\(billing_country)&billing_postcode=\(billing_postcode)&customer_givenName=\(customer_givenName)&customer_surname=\(customer_surname)&customer_phonenumber=\(customer_phonenumber)"
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
