#target photoshop

var dir = new Folder('d:/photoshop/')
var files = dir.getFiles("*.png");  

for (var i = 0; i < files.length; i++) {//go through all the files in a folder
    var doc = app.open(files[i]);
    
    //crop to remove the top status bar
    var bounds = [0, 52, 720, 1280];
    doc.crop(bounds);

    //resize images
    doc.resizeImage(360, 614);

    //rewrite the originals
    doc.close(SaveOptions.SAVECHANGES)
}