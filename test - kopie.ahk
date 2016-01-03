; Prepare the files
GifAnimationURL1 := "http://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif"
GifAnimationFile1 := A_ScriptDir "\rotatingearth.gif" 
GifAnimationURL2 := "http://upload.wikimedia.org/wikipedia/commons/d/d3/Newtons_cradle_animation_book_2.gif"
GifAnimationFile2 := A_ScriptDir "\Newtons_cradle_animation_book_2.gif" 
IF !FileExist(GifAnimationFile1) {
    ToolTip, Downloading...
    UrlDownloadToFile, % GifAnimationURL1, % GifAnimationFile1
}
IF !FileExist(GifAnimationFile2) {
    ToolTip, Downloading...
    UrlDownloadToFile, % GifAnimationURL2, % GifAnimationFile2
}
ToolTip

; Create a Gui, add controls for Gif animation and display it.
Gui, GifAnimationSample: Margin, 20, 20
AnimatedGifControl("GifAnimationSample", GifAnimationFile1, "w200 h200")
AnimatedGifControl("GifAnimationSample", GifAnimationFile2, "w480 h360")
Gui, GifAnimationSample: Add, Text,, The images are from Wikipedia http://en.wikipedia.org/wiki/Graphics_Interchange_Format#Animated_GIF
Gui, GifAnimationSample: Show,, Animated Gif Gui Control Sample
Return

F1::Gui, GifAnimationSample:Destroy    ;It is recommended to destroy it when the window is not shown for memory conservation.

GifAnimationSampleGuiClose:
Exitapp