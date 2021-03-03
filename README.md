# ERToast
*Made with love and passion*

## Introduction
* A simple Toast Notification View written in Swift, compatible with Swift 5.0.
* Can control delay time, position etc.
* Easy to customize.
* Toast With various options.
* Easy to chnage title.
* Easy to change color.

## Demo
* Demo is added inside the project. 

## Requirements 
* Xcode 11.X +
* Swift 5.0

## Installation
1. Download the least source files.
2. Drag ERToast.swift file to Xcode project. Make sure to select Copy items if needed.

## How To Use

// Show Toast Message in a specific location<br />
    
    let point = CGPoint(x:self.view.frame.size.width/2.0 ,y:150)
    ERToast.showToast("Hi, Thanks for trying this", point: point)

// Show Toast Message in center of the view<br />

    ERToast.showToast(atCenter: "Hi, Thanks for trying this", delayTime: 0.5)

// Show Toast Message in a specific location for specific time<br />

    let point = CGPoint(x:self.view.frame.size.width/2.0, y:500)
    ERToast.showToast("Hi, Thanks for trying this", point: point, delayTime: 0.5)
    
## License
ERToast is released under the MIT license. See LICENSE for details.


