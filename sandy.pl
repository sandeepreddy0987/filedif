#!/usr/bin/perl
use strict;
use warnings;
use autodie;
use File::Copy;   #Gives you access to the "move" command
use constant {
    FROM_DIR => "/home/akhil/all",
    TO_DIRPDF  =>  "/home/akhil/pdffolder",
    TO_DIRTXT  =>  "/home/akhil/textfolder",
    TO_DIRJPG   => "/home/akhil/jpgfolder",
    TO_DIRDOC   =>  "/home/akhil/docfolder",
    TO_DIRM   => "/home/akhil/Mfolder",
   
};

#Opens FROM_DIR, so I can read from it
opendir my $dir, FROM_DIR;


while (my $file = readdir $dir) 
{ 
  my $from = FROM_DIR . "/" . "$file";
 given($file)
  {
   when($file=~/[a-zA-Z0-9].pdf/)
  {
    move $from, TO_DIRPDF;
  }
   when($file=~/[a-z].txt/)
  {
    #my $from ="/home/sandy/MIXFILES/$file";
    move $from, TO_DIRTXT;
  }
  when($file=~/[a-z].jpg/)
  {
    #my $from ="/home/sandy/MIXFILES/$file";
    move $from, TO_DIRJPG;
  }
  when($file=~/[a-z].m/)
  {
    #my $from ="/home/sandy/MIXFILES/$file";
    move $from, TO_DIRM;
  }
   when($file=~/[a-z].doc/)
  {
    #my $from ="/home/sandy/MIXFILES/$file";
    move $from, TO_DIRDOC;
  }
}
}

