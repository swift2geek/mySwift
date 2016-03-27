//
//  AppDelegate.swift
//  test
//
//  Created by Vladimir Valter on 24.12.15.
//  Copyright © 2015 Vladimir Valter. All rights reserved.
//

import UIKit

struct Piece {
    var name : String
    var color : String
    var pos : (x: String, y: Int)
}



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var piecesPoss = [(x: String, y: Int)]()
//var piecesPoss:[(name: String, value: Int)] = []
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let p1 = Piece(name: "King", color: "Black", pos: ("d", 5))
        let p2 = Piece(name: "King", color: "White", pos: ("d", 7))
        let p3 = Piece(name: "Knight", color: "Black", pos: ("c", 6))
        let p4 = Piece(name: "Rook", color: "Black", pos: ("e", 2))
        let p5 = Piece(name: "Rook", color: "Black", pos: ("h", 8))
        let p6 = Piece(name: "Pawn", color: "White", pos: ("b", 4))
        
        //var blackK = Piece(name: ""◼️◻️
        //

        let piecesPos = [p1.pos, p2.pos, p3.pos, p4.pos, p5.pos, p6.pos]

        piecesPoss = piecesPos
        var arrayChar = ["a", "b", "c", "d", "e", "f", "g", "h"]
        
        for var i = 1; i < 9; i++ {
            
            print(" ")
            print("\t\(9 - i)", terminator:"")
            
            for var j = 1; j < 9; j++ {
                
                let c = checkCombination((arrayChar[j - 1], number: i))
                
                
                
                
                if j % 2 == i % 2 {
                    if c {
                        print("♚", terminator:"")
                    }
                    else {
                        
                        print("◻️", terminator:"")
                    }
                }
                else {
                    if c {
                        print("♚", terminator:"")
                    }
                    else {
                        
                        print("◼️", terminator:"")
                    }
                    
                }
                
            }
            
        }
        print("")
        print("\t a", " b", "c", "d", " e", "f", "g", "h")

        return true
    }
    
    func checkCombination(combination: (String, Int)) -> Bool {
        
        var isChecked = false
        
        
        for var i = 0; i < piecesPoss.count; i++ {
            
            let tuple = piecesPoss[i]
            
            if (tuple.x == combination.0 && tuple.y == combination.1) {
                isChecked = true
                break
                
                
            }
                
            else {
                isChecked = false
            }
        }
        return isChecked
        
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

