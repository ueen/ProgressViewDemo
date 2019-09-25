# SensibleProgressView -  animatable!

This is a WORKING ProgressBar for iOS, derived from this neat demo https://github.com/huang-kun/ProgressViewDemo

I fought hard with the build in ProgressBar, and then iOS13 came out and nothing worked, so i decided to throw the build in one out and create a simple yet working and most importantly animatable ProgressBar.

![demo](demo.png)

# Installation

Incorporate SensibleProgressView.swift into your Project

# Usage

Now you can use SensibleProgressView just like a regular view.
In InterfaceBuilder position a UIView how you like (set width and height) and add SensibleProgressView as class now you can edit some propertys in the attributes inspector (tough the sides are squared in interface builder, they will be rounded at runtime)
Now you can make an Outlet to your ViewController and animate it like this

    sensibleProgressView.progress = 0.0
    
    let animator = UIViewPropertyAnimator(duration: 30.0, curve: .linear) {
            self.sensibleProgressView.progress = 1.0}
    animator.startAnimation()
