# emacs ansi-term support
if test -n "$EMACS"
  set -x TERM eterm-color
end

# this function may be required
function fish_title
  true
end

function vterm_printf;
    if [ -n "$TMUX" ]
        # tell tmux to pass the escape sequences through
        # (Source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)
        printf "\ePtmux;\e\e]%s\007\e\\" "$argv"
    else if string match -q -- "screen*" "$TERM"
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$argv"
    else
        printf "\e]%s\e\\" "$argv"
    end
end

set -x JAVA_HOME /home/van/soft/jdk/jdk-8u221-linux-x64/jdk1.8.0_221
set -x JDK_HOME /home/van/soft/jdk/jdk-8u221-linux-x64/jdk1.8.0_221
set -x JRE_HOME $JAVA_HOME/jre set -x NODE_HOME /home/van/soft/node/node-v10.16.0-linux-x64
set -x MAVEN_HOME /home/van/soft/maven/apache-maven-3.6.1-bin/apache-maven-3.6.1
set -x JAVA_FOR_ADF /home/van/.wine/drive_c/app/Java
set -x GRADLE_HOME /home/van/soft/gradle/gradle-5.6.3
set -x KOTLIN_HOME /home/van/soft/kotlin-native-linux-1.3.50
set -x RIPGREP_CONFIG_PATH /home/van/.ripgreprc
set -x CXF_HOME /home/van/soft/webservice/cxflib/apache-cxf-3.3.4
set -x AXIS_HOME /home/van/soft/webservice/axis2-1.7.9-bin/axis2-1.7.9
set -x ANT_HOME /home/van/soft/ant/apache-ant-1.10.7
set -x STATSVN_HOME /home/van/soft/statsvn/statsvn-0.7.0
set -x XMLBEANS_HOME /home/van/soft/xmlbean/xmlbeans-2.3.0
set -x NHLH_BASE /home/van/soft/ideaproject/nhlh-pl/source
set -x ORACLE_HOME /home/van/soft/sqlplus/instantclient-sqlplus-linux.x64-19.6.0.0.0dbru/instantclient_19_6
set -x LD_LIBRARY_PATH $ORACLE_HOME
set -x NLS_LANG AMERICAN_AMERICA.AL32UTF8
set -x FZF_DEFAULT_OPTS "--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
set -x FZF_DEFAULT_COMMAND "fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build,target,out} --type f"
set -x TERM xterm-256color 
set CLASSPATH . $JAVA_HOME/lib/tools.jar $JAVA_HOME/lib/dt.jar $XMLBEANS_HOME/lib/xbean.jar
set PATH $ORACLE_HOME $XMLBEANS_HOME/bin $STATSVN_HOME /usr/local/bin /usr/sbin $JAVA_HOME/bin $JRE_HOME/bin $NODE_HOME/bin $MAVEN_HOME/bin $GRADLE_HOME/bin $KOTLIN_HOME/bin $AXIS_HOME/bin $ANT_HOME/bin $PATH
alias eclimd "bash -c /home/van/soft/elipse/eclipse-jee-photon-R-linux-gtk-x86_64/eclipse/eclimd"
alias emacs "bash -c /usr/bin/emacs26"
# alias /home/van/.eclim/.eclimd_instances "bash -c eclimd"
alias rm "safe-rm"
