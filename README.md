![AutoDir](https://www.hostinger.es/tutoriales/wp-content/uploads/sites/7/2018/03/como-usar-comando-find-linux-1280x720.png)

# How to use it
I did this little script to automatically create folders for a python course I was doing. It asks for the number of folders and for the extension of the files in the folder then it creates this num of folders each one with a file of this tipe in.
I have created an alias for it to be able to call it in the terminal from any directory.

To do this I have followed the following steps:

1. Download the file.
2. Save it in a folder that you are not going to delete and that is where the alias will look for it.
3. Copy the path where the file is located.
4. Open a terminal in the same directory and run:
      
         chmod u+x AutoDir.sh

5. Also install:
      
         sudo apt-get install tree

6. Now run: 

         nano ~/.bashrc

7. And at the end of the file add the following line with CTRL + SHIFT + V:

         alias AutoDir='cp /home/marcos/Documents/AutoDir.sh . && ./AutoDir.sh && rm AutoDir.sh'

8. Change your path to the path where the original file is located.
9. Press CTRL + X.
10. Press Y and enter to save the file.
11. And now run:

         source ~/.bashrc

And that's it, you already have it installed. When you want to run it, simply open a terminal in the directory you want to create the folders and run:

      AutoDir