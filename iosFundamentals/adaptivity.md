# Building Adaptive Apps

* For Accessibility, Localization support, support for rendering on multiple types of devices (iPhone 6, 7, 8, X, etc), orientation

## Use Auto Layout

* Constraints
    * Relationship between two components
    * Container View and SubViews
    * Two views within a scene
        * Headline and Subheading
    * Control Dragging or Constraint Button. on lower dashboard thing
    * OR click on View and "Reset Suggested Constraints" Xcode might do it for you.

There is an auto layout guide on apple developer site or a plural sight auto layout course

## Stack View

* Horizontal Stack View or Vertical Stack View
* An iOS Stack View takes two or more view objects and then stacks them either horizontally or vertically.
* Helps to present things but has not visible feature of its own
* Single Row or Single Column
    * Axis property must be vertical or horizontal
* Can be nested
* Alignment
    * Leading, Center, Trailing
    * Top, Bottom
* Distribution
    * fill equally, equal spacing, equal centering
    * Worth experimenting
* Spacing
    * Is or isn't a minimum amount of space between views
* Auto Layout still needed in View to position Stack View itself.

* Shift-Control-Click to get a pop up to view all views clicked on.


## Traits

* some things we might want to customize for: 
    * general size of device
        * height, width, orientation
    * device family
        * iPhone vs. iPad
    * color gamut
    * etc.

* Button `Vary for Traits`
    * Width
    * Height
* Size Classes for Width and Height
    * Class as in Category
    * `regular` or `compact`
* Size Classes for iPads
    * Regular Width
    * Regular Height
* Size Classes for iPhones Examples
    * Portait Mode
        * width: compact
        * height: regular
    * Landscape Mode
        * width: compact
        * height: compact
        * Except Pluses
            * width: regular
            * height: compact

* Sometimes make customizations based on size classes

1. View the storyboard in the width and height size class you want to change (type of device and orientation example)
2. Vary for Traits
    * Select Width and/or Height
    * xCode will tell you want devices will be affected

* Can Change the contraints and whether some view shoes up or not.
* Back up before start playing around with this.
* When blue bar is on, only tracking changes on storyboard, not document outline or other side of the screen.
* Or go to attributes, press + next to Font Label, change font for size class arrangement.