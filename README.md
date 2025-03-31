# sysfetch
Neofetch but tiny

If you want to change the ASCII art, you mainly need to update the ascii array. Just replace the lines or add new ones in the ascii array. However, keep in mind the following:

   * Field Width (ascii_width):

The script uses a fixed column width (set by ascii_width) when printing the ASCII art. If your new art has longer lines, you might want to increase this width so that the system info doesn't start too soon. Adjust the ascii_width variable if needed.

   * Number of lines:

The script dynamically adjusts to the number of lines in the ascii array as it loops through them. So if you add or remove lines, the script will just show blanks for missing lines on the other side of the pair. No extra change is needed for that.

So, in short, you only need to change the ascii array and possibly adjust ascii_width if your new art has different dimensions. The rest of the code should work as-is."
