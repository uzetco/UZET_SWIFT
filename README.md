# UZET_SWIFT
Use this UZET Swift payment gateway to enable clients of your website to pay using Swift gateway.
# UZET_Objective-c
Use this UZET Objective c payment gateway to enable clients of your App to pay using UZET gateway.


## Usage

If you're using UZETCreatePaymentLink, you can call import it into your App.

```swift
UZETCreatePaymentLinkV1.swift or UZETCreatePaymentLink.swift

```


Make sure you've set up the macros in UZETCreatePaymentLink.swift beforehand.



```swift
let UZET_Url = URL(string: "")!;
let UZET_Key   = "";
let UZET_Email = "";
```

Calling it is even easier.

How To Use V1 WithOut Client Deatils


```swift
   let Product = "Order 10#"; // Name Product
        let Total  = "10"; // Amount USD
        let callback_url = "https://yourdomen.com/uzet/callback"; // After Payment Completed will back the your url
  

        UZETCreatePaymentLinkV1.post(Product: Product, Total: Total, callback_url: callback_url)

```


How To Use V2 With Client Deatils


```swift
        let Product = "Order 10#"; // Name Product
        let amount  = "10"; // Amount USD
        let callback_url = "https://yourdomen.com/uzet/callback"; // After Payment Completed will back the your url
        let customer_email = "email@email.com"; // Email Customer
        let billing_street1 = "Dubae"; // Billing Street 1
        let billing_city = "Dubae"; // Customer City
        let billing_state = "Dubae Street "; // Billing State
        let billing_country = "AE";// Customer Country  like AE - IQ - FR etc...
        let billing_postcode = "10013"; // Customer ZIP Code
        let customer_givenName = "Azozz"; // Customer First Name
        let customer_surname   = "ALFiras"; // Customer Last Name
        let customer_phonenumber = "9647719675127"; // Customer Phone Number



    UZETCreatePaymentLink.post(Product: Product, amount: amount, callback_url: callback_url, customer_email: customer_email, billing_street1: billing_street1, billing_city: billing_city, billing_state: billing_state, billing_country: billing_country, billing_postcode: billing_postcode, customer_givenName: customer_givenName, customer_surname: customer_surname,  customer_phonenumber: customer_phonenumber)

```
