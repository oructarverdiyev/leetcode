class Solution {
  func myAtoi(_ str: String) -> Int {

    let digits: Set<Character> = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    let characters: [Character] = Array(str)
    var finalDigit: [Character] = []

    for character in characters {

      if digits.contains(character) {
        finalDigit.append(character)
      } else {

        if character == " " {

          if finalDigit.count == 0 {
            continue
          } else {
            break
          }

        } else if character == "-" || character == "+" {

          if finalDigit.count == 0 {
            finalDigit.append(character)

          } else {
            break
          }

        } else {

          if finalDigit.count == 0 {
            return 0
          } else {
            break
          }

        }
      }
    }

    let mapped: [String] = finalDigit.map { element in
      return "\(element)"
    }

    let joined = mapped.joined()

    if Double(joined) == nil {
      return 0
    }

    let doesntOverflow = Int32(joined) != nil

    if doesntOverflow {
      return Int(Int32(joined)!)
    } else {
      if finalDigit[0] == "-" {
        return Int(Int32.min)
      } else {
        return Int(Int32.max)
      }
    }
  }
}