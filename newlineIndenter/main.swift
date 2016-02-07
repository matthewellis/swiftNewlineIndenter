//
//  main.swift
//  newlineIndenter
//
//  Created by Matthew Ellis on 27/01/2016.
//  Copyright © 2016 matthew ellis. All rights reserved.
//

import Foundation

func main() -> Int
{
    let arguments:[String] = NSProcessInfo.processInfo().arguments
    if arguments.count == 2 {
        do {
            let fileText = try NSString(contentsOfFile: arguments[1], encoding: NSUTF8StringEncoding) as String
            let indentedFile:String = indentFile(fileText)
            if indentedFile.characters.count > 0 {
               print(indentedFile)
            }
            
        } catch let error as NSError {
            print("Error: " + error.localizedDescription)
        }
    } else {
        print("Error: No file path. \nUsage: newlineIndenter your/file/path \n");
    }

    return 0
}

exit(Int32(main()))