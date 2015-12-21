#Whatsapp UI automation example
This is a proof-of-concept Ruby/Cucumber/Appium/Photoshop JS framework which can be served as an example of how one can generate multiple images of various parts of an Android application, with interface in multiple languages, to use in manuals or FAQs. I used Whatsapp app in this example.

##PREREQUISITES##
* Download the latest apk file of the application from Google Play (or use **com.whatsapp-1.apk** provided in this distribution)
* Install ADB Change Language tool on the Android device
* Ruby/Cucumber/Appium development environment
* Adobe Photoshop

##WHAT THIS EXAMPLE DOES##
It generates screenshots in English and Russian languages of the first EULA screen and the second Phone Confirmation screen of the Whatsapp application (a total of 4 screenshots will be generated). 

##HOW TO RUN##
* Run the scenario in the **eula.feature** file, this will create generate the *Screenshots* folder with the 4 images
* Run **photoshop.jsx** javascript in the *ExtendScript Toolkit*. Don't forget to modify the path to the folder with the images.

##WATCH THE PROCESS ON A VIDEO##
Click on the image below to watch the process of images generation
[![IMAGE ALT TEXT HERE](http://img.youtube.com/vi/iz1ReCzPANI/0.jpg)](https://youtu.be/iz1ReCzPANI)