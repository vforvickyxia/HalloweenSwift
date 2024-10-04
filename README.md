# iOSapps-Swifty Helloween
instructions: 

Part I: Build a Halloween-Themed App [37 pts. Total]
(Images of app screen mockups)

Create an Xcode project called SwiftyHalloween
Download the images, sounds, icons, and launchscreen for this project at the following URL:
https://bit.ly/swifty-halloween

1. [2 pts.] Add "swifty-halloween-icon.png" as the app’s icon.
2. [2 pts.] Add "launchscreen" and its 2x and 3x variants as the app’s launch screen.

3. [1 pt.] Add the Sounds & Images folders that you’ve just downloaded, to the app. Look inside both folders so you can see how these files are named.
4. [1 pt.] Keep track of the name of the image to be displayed in a variable named imageName. 
5. [1 pt.] Use a String array named imageNames to hold the array of possible images to use. The names of the images that your app will use are: 
   "corona", "ghost", "bat", "spider", "vampire", "witch", "pumpkin", "skull", "david", "house".
6. [1 pt.] Keep track of the name of sounds to be played in a variable named soundName.
   Note that the sounds have the same name as the images, but with "_sound" added to the end.
7. [1 pt.] Create an array named messages that hold the messages in the Magic 8 Ball toy. You can find these at: http://bit.ly/swift8ball

8. [1 pt.] Keep track of the name of the message to be displayed in a variable named message.

The interface of the app should look as displayed above. Specifically:
9. [1 pt.] Spacer, Image, Spacer, Text, Spacer, Button
10. [3 pts.] The image should present as shown, so that it is not distorted, but takes up the maximum available space to show the entire image.
11. [3 pts.] The Text should be in:
   - a large font
   - centered
   - be a View that occupies 80 points in height regardless of the amount of text inside the Text view
   - If the Text in the Text View cannot fit in the available view, the font should shrink so that the entire text is visible.
12. [4 pts.] You should know how to style the button as shown.
   - The button is orange
   - The text is black
   - The button has a pumpkin emoji and a space before the title "Predict"
   - The button Text is in the Title font

13. [2 pts.] When the app first runs, the Image and Text Views should be blank.
14. [4 pts.] Pressing the Button should present a random image and play the sound related to that image. Since you've coded the app you may assume you’ll always have an image in your imageNames array.
15. [2 pts.] When the button is clicked, the image and sound should never be the same as the image and sound that had been displayed the last time the button was clicked.
16. [2 pts.] Also select a random message from the messages array.
17. [2 pts.] Make sure that when the button is clicked, the message is never the same as the message that had been displayed the last time the button was clicked.
18. [4 pts.] Fade in the Image and Text using a default animation.

![image](https://github.com/user-attachments/assets/2504ad57-da01-41ac-ba9a-8d51a468ca66)

