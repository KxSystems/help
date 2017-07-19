Online help for kdb+
====================


Install
-------

1. Copy `help.q` into `$QHOME` folder. 
2. ``q)\l help.q``


Use
---
```q
q)help `
adverb    | adverbs/operators
attributes| data attributes
cmdline   | command line parameters
data      | data types
debug     | debug - debugger commands
define    | assign, define, control and debug
dotz      | .z locale contents
envvar    | envvar - environment variables
errors    | error messages
kill      | kill - killing a q session
lic       | licenses - kdb+ license files
negbang   | negative bang - -n!x - system calls
save      | save/load tables
syscmd    | system commands
temporal  | temporal - date & time casts
verbs     | verbs/functions
q)help `verbs
verb-infix-------prefix
s:x  gets     :x idem
i+i  plus     +l flip
i-i  minus    -i neg
i*i  times    *l first
f%f  divide   %f reciprocal
a&a  and      &B where
a|a  or       |l reverse
a^a  fill     ^a null
a=a  equal    =l group
a<a  less     <l iasc     <s(hopen)
a>a  more     >l idesc    >i(hclose)
c$a  cast s$  $a string   h$a "C"$C `$C
l,l  cat      ,x enlist
i#l  take     #l count
i_l  drop     _a floor    sc(lower)
x~x  match    ~a not      ~s(hdelete)
l!l  xkey     !d key      !i (s;();S):!s
A?a  find     ?l distinct rand([n]?bgxhijefcs)
x@i  at   s@  @x type          trap amend(:+-*%&|,)
x.l  dot  s.  .d value    .sCL trap dmend(:+-*%&|,)
A bin a;a in A;a within(a;a);sC like C;sC ss sC
{sqrt log exp sin cos tan asin acos atan}f
last sum prd min max avg wsum wavg xbar
exit getenv

dependency::expression (when not in function definition)
q)
```


Customise
---------

See `makehelp.q` and `texts/` to roll your own on-line help. 


To do
-----

- [ ] Revise `` `adverb`` to correspond with [code.kx.com/q/ref/adverbs](http://code.kx.com/q/ref/adverbs) 
- [ ] Revise `` `verbs`` to correspond with [code.kx.com/q/ref/elements/#operators](http://code.kx.com/q/ref/elements/#operators) 


Contact
-------

This is a project of the [Kx Librarian](mailto:librarian@kx.com). 

> A librarian’s job is to put information where people can find it. 
