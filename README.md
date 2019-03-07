Online help for kdb+
====================

Updated for V2.0 of the [Reference](https://code.kx.com/v2/ref/) (2019.03.07)


Install
-------

1. Copy `help.q` into `$QHOME` folder. 
2. ``q)\l help.q``


Use
---

```txt
q)help `
attributes| data attributes
cmdline   | command line parameters
data      | data types
debug     | debug - debugger commands
define    | assign, define, control and debug
doth      | .h namespace
dotj      | .j namespace
dotq      | .Q namespace
dotz      | .z namespace
envvar    | envvar - environment variables
errors    | error messages
internal  | negative bang - -n!x - internal system calls
iterator  | iterators/operators
keyword   | keywords/functions
kill      | kill - killing a q session
lic       | licenses - kdb+ license files
operator  | operators/functions
save      | save/load tables
syscmd    | system commands
temporal  | temporal - date & time casts
q)
q)help `operator
@   Apply/At      $   Cond        !    Dict             ?  Find
.   Index/At          Cast             Enkey               Roll, Deal
    Trap              Tok              Unkey               Enum Extend
    Amend             Enumerate        Enumeration         Select
                      Pad              Flip Splayed        Exec
                      mmu              Display             Simple Exec
                                       Internal            Vector Conditional
                                       Update
                                       Delete

+   Add           -   Subtract     *   Multiply         %  Divide

=   Equals        <   Less Than    >   Greater Than     ~  Match
<>  Not Equals    <=  Up To        >=  At Least
|   Greater, OR   &   Lesser, AND

#   Take          _   Cut, Drop    ^   Fill             ,  Join
q)
```


Customise
---------

See `makehelp.q` and `texts/` to roll your own on-line help. 


Contact
-------

This is a project of the [Kx Librarian](mailto:librarian@kx.com). 

> A librarian’s job is to put information where people can find it. 
