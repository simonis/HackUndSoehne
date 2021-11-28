
export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ "
export TERM=xterm-256color

CWD=`pwd`

#export PATH=/share/output-jdk9-hs-comp-dbg/images/jdk/bin:$PATH
export PATH=/share/output-jdk9-dev-opt/images/jdk/bin:$PATH

if [ "$1" == "historical" ]; then
export CLASSPATH=$CWD/jdk113/demo/DrawTest/1.0.2:jdk113/demo/MoleculeViewer:jdk113/demo/WireFrame
#cd jdk113/
cd /share/software/Java/jdk1.1.3
else
if [ "$1" == "jigsaw" ]; then
cd jigsaw/
else
if [ "$1" == "jshell" ]; then
export CLASSPATH=$CWD/bin
else
if [ "$1" == "strings" ]; then
export PATH=/share/output-jdk10-hs-dbg/images/jdk/bin:$PATH
alias java9=/share/output-jdk9-dev-opt/images/jdk/bin/java
alias javac9=/share/output-jdk9-dev-opt/images/jdk/bin/javac
alias java8=/share/output-jdk8u-dbg/images/j2sdk-image/bin/java
alias javac8=/share/output-jdk8u-dbg/images/j2sdk-image/bin/javac
cd strings/
else
if [ "$1" == "lvti" ]; then
export PATH=/share/output-jdk10-hs-dbg/images/jdk/bin:$PATH
alias java9=/share/output-jdk9-dev-opt/images/jdk/bin/java
alias javac9=/share/output-jdk9-dev-opt/images/jdk/bin/javac
cd lvti/
else
if [ "$1" == "value_objects" ]; then
export CLASSPATH=$CWD/bin
fi
fi
fi
fi
fi
fi

export LD_LIBRARY_PATH=/share/OpenJDK/hsdis
ulimit -c unlimited

alias la='ls -la'
#alias emacs="emacs -nw --eval \"(load-theme 'manoj-dark t)\""
alias emacs="emacs -nw --eval \"(load-theme 'tango-dark t)\""

set -o history
unset HISTFILE
history -c
history -r $CWD/.history_$1
