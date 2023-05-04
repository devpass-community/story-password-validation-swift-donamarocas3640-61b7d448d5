import Foundation

@main
public struct PasswordValidation {

    public static func main() {
        let validation = PasswordValidation()
        let password = "123456"

        if validation.isValid(password: password) {
            let predicate = NSPredicate(format: "SELF MATCHES %@", "^[0-9]{6}$")
            if predicate.evaluate(with: password) {
                
            }
        } else {
            print("invalid password")
        }
    }

    func isValid(password: String) -> Bool {
        return password.count == 6 && password.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }
}
