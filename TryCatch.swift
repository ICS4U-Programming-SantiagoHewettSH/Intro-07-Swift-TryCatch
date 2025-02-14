//
//  VolSphere.swift
//
//  Created by Santiago Hewett
//  Created on 2025/02/08
//  Version 1.0
//  Copyright (c) Santiago Hewett. All rights reserved.
//
//  This program will calculate the volume of a sphere using try catch.

// Import foundation
import Foundation

// Function for calculating the volume of a sphere
func calculateVolume() {
   // Welcome message and asking the user to input a radius
   print("Welcome, this program will calculate the volume of a sphere.")
   print("Please enter the radius of the sphere in cm:")


   // Read user input as a string and use guard
   guard let radiusAsString = readLine() else {
       // Error message
       print("Invalid input. Please enter a valid radius.")
       return
   }


   // Try to convert radiusAsString to a Double
   guard let radius = Double(radiusAsString), radius >= 0 else {
       // Error message
       print("Invalid input. '\(radiusAsString)' is not a valid positive number.")
       return
   }


   // Calculate the volume of the sphere
   let volume = (4.0 / 3.0) * Double.pi * pow(radius, 3)


   // Display the volume to user
   print("The volume of a sphere with a radius of \(radius) cm is \(String(format: "%.3f", volume)) cm³")
}


// Call function
calculateVolume()
