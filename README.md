## port collision fix 
A simple hack that fixes the "2222" port collision problem in Vagrant if you're running the VMWare Fusion provider via bash

<pre>chmod u+x vagrant.sh</pre>

then 

<pre>./vagrant.sh 2222 (or whatever port in question)</pre> 

so for example if the problem is on port 8080 run 

<pre>./vagrant.sh 8080</pre> 

enjoy 
