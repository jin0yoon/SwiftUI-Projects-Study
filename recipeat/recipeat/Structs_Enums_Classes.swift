//
//  Structs_Enums_Classes.swift
//  recipeat
//
//  Created by 윤진영 on 2020/10/11.
//

import Foundation
import SwiftUI

struct recipePost: Identifiable {
    var id = UUID()
    var steps: [Step]
    var ingredients: [Ingredient]
    var postingUser: String
    var description: String
    var numberOfLikes: Int
    var image: Image
}

struct user : Identifiable {
    var id = UUID()
    
    var username: String
    var password: String
    var name: String
    var email: String
}

class GlobalEnvironment: ObservableObject{
    
    @Published var currentUser: user = user.init(username: "", password: "", name: "", email: "")
}

var lightBlue = Color.init(red: 91/255, green: 152/255, blue: 198/255)
var darkBlue = Color.init(red: 47/255, green: 75/255, blue: 135/255)
var vDarkBlue = Color.init(red: 2/255, green: 51/255, blue: 92/255)


enum IngredientUnit: String {
    case cup = "cup"
    case tablespoon = "tablespoon"
    case teaspoon = "teaspoon"
    case pinch = "pinch"
    case dash = "dash"
    case lb = "lb"
    case kg = "kg"
    case mg = "mg"
    case g = "g"
    case mL = "mL"
    case L = "L"
    case whole = "whole"
    
}

struct Ingredient: Identifiable {
    var id = UUID()
    var name:String
    var amount:Double
    var amountUnit: IngredientUnit
    var orderNumber:Int
}


struct Step: Identifiable {
    var id = UUID()
    var description:String
    var orderNumber:Int
}
