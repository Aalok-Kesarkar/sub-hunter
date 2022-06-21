# sub-hunter
<h3>BASH script to automate starting tasks of bug-bounty like finding subdomain, JS files, fuzzing directories
And saves results in dedicated directory.</h3>

Before running the hunter script run install.sh file to download and setup dependencies.
<br><br><br>
$ ./sub-hunter example.com

Demo output files:<br>
<img src=https://user-images.githubusercontent.com/84756887/174868916-66918754-25ab-48f1-8cd8-41266907636f.png width="700px" height="80px" alt="Output files after running tool"/>
<br><br><br><br>
This BASH wrapper uses following tools to find subdomains, javascript files and directories in a website provided by user.
  1) assetfinder
  2) Sublist3r
  3) subjs
  4) httprobe
  5) dirsearch

An useful wrapper for bug bounty and penetration testing.
