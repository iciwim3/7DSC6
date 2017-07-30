//: Playground - noun: a place where people can play

import UIKit

/* 
 1. Look at the AppStore on your phone, it has tons of apps, right? Seems like each app has all the same properties like name, developer, rating... Let's create a class for that!
 2. Create a new playground and name it 7DSC-Day6-App
 3. Create a new class called app - remember UpperCamelCasing?
 4. This class has several properties: name, developer, rating, category, and price.
 5. Create those properties and determine what their data types are.
 6. Create an initializer for the class that takes all the required information like name, developer, rating, category and price. Initialize these values to our properties.
 7. Now let's create two new instances from your new App class to test it out and use in the upcoming steps.
 8. An app store has tons of apps so let's create a class called AppStore.
 9. This class has only one property which is an array of App.
 10. Create its initializer which takes an array of apps and initialize the value to our property.
 11. Now, let's create a constant called sampleApps and initialize it by constructing a new array with all the elements being the two App instances you have in step 6.
 12. Create a new instance of AppStore name it appleAppStore, pass in the sampleApps above.
 13. Can you try to access the second app in all the apps of the appleAppStore?
 14. Can you try to access developer property of the first app of all the apps in appleAppStore? */

class App {
    var name: String
    var developer: String
    var rating: Int
    var category: String
    var price: Double
    
    init(appName: String, developer: String, rating: Int, category: String, price: Double) {
        name = appName
        self.developer = developer
        self.rating = rating
        self.category = category
        self.price = price
    }
}

class AppStore {
    var apps: [App]
    
    init(apps: [App]) {
        self.apps = apps
    }
    
    func getApps(query: String) -> App {
        for app in apps {
            if app.name.lowercased() == query.lowercased() {
                return app
            }
        }
        return App(appName: "Explorer", developer: "SKE", rating: 2, category: "Games", price: 1.99)
    }
}

let firstApp = App(appName: "Flutter Frenzy: An Endless Journey through Mayhem", developer: "SKE", rating: 3, category: "Games", price: 0)

let secondApp = App(appName: "Alora", developer: "Dev", rating: 3, category: "Game", price: 1.99)

let sampleApps = [firstApp, secondApp]

let appleAppStore = AppStore(apps: sampleApps)

appleAppStore.apps[1]

appleAppStore.apps[0].developer

appleAppStore.getApps(query: "alora")




