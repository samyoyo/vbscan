#!/usr/bin/perl
#
#            --------------------------------------------------
#                            vbscan
#            --------------------------------------------------
#        Copyright (C) <2015>  <(Mohammad Reza Espargham)>
#
#        This program is free software: you can redistribute it and/or modify
#        it under the terms of the GNU General Public License as published by
#        the Free Software Foundation, either version 3 of the License, or
#        any later version.
#
#        This program is distributed in the hope that it will be useful,
#        but WITHOUT ANY WARRANTY; without even the implied warranty of
#        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#        GNU General Public License for more details.
#
#        You should have received a copy of the GNU General Public License
#        along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#
# About Author :
#
#    Founder     :   Mohammad Reza Espargham
#    Location    :   Iran
#    Linkedin    :   https://ir.linkedin.com/in/rezasp
#    E-Mail      :   me@reza.es , reza.espargham@gmail.com
#    Website     :   www.reza.es
#    Twitter     :   https://twitter.com/rezesp
#    FaceBook    :   https://www.facebook.com/reza.espargham
#    SourceForge :   https://sourceforge.net/projects/vbscan/
#    Github      :   https://github.com/rezasp/vbscan/

$author="Mohammad Reza Espargham";
$version="0.1.4";
$codename="Dennis Ritchie"; # https://en.wikipedia.org/wiki/Dennis_Ritchie <3
$update="2016/01/31";

system(($^O eq 'MSWin32') ? 'cls' : 'clear');
use Term::ANSIColor;

$SIG{INT} = \&interrupt;
sub interrupt {
    fprint("\nShutting Down , Interrupt by user");
    print color("reset");
    exit;
}
do "core/header.pl";
do "core/main.pl";
do "core/ver.pl";
do "exploit/verexploit.pl";
do "modules/cpfinder.pl";
do "modules/cpupgrade.pl";
do "modules/validator.pl";
do "exploit/faq.pl";
do "modules/configfinder.pl";
do "exploit/vbseo.pl";
do "exploit/xperience.pl";
do "exploit/upexploit.pl";
do "exploit/arcade.pl";
do "exploit/yui.pl";
do "exploit/htmlcode.pl";
do "modules/c99finder.pl";
do "modules/backupfinder.pl";
do "modules/errfinder.pl";
do "exploit/decodearguments.pl";

$target="$target/";
if($target =~ /http:\/\/(.*?)\//){$li=$1;}
if($target =~ /https:\/\/(.*?)\//){$li=$1;}
open(my $fh, '>', "reports/$1.txt");
print $fh "$log";
close $fh;

print "\n\n\n";
tprint("Your Report : reports/$1.txt\n\n");


print color("reset");

