# Basic Editor Commands
## navigation
C-G : displays your location in a file and the file status
G   : move to end of file
#G  : move to line number
#gg : ^
gg  : move to the first line

H   : move cursor to the top screen
M   : move cursor to the middle of the screen
L   : move cursor to the bottom of the screen

w   : move to the start of the next word
W   : move to the start of the next word (including punctuation)
e   : jump forward to the end of a word
E   : ...
b   : back to start of word
B   : ...
ge  : back to end of word
gE  : ...
{   : jump to next paragraph (or function/block)
}   : ...

zz  : center screen around cursor
zt  : position screen so cursor is at top
zb  : ...

0   : to start of line
^   : to first non blank line
$   : end of line
g_  : last non blank character

%   : go to matching paren

fx  : go to next occurence of character x
tx  : go to before next occurence of character x
Fx  : go to previous occurence
Tx  : go to after previous occurence
;   : previous find movement again
,   : previous find movement again backwards

=======


%   : go to matching paren
:s/old/new      : substitute next
:s/old/new/g    : substitute in line

## text editing
i   : insert before cursor
I   : insert at the beginning of the line
a   : insert after cursor
ea  : insert at end of word
A   : insert at end of line
o   : open new line below this one
O   : open new line above this one

r   : replace a single character (and return to command mode)
cc  : replace an entire line (deletes the line and moves into insert mode)
C   : replace from the cursor to the end of a line
cw  : replace from the cursor to the end of a word
s   : delete a character (and move into insert mode)
J   : merge the line below to the current one with a space in between them
gJ  : merge the line below to the current one with no space in between them
u   : undo
C-r : redo
.   : repeat last command

## Moving


## Window Management
(all preceded by C-W)
s   : new horizontal split
v   : new vertical split

r   : Rotate windows downwards/rightwards.
R   : Rotate windows Upwards/leftwards.

=   : make all windows the same width/height (if possible)---

# Extention specific commands
## barbar
A-< : move to previous
A-> : Move to next
A-1 : Go to 1 

A-p : pin/unpin
A-c : close

## LSP
[d  : diagnostic previous
]d  : diagnostic next
S-e : diagnostic open

## Nvim Tree
C-T : Toggle
I   : Show hidden files
R   : refresh
C-] : Switch to directory
R   : (refresh) to perform a reread of the files contained in the project
H   : (hide) to hide/display hidden files and folders (beginning with a dot .)
E   : (expand_all) to expand the entire file tree starting from the root folder (workspace)
W   : (collapse_all) to close all open folders starting from the root folder
-   : (dir_up) allows you to go back up folders. 
s   : (system) to open the file with the system application set by default for that file type
f   : (find) to open the interactive file search to which search filters can be applied
F   : to close the interactive search
C-k : to display information about the file such as size, creation date, etc.
g-? : to open the help with all the predefined shortcuts for quick reference
q   : to close the file explorer

### File editing
a   : add file 
r   : rename
d   : delete
x   : cut
c   : copy
p   : paste
y   : copy fname
Y   : copy relative path
g-y : copy absolute path

## Vimspector
<F6>    : Toggle Breakpoint
<F5>    : Launch
<F8>    : Reset
<F9>    : Step Over
<F10>   : Step Into
<F12>   : Step Out
