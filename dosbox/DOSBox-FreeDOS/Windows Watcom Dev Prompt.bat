@echo off
prompt=$P$$$S
subst V: .\root > NUL
subst W: .\WATCOM > NUL
V:
echo DOSBox root is at V:\
echo Open Watcom is at W:\
%comspec% /k W:\owsetenv
subst /d V:
subst /d W:
