//
//  newlineIndenter.swift
//  newlineIndenter
//
//  Created by Matthew Ellis on 07/02/2016.
//  Copyright © 2016 matthew ellis. All rights reserved.
//

import Foundation

/**
 *  Indent empty newlines of
 *
 *  @param fileText string containing a file of code
 *
 *  @return indented vershion of fileText
 */
func indentFile(fileText: String) -> String
{
    let fileLines: [String] = fileText.componentsSeparatedByString("\n")
    var indentedFileLines: [String] = []
    var currentIndent = 0
    
    for line: String in fileLines.reverse() {
        if (line.characters.count == 0) { // Empty newline
            indentedFileLines.append(indentForLength(currentIndent))
        } else {
            indentedFileLines.append(line)
            currentIndent = indentLength(line)
        }
    }
    
    return indentedFileLines.reverse().joinWithSeparator("\n")
}

/**
 *  Get the indent length for a line of code by counting
 *  the number of space charictors at the start of the line.
 *
 *  @param lineText One line of file text
 *
 *  @return A count of the indent length
 */
func indentLength(lineText: String) -> Int
{
    var indentLength: Int = 0
    for var index = 0; index < lineText.characters.count; ++index {
        let unichar = (lineText as NSString).characterAtIndex(index)
        let unicharString = Character(UnicodeScalar(unichar))
        
        if (unicharString == " ") {
            indentLength++
        } else {
            break;
        }
    }
    return indentLength
}

/**
 *  Creates a string with a indent of a specified length
 *
 *  @param length Length of the indent to create
 *
 *  @return string containg spaces to represent the length of the indent
 */
func indentForLength(length: Int) -> String
{
    var indentString: String = ""
    for var i = 0; i < length; ++i {
        indentString = indentString + " "
    }
    
    return indentString
}
