This repository contains a base project that provides a starting point for an iOS application that uses VIPER architecture.
Also includes an Xcode file template to generate VIPER modules with ease.

# VIPER iOS base project
This is base project that provides a starting point for an application that uses VIPER architecture.
Also includes a template for Xcode that generates the files for VIPER modules.

<p align="center">
<img src="images/viper-diagram.png" width="811" title="VIPER Architecture">
</p>

# VIPER Xcode file template

## Requirements

- Xcode 10
- Swift 5

## Prerequisites
##### 1. Create the `Wireframe` protocol
```
import UIKit

protocol Wireframe {

    func viewController() -> UIViewController
}
```

##### 2. Implement a MainRouter that conforms to the following `MainWireframe` protocol
```
import UIKit

protocol MainWireframe: class {

   // Main routing logic function declarations (eg. pushWireframe, popWireframe, presentWireframe, dismissWireframe)
}
```
_Note: for example check the ViperBaseProject_

## Install the VIPER Xcode file template
##### 1. Download <a href="Xcode File Template/VIPER.xctemplate">VIPER.xctemplate</a>

Clone or download and unzip the repository

##### 2. Create a new folder for the custom file template
```
cd ~/Library/Developer/Xcode/Templates/File\ Templates/Custom/
```
_Note: if the folder in path is already exists you should proceed to step 3_

##### 3. Copy the file template
```
cp ~/Downloads/Xcode\ File\ Template/VIPER.xctemplate/ ~/Library/Developer/Xcode/ ~/Library/Developer/Xcode/Templates/File\ Templates/Custom/
```
##### 4. Open Xcode and start using the new template
<p align="center">
<img src="images/xcode-file-template.png" width="722" title="VIPER Architecture">
</p>
