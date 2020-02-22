# Cryptography and your apps

[Cryptography Video](https://developer.apple.com/videos/play/wwdc2019/709)

KeyChain
* Local of iCloud keychain
* All the file protection classes + extras
LocalAuthentication
* Protect operations with policies, for example protect access to a key with Face ID

Share Data Across Devices and Uesrs
* Encrypt assets in Private Cloudkit Database
    * No Need for application user sign in
    * Apple as a trusted party
    * iCloud identities and access control

Secure Network Connection
* Hetwork framework with default TLS URLSession with App Transport Security
    * Defaults guarantee strong security and great performance

```swift
// With Network Frameworks
let conn = NWConnection(host: "imap.mail.me.com", port: .imaps, using: .tls)
conn.start(queue: .main)

// with URLSession
let url = URL(string: "https://www.apple.com")!
let task = URLSession.shared.dataTask(with: url) { (data, response, error) in 
    if let error = error {
        // handle error
    }
    
    // operation on data
}
task.resume()
```

SecTrust
* Trust criteria defined by a policy
* Validate certificate against policy
* Use trusted keys to encrypt or verify data

## Apple CryptoKit
if you need to:
1. Interoperate between platforms
2. Authenticate with your service
3. Implement a specification

```swift
// Encrypting with Apple CryptoKit
let sealed = try AES.GCM.seal(dataToEncrypt, using: symmetricKey)
```

Generating a key in swift before
```swift
// generating and releasing a cryptographic key for a C crypto API before
let keyByteCount = 256/8
let key = Array(repeating: 0, count: keyByteCount)
let err = SecRandomCopyBytes(kSecRandomDefault, keyByteCount, &key)
if (err != errSecSuccess) {
    //handle error
}

// use key
...

// Zeroize the key
memset_s(&key, keyByteCount, 0, keyByteCount)

//NOW with Apple CryptoKit
let key = SymmetricKey(size: .bit256)
```

Pros
* Strongly Type