# Chalkboard Birthdays App Challange

This is an app that utilises a web api to provide the user an ordered list of birthdays youngest to oldest

## How to install and run the project

Application was developed in Xcode 13.1 but should work with Xcode 13.0 and above
Application will only work on iOS devices, no iPadOS running iOS 15.0 and above

To run application in simulator clone repo, build and run in Xcode

## Why I made the decisions I did

I chose to build the applcation in SwiftUI as the design provided worked well with the in built UI elements provided by SwiftUI and allowed for quicker and easier iterations when developing. \
I also made the technical decision to utilise the new concurreny methods for SwiftUI to allow the application to load the UI while getting the data from the API.\
Although the design did not provide a dark mode layout I decided to adapt the design for dark mode as some users of iOS choose to use dark mode all the time and the design provided did not allow for that. I think any app running on iOS 15 should be able to utilise the abilty of dark mode.

Some of the trade offs I made were not building the application for iPadOS. I felt like the design didn't work well with the layout of iPadOS so chose to only develop for iOS devices like iPhone and iPod.
I also did not incorporate local storage of the data once it had been recieved meaning that data had to be loaded each time the app loaded. This was a small thing as the request in optimal network conditions doesn't take long but makes the app unusable with no network.

## If I had more time

If I had more time I would have added the abilty of local storage either with user defaults or core data so the user could use the app without a network once the data had been picked up the first time and then only checked the api for delta changes.
This would have also allowed for the ability of adding new data into the app directly by the user which would become a core part of the user experience and allow the app to be used in isolation without the API
I would have also added the abilty of the intial icons to be replaced with images if availble from the API allowing the user to see the person whos birthday is being listed

## Contact Details

Github Profile - www.github.com/rcopping96 \
LinkedIn Profile - www.linkedin.com/in/robcopping \
Email - robbiecopping@gmail.com \
Mobile number - available on request
