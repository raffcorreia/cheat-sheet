#!/bin/bash

brew install $(cat formulas.txt)



# For the system Java wrappers to find this JDK, symlink it with
sudo ln -sfn /usr/local/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk

# openjdk@11 is keg-only, which means it was not symlinked into /usr/local,
# because this is an alternate version of another formula. Add openjdk@11 first in your PATH
echo 'export PATH="/usr/local/opt/openjdk@11/bin:$PATH"' >> ~/.bash_profile

# For compilers to find openjdk@11 you may need to set:
#export CPPFLAGS="-I/usr/local/opt/openjdk@11/include"

# Set JAVA_HOME. The idea is to keep it to the latest LTS, or the same version listed in the formulas.txt
echo 'export JAVA_HOME=$(/usr/libexec/java_home -v11)' >> ~/.bash_profile