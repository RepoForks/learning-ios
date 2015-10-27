//: Playground - noun: a place where people can play
// https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/NestedTypes.html#//apple_ref/doc/uid/TP40014097-CH23-ID242

import UIKit

struct BlackjackCard {
  
  // nested Suit enumeration
  enum Suit: Character {
    case Spades = "♠", Hearts = "♡", Diamonds = "♢", Clubs = "♣"
  }
  
  // nested Rank enumeration
  enum Rank: Int {
    case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King, Ace
    struct Values {
      let first: Int, second: Int?
    }
    var values: Values {
      switch self {
      case .Ace:
        return Values(first: 1, second: 11)
      case .Jack, .Queen, .King:
        return Values(first: 10, second: nil)
      default:
        return Values(first: self.rawValue, second: nil)
      }
    }
  }
  
  // BlackjackCard properties and methods
  let rank: Rank, suit: Suit
  var description: String {
    var output = "suit is \(suit.rawValue),"
    output += " value is \(rank.values.first)"
    if let second = rank.values.second {
      output += " or \(second)"
    }
    return output
  }
}

let theAceOfSpades = BlackjackCard(rank: .Ace, suit: .Spades)
print("theAceOfSpades: \(theAceOfSpades.description)")
// prints "theAceOfSpades: suit is ♠, value is 1 or 11"

let heartsSymbol = BlackjackCard.Suit.Hearts.rawValue



























