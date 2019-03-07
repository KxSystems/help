/ help.q 2019.03.07T17:15:09.238
\d .help
DIR:TXT:()!()
display:{if[not 10h=abs type x;x:string x];$[1=count i:where(key DIR)like x,"*";-1 each TXT[(key DIR)[i]];show DIR];}
fetch:{if[not 10h=abs type x;x:string x];$[1=count i:where(key DIR)like x,"*";1_raze"\n",'TXT[(key DIR)[first i]];DIR]}
TXT,:(enlist`attributes)!enlist(
 "example           overhead ";
 "`s#2 2 3 sorted   0 ";
 "`u#2 4 5 unique   16*u ";
 "`p#2 2 1 parted   (4*u;16*u;4*u+1) ";
 "`g#2 1 2 grouped  (4*u;16*u;4*u+1;4*n)";
 "";
 "The byte overheads use n(number of elements) and u(number of uniques)";
 "`u is for unique lists.";
 "`p and `g are for lists with a lot of repetition.";
 "";
 "`s#, `u# and `g# are preserved on append in memory (if possible)";
 "only `s# is preserved on append to disk"
 )
DIR,:(enlist`attributes)!enlist`$"data attributes"
TXT,:(enlist`cmdline)!enlist(
 "q [f] [-b] [-c r c] [-C r c] [-g 0|1] [-l] [-L][-o N] [-p N] [-P N] [-q]";
 "      [-r :H:P] [-s N] [-t N] [-T N] [-u|U F] [-w N] [-W N] [-z 0|1]";
 "";
 "f load script (*.q, *.k, *.s), file or directory";
 "";
 "-b               block client write access ";
 "-c r c           console maxRows maxCols";
 "-C r c           http display maxRows maxCols ";
 "-e [0|1|2]       disable|enable|display error trap clients";
 "-g [0|1]         disable|enable immediate garbage collect, default 0";
 "-l               log updates to filesystem ";
 "-L               as -l, but sync logging";
 "-o N             offset hours (from GMT: affects .z.Z/T/P/N), default 0";
 "-p N             port kdbc(/jdbc/odbc) http(html xml txt csv)";
 "-p -N            port multithreaded kdbc";
 "-P N             printdigits, default 7, 0=>all";
 "-q               quiet, no startup banner text";
 "-r :H:P          replicate from :host:port ";
 "-s N             slaves for parallel execution";
 "-S N             set random seed";
 "-t N             timer milliseconds, default 0 (=> none)";
 "-T N             timeout seconds(applies to all client queries), default 0 (=> none)";
 "-u F             usr:pwd file, no access above start directory";
 "-u [0|1]         enable|disable system escapes";
 "-U F             as -u, but no file restrictions";
 "-w N             workspace MB limit (default: 2*RAM)";
 "-W N             week offset, default 2, 0=>saturday";
 "-z [0|1]         \"D\" uses 0:mm/dd/yyyy or 1:dd/mm/yyyy, default 0"
 )
DIR,:(enlist`cmdline)!enlist`$"command line parameters"
TXT,:(enlist`data)!enlist(
 "n-----c----name-------sz----literal------------null-----inf-----SQL--------Java-------.Net";
 "0     *    list";
 "1     b    boolean    1     0b                                             Boolean    boolean";
 "2     g    guid       16                        0Ng                        UUID       GUID";
 "4     x    byte       1     0x00                                           Byte       byte";
 "5     h    short      2     0h                  0Nh     0Wh     smallint   Short      int16";
 "6     i    int        4     0i                  0Ni     0Wi     int        Integer    int32";
 "7     j    long       8     0j or 0             0Nj     0Wj     bigint     Long       int64";
 "                                                or 0N   or 0W";
 "8     e    real       4     0e                  0Ne     0We     real       Float      single";
 "9     f    float      8     0.0 or 0f           0n      0w      float      Double     double";
 "";
 "11    s    symbol           `                   `               varchar    String     string";
 "12    p    timestamp  8     `dateDtimespan      0Np     0Wp                Timestamp  DateTime (RW)";
 "13    m    month      4     2000.01m            0Nm";
 "14    d    date       4     2000.01.01          0Nd     0Wd     date       Date";
 "15    z    datetime   8     dateTtime           0Nz     0wz     timestamp  Timestamp  DateTime (RO)";
 "16    n    timespan   8     00:00:00.000000000  0Nn     0Wn                Timespan   TimeSpan";
 "17    u    minute     4     00:00               0Nu     0Wu";
 "18    v    second     4     00:00:00            0Nv     0Nv";
 "19    t    time       4     00:00:00.000        0Nt     0Wt     time       Time       TimeSpan";
 "20-76      enums";
 "77         anymap";
 "78-96      77+t \342\200\223 mapped list of lists of type t";
 "97         nested sym enum";
 "98         table";
 "99         dictionary";
 "100        lambda";
 "101        unary primitive";
 "102        operator";
 "103        iterator";
 "104        projection";
 "105        composition";
 "106        f'";
 "107        f/";
 "108        f\\";
 "109        f':";
 "110        f/:";
 "111        f\\:";
 "112        dynamic load";
 "";
 "n: short int returned by type and used for casting, e.g. 9h$3";
 "c: character used lower-case for casting and upper-case for Load CSV";
 "sz: size in bytes";
 "inf: infinity (no math on temporal types); 0Wh is 32767h";
 "RO: read only; RW: read-write";
 "";
 "Cast:`char$data `CHAR$string";
 "";
 "The int, float, char and symbol literal nulls are: 0N 0n \" \" `.";
 "The rest use type extensions, e.g. 0Nd. No null for boolean or byte.";
 "0Wd 0Wz 0Wt  placeholder infinite dates/times/datetimes (no math)";
 "";
 "dict:`a`b!.. table:([]x:..;y:..) or +`x`y!..";
 "date.(datetime dd mm month timestamp uu week year) / .z.d";
 "datetime.(date dd hh minute mm month second ss time timespan timestamp uu week year) / .z.z";
 "time.(hh minute mm second ss timespan uu) milliseconds=time mod 1000 / .z.t";
 "timespan.(hh minute mm second ss time uu) / .z.n";
 "timestamp.(date datetime dd hh minute mm month second ss time timespan uu week year) / .z.p"
 )
DIR,:(enlist`data)!enlist`$"data types"
TXT,:(enlist`debug)!enlist(
 " :.    return from debug mode ";
 " `     browse the stack frame above";
 " .     browse the stack frame below";
 " 'str  throw str from the innermost stack frame";
 " .z.ex .z.ey  (set in the debugger) the failing primitive and its arglist, if available";
 ".Q.bt[]        print current stack trace (list of stack frames)";
 ".Q.sbt[x]      format a stack trace (stringify back trace)";
 ".Q.trp[f;x;g]  like @(trap), but g's second argument is a stack trace: g[error symbol;stack trace]"
 )
DIR,:(enlist`debug)!enlist`$"debug - debugger commands"
TXT,:(enlist`define)!enlist(
 "Dyad------------D-Amend---------Monad-----------M-amend------";
 "v:y             .[`v;();:;y]";
 "v+:y            .[`v;();+;y]    v-:             .[`v;();-:]";
 "v[i]+:y         .[`v;,i;+;y]    v[i]-:          .[`v;,i;-:]";
 "v[i;j]+:y       .[`v;(i;j);+;y] v[i;j]-:        .[`v;(i;j);-:]";
 "";
 "@[v;i;d;y] is .[v;,i;d;y]       @[v;i;m] is .[v;,i;m]";
 "";
 "{[a;b;c] ...}   function definition";
 " x y z          default parameters";
 " d:...          local variable";
 " d::..          global variable ";
 "";
 "control(debug: ctrl-c stop)";
 " $[c;t;f]       conditional";
 " ?[c;t;f]       boolean conditional";
 " if[c; ... ]";
 " do[n; ... ]";
 " while[c; ...]";
 " / ...          comment";
 " : ...          return(resume)";
 " ' ...          signal";
 "";
 "trap signals with .[f;(x;y;z);v] and @[f;x;v]";
 "or                .[f;(x;y;z);g] and @[f;x;g] ";
 "where v is the value to be returned on error ";
 "or g is a monadic function called with error text"
 )
DIR,:(enlist`define)!enlist`$"assign, define, control and debug"
TXT,:(enlist`doth)!enlist(
 ".h.br    linebreak                 .h.http      hyperlinks";
 ".h.c0    web color                 .h.hu        URI escape";
 ".h.c1    web color                 .h.hug       URI map";
 ".h.cd    CSV from data             .h.hy        HTTP response";
 ".h.code  code after Tab            .h.iso8601   ISO timestamp";
 ".h.data                            .h.jx        table";
 ".h.ed    Excel from data           .h.logo      Kx logo";
 ".h.edsn  Excel from tables         .h.nbr       no break";
 ".h.fram  frame                     .h.pre       pre";
 ".h.ha    anchor                    .h.sa        style";
 ".h.hb    anchor target             .h.sb        style";
 ".h.hc    escape lt                 .h.sc        URI-safe";
 ".h.he    HTTP 400                  .h.td        TSV";
 ".h.hn    HTTP error                .h.text      paragraphs";
 ".h.hp    HTTP response             .h.tx        filetypes";
 ".h.hr    horizontal rule           .h.ty        MIME types";
 ".h.ht    Marqdown to HTML          .h.uh        URI unescape";
 ".h.hta   start tag                 .h.xd        XML";
 ".h.htac  element                   .h.xmp       XMP";
 ".h.htc   element                   .h.xs        XML escape";
 ".h.html  document                  .h.xt        JSON"
 )
DIR,:(enlist`doth)!enlist`$".h namespace: markup"
TXT,:(enlist`dotj)!enlist(
 ".j.j     serialize                 .j.k         deserialize"
 )
DIR,:(enlist`dotj)!enlist`$".j namespace: JSON"
TXT,:(enlist`dotq)!enlist(
 "General                                      Database";
 " .Q.addmonths                                 .Q.chk     fill HDB";
 " .Q.dd       join symbols                     .Q.dpft    save table";
 " .Q.def                                       .Q.dsftg   load process save";
 " .Q.f        format                           .Q.en      enumerate varchar cols";
 " .Q.fc       parallel on cut                  .Q.fps     streaming algorithm";
 " .Q.ff       append columns                   .Q.fs      streaming algorithm";
 " .Q.fk       foreign key                      .Q.fsn     streaming algorithm";
 " .Q.fmt      format                           .Q.hdpf    save tables";
 " .Q.ft       apply simple                     .Q.qt      is table";
 " .Q.fu       apply unique                     .Q.qp      is partitioned";
 " .Q.gc       garbage collect";
 " .Q.id       sanitize                         Partitioned database state";
 " .Q.s        plain text                       .Q.cn      count partitioned table";
 " .Q.V        table to dict                    .Q.bv      build vp";
 " .Q.v        value                            .Q.ind     partitioned index";
 " .Q.view     subview                          .Q.MAP     maps partitions";
 "                                              .Q.par     locate partition";
 "Environment                                   .Q.PD      partition locations";
 " .Q.k        version                          .Q.pd      modified partition locations";
 " .Q.opt      command parameters               .Q.pf      partition type";
 " .Q.res      k words                          .Q.pn      partition counts";
 " .Q.w        memory stats                     .Q.pt      partitioned tables";
 " .Q.x        non-command parameters           .Q.PV      partition values";
 "                                              .Q.pv      modified partition values";
 "IPC                                           .Q.vp      missing partitions";
 " .Q.addr     IP address";
 " .Q.hg       HTTP get                         Segmented database state";
 " .Q.host     hostname                         .Q.D       partitions";
 " .Q.hp       HTTP post                        .Q.P       segments";
 "                                              .Q.u       date based";
 "Datatype";
 " .Q.j10      encode binhex                   File I/O";
 " .Q.j12      encode base64                    .Q.l        load";
 " .Q.M        long infinity                    .Q.Cf       create empty nested char file";
 " .Q.ty       type                             .Q.Xf       create file";
 " .Q.x10      decode binhex";
 " .Q.x12      decode base64"
 )
DIR,:(enlist`dotq)!enlist`$".Q namespace: utilities"
TXT,:(enlist`dotz)!enlist(
 "System information                Callbacks";
 ".z.a    IP address                .z.ac    HTTP auth from cookie";
 ".z.b    dependencies              .z.bm    msg validator";
 ".z.c    cores                     .z.exit  action on exit";
 ".z.D/d  date shortcuts            .z.pc    close";
 ".z.e    TLS connection status     .z.pd    peach handles";
 ".z.ex   failed primitive          .z pg    get";
 ".z.ey   arg to failed primitive   .z.ph    HTTP get";
 ".z.f    file                      .z.pi    input";
 ".z.h    host                      .z.po    open";
 ".z.i    PID                       .z.pp    HTTP post";
 ".z.K    version                   .z.pq    qcon";
 ".z.k    release date              .z.ps    set";
 ".z.l    license                   .z.pw    validate user";
 ".z.N/n  local/UTC timespan        .z.ts    timer";
 ".z.o    OS version                .z.vs    value set";
 ".z.P/p  local/UTC timestamp       .z.wc    WebSocket close";
 ".z.pm   HTTP options              .z.wo    WebSocket open";
 ".z.q    quiet mode                .z.ws    WebSocket";
 ".z.s    self";
 ".z.T/t  time shortcuts";
 ".z.u    user ID";
 ".z.W/w  handles/handle";
 ".z.X/x  raw/parsed command line";
 ".z.Z/z  local/UTC datetime";
 ".z.zd   zip defaults"
 )
DIR,:(enlist`dotz)!enlist`$".z namespace: system information and callbacks"
TXT,:(enlist`envvar)!enlist(
 "var---default---use-------------------------------------------------";
 "QHOME $HOME/q   folder searched for q.k and unqualified script names";
 "QLIC  $QHOME    folder searched for k4.lic license file ";
 "QINIT q.q       additional file loaded after q.k has initialised";
 "";
 "LINES           supplied by OS, used to set \\c";
 "COLUMNS         \\c $LINES $COLUMNS";
 "make sure LINES and COLUMNS are exported. In bash:";
 "export LINES COLUMNS";
 "before starting q";
 "";
 "getenv`VARNAME";
 "`VARNAME setenv \"NEWVALUE\""
 )
DIR,:(enlist`envvar)!enlist`$"envvar - environment variables "
TXT,:(enlist`errors)!enlist(
 "Runtime errors";
 "error------------example------------------------------explanation----------------------------------------------------------";
 "access                                                Attempt to read files above directory, run system commands or failed usr/pwd";
 "accp                                                  Tried to accept an incoming TCP/IP connection but failed to do so";
 "adict            d[::]:x                              Blocked assignment ('nyi)";
 "arch             `:test set til 100                   Attempt to load file of wrong endian format";
 "                 -17!`:test";
 "assign           cos:12                               Attempt to redefine a reserved word";
 "badtail                                               Incomplete transaction at end of file, get good (count;length) with -11!(-2;`:file)";
 "can't                                                 Only commercially licensed kdb+ instances can encrypt code in a script";
 "cast              s:`a`b; c:`s$`a`e                   Value not in enumeration";
 "con                                                   qcon client is not supported when kdb+ is in multithreaded input mode";
 "cond                                                  Even number of arguments to $";
 "conn                                                  Too many connections (1022 max)";
 "Could not                                             -26! found SSL/TLS not enabled";
 "initialize ssl";
 "d8                                                    The log had a partial transaction at the end but q couldn't truncate the file";
 "domain            til -1                              Out of domain";
 "elim              ((-58?`3) set \\:(),`a)$`a            Too many enumerations (max: 57)";
 "enable slave       \\s 4                                Command line enabled processes for parallel processing";
 "threads via cmd";
 "line -s only";
 "failed to load                                        Started kdb+ with -E 1 or -E 2 but without SSL/TLS enabled";
 "TLS certificates";
 "from              select price trade                  Badly formed select statement";
 "glim                                                  `g# limit (99 prior to V3.2, now unlimited";
 "hop                                                   Request to hopen a handle fails; includes message from OS";
 "hwr                                                   Handle write error, can't write inside a peach";
 "IJS                \"D= \\001 \"0: \"0=hello \\0011=world \"      Key type is not I, J, or S.";
 "insert            t:([k:0 1]a:2 3);`t insert(0;3)     Attempt to insert a record with an existing key into a keyed table";
 "length            ()+til 1                            Incompatible lengths";
 "";
 "limit             0W#2                                Tried to generate a list longer than 2e9 or serialized object is  >1TB (2GB until V3.4), or 'type if trying to serialize a nested object which has > 2 billion elements, or parse errors";
 "loop              a::a                                Dependency loop";
 "mismatch          ([]a:til 4),([]b:til 3)             Columns that can't be aligned for R,R or K,K";
 "Mlim                                                  Too many nested columns in splayed tables. (Prior to V3.0, limited to 999; from V3.0, 251; from V3.3, 65530)";
 "mq                                                    Multi-threading not allowed";
 "name too long                                         Filepath \342\211\245100 chars (until V3.6 2018.09.26)";
 "noamend           t:([]a:1 2 3)                       Cannot change global state from within an amend";
 "                  n:`a`b`c";
 "                  update b:{`n?`d;:`n?`d}[]";
 "                  from `t";
 "no append to      V2:                                 Cannot append to zipped enum (from V3.0)";
 "zipped enums      .z.zd:17 2 6";
 "                  `:sym?`a`b";
 "                  V3:";
 "                  `:sym?`c";
 "no `g#            {`g#x}peach 2#enlist 0 1            A thread other than the main q thread has attempted to add a group attribute to a vector. Seen with peach+slave threads or multithreaded input queue";
 "noupdate          {a::x}peach 0 1                     Updates blocked by the -b cmd line arg, or reval code or a thread other than the main thread has attempted to update a global variable when in peach+slave threads or multithreaded input queue. Update not allowed when using -ve port number.";
 "nosocket                                              Can only open or use sockets in main thread.";
 "nyi                \"a \"like \"** \"                         Not yet implemented: probably makes sense, but not defined nor implemented";
 "os                 \\foo bar                            Operating-system error or license error";
 "par                                                   Unsupported operation on a partitioned table or component thereof";
 "parse                                                 Invalid syntax";
 "part                                                  Something wrong with the partitions in the HDB";
 "path too long     (`$ \": \",1000# \"a \") set 1 2 3          File path \342\211\245255 chars (100 before V3.6 2018.09.26)";
 "pl                                                    peach can't handle parallel lambdas (V2.3 only)";
 "pwuid                                                 OS is missing libraries for getpwuid. Most likely 32-bit app on 64-bit OS";
 "Q7                                                    nyi op on file nested array";
 "rank              +[2;3;4]                            Invalid rank";
 "rb                                                    Encountered a problem while doing a blocking read";
 "restricted        0 \"2+3 \"                              in a kdb+ process which was started with -b cmd line. Also for a kdb+ process using the username:password authentication file, or the -b cmd line option,  \\x cannot be used to reset handlers to their default. e.g.  \\x .z.pg";
 "s-fail            `s#3 2                              Invalid attempt to set sorted attribute. Also encountered with `s#enums when loading a database ( \\l db) and enum target is not already loaded.";
 "splay                                                 nyi op on splayed table";
 "stack              {.z.s[]}[]                         Ran out of stack space";
 "step               d:`s#`a`b!1 2;`d upsert `c`d!3 4   Attempt to upsert a step dictionary in place";
 "stop                                                  User interrupt (Ctrl-c) or time limit (-T)";
 "stype              '42                                Invalid type used for Signal";
 "sys                {system  \"ls \"}peach 0 1             Using system call from thread other than main thread";
 "threadview                                            Trying to calc a view in a thread other than main thread";
 "timeout                                               Request to hopen a handle fails on a timeout; includes message from OS";
 "TLS not enabled                                       Received a TLS connection request, but kdb+ not started with -E 1 or -E 2";
 "too many syms                                         Kdb+ currently allows for ~1.4B interned symbols in the pool and will exit with this error when this threshold is reached";
 "trunc                                                 The log had a partial transaction at the end but q couldn't truncate the file";
 "type               til 2.2                            Wrong type. Also see 'limit";
 "type/attr error                                       Direct update on disk for this type or attribute is not allowed";
 "amending file";
 "u-fail             `u#2 2                             Invalid attempt to set 'unique' attribute";
 "unmappable         t:([]sym:`a`b;a:(();()))           When saving partitioned data each column must be mappable. () and ( \" \"; \" \"; \" \") are OK";
 "                   .Q.dpft[`:thdb;.z.d;`sym;`t]";
 "upd                                                   Function upd is undefined (sometimes encountered during -11!`:logfile) or license error";
 "utf8                                                  The websocket requires that text is UTF-8 encoded";
 "value                                                 No value";
 "vd1                                                   Attempted multithread update";
 "view                                                  Trying to re-assign a view to something else";
 "wsfull              999999999#0j                      malloc failed, ran out of swap (or addressability on 32-bit), or hit -w limit";
 "wsm                 010b wsum 010b                    Alias for nyi for wsum prior to V3.2";
 "XXX                 delete x from system  \"d \";x        Value error (XXX undefined)";
 "";
 "System errors (from file ops and IPC)";
 "error------------example------------------------------explanation----------------------------------------------------------";
 "XXX:YYY                                               XXX is from kdb+, YYY from the OS";
 "";
 "Parse errors (on execute or load)";
 "error------------example------------------------------explanation----------------------------------------------------------";
 "[({])} \"           \"hello                               Open ([{ or  \"";
 "branch           a: \"1; \",65024# \"0; \"                    A branch (if;do;while;$[.;.;.]) more than 65025 byte codes away (255 before V3.6 2017.09.26)";
 "                 value  \"{if[ \",a, \"]} \"";
 "char             value  \" \\000 \"                         Invalid character";
 "globals          a: \"::a \"sv string til 111;            Too many global variables";
 "                 value \"{a \",a, \"::0} \"";
 "limit            a: \"; \"sv string 2+til 241;            Too many constants, or limit error";
 "                 value \"{ \",a, \"} \"";
 "locals           a: \":a \"sv string til 111;             Too many local variables";
 "                 value \"{a \",a, \":0} \"";
 "params           f:{[a;b;c;d;e;f;g;h;e]}              Too many parameters (8 max)";
 "";
 "License errors (on launch)";
 "error------explanation----------------------------------------------------------";
 "cores      The license is for fewer cores than available";
 "cpu        The license is for fewer CPUs than available";
 "exp        License expiry date is prior to system date";
 "host       The hostname reported by the OS does not match the hostname or hostname-pattern in the license";
 "k4.lic     k4.lic file not found";
 "os         Wrong OS or operating-system error (if runtime error)";
 "srv        Client-only license in server mode";
 "upd        Version of kdb+ more recent than update date, or function upd undefined";
 "user       Unlicenced user";
 "wha        System date is prior to kdb+ version date";
 "q)"
 )
DIR,:(enlist`errors)!enlist`$"error messages"
TXT,:(enlist`internal)!enlist(
 "--n--wrapper-----------------------------------------------------------";
 " 0N!         tee, output and return x";
 " -1! hsym    handle from sym x - ensures prefixed with :";
 " -2! attr    attributes of x";
 " -3! .Q.s1   display x";
 " -4!         tokens in string x";
 " -5! parse   parse tree for string x ";
 " -6! eval    evaluate parse tree x ";
 " -7! hcount  size of file x (handle count)";
 " -8!         byte representation of x";
 " -9!         k value from byte representation x ";
 "-10!         resolve type number x to enum";
 "-11!         streaming execute file x";
 " -11!logfile      streaming execute of entire logfile";
 " -11!(n;logfile)  streaming execute of first n cells in logfile";
 " -11!(-2;logfile) count valid cells in logfile";
 "-12! .Q.host hostname from address x (.z.a)";
 "-13! .Q.attr address from hostname x";
 "-14!         escape \" in string x (for csvs)";
 "-15! md5     MD5 for string x";
 "-16!         reference count for x";
 "-17!         read0 kdb+ file x from \"other\" endian ";
 "-18!         compressed version of -8!";
 "-19!         compress file (`:infile;`:outfile;blockSize;algo;zipLevel)";
 "                           (  data  ;`:outfile;blockSize;algo;zipLevel)";
 "-20! .Q.gc   garbage collect";
 "-21!         compression information for file x";
 "-22!         optimised shortcut for count -8!x ";
 "-23!         map data into memory without copying ";
 "-24! parse   like -5!, but in read-only mode ";
 "-25!(handles;msg) async broadcast <msg> to multiple handles";
 "-26!()       TLS settings for current process";
 "-26!handle   TLS settings for handle";
 "-29!x        JSON support internal"
 )
DIR,:(enlist`internal)!enlist`$"negative bang - -n!x - internal system calls"
TXT,:(enlist`iterator)!enlist(
 "map iterators";
 "'    Each           v1 each x    x v2'y       v3[x;y;z]";
 "/:   Each Right                  x v2/:y";
 "\\:   Each Left                   x v2\\:y";
 "':   Each Parallel  v1 peach x";
 "':   Each Prior                  v2 prior y";
 "'    Case           int'[x;y;z...]";
 "accumulating iterators";
 "\\    Scan           v1 scan x                             Converge, Do, While";
 "/    Over                         x v2/y      v3/[x;y;z]  MapReduce";
 "\\    Scan                         x v2\\y      v3\\[x;y;z]  Fold";
 "/    Over           v1 over x                             Converge, Do, While"
 )
DIR,:(enlist`iterator)!enlist`$"iterators (formerly adverbs)"
TXT,:(enlist`keyword)!enlist(
 "A\t abs acos aj aj0 all and any asc asin asof atan attr avg avgs";
 "B\t bin binr";
 "C\t ceiling cols cor cos count cov cross csv cut";
 "D\t delete deltas desc dev differ distinct div do dsave";
 "E\t each ej ema enlist eval except exec exit exp";
 "F\t fby fills first fkeys flip floor";
 "G\t get getenv group gtime";
 "H\t hclose hcount hdel hopen hsym";
 "I\t iasc idesc if ij ijf in insert inter inv";
 "K\t key keys";
 "L\t last like lj ljf load log lower lsq ltime ltrim";
 "M\t mavg max maxs mcount md5 mdev med meta min mins mmax mmin mmu mod msum";
 "N\t neg next not null";
 "O\t or over";
 "P\t parse peach pj prd prds prev prior";
 "R\t rand rank ratios raze read0 read1 reciprocal reval reverse rload rotate rsave rtrim";
 "S\t save scan scov sdev select set setenv show signum sin sqrt ss ssr string sublist sum sums sv svar system";
 "T\t tables tan til trim type";
 "U\t uj ujf ungroup union update upper upsert";
 "V\t value var view views vs";
 "W\t wavg where while within wj wj1 wsum";
 "X\t xasc xbar xcol xcols xdesc xexp xgroup xkey xlog xprev xrank"
 )
DIR,:(enlist`keyword)!enlist`$"keywords (functions)"
TXT,:(enlist`kill)!enlist(
 "If the q session is responsive and listening on a port, you can try connecting ";
 "to it via ipc and calling \"exit 0\".";
 "";
 "kill -9 pid results in an ungraceful exit, and should be used as a last resort.";
 "If kdb+ is responsive, send it SIGTERM, e.g. kill pid";
 "If it is not responsive, send SIGINT, then SIGTERM.";
 "If that doesn't work, and you really have to, then kill -9 pid.";
 "";
 "the pid of a q process is .z.i "
 )
DIR,:(enlist`kill)!enlist`$"kill - killing a q session"
TXT,:(enlist`lic)!enlist(
 "The locations for the license file k4.lic are:";
 "    the q directory ";
 "    the directory pointed to by the env var QHOME";
 "    the directory pointed to by the env var QLIC";
 "";
 "license errors, see help`errors";
 "";
 "licadmin@kx.com deals with license questions";
 "failover@kx.com can provide a temporary emergency license "
 )
DIR,:(enlist`lic)!enlist`$"licenses - kdb+ license files "
TXT,:(enlist`operator)!enlist(
 "@   Apply/At      $   Cond        !    Dict             ?  Find";
 ".   Index/At          Cast             Enkey               Roll, Deal";
 "    Trap              Tok              Unkey               Enum Extend";
 "    Amend             Enumerate        Enumeration         Select";
 "                      Pad              Flip Splayed        Exec";
 "                      mmu              Display             Simple Exec";
 "                                       Internal            Vector Conditional";
 "                                       Update";
 "                                       Delete";
 "";
 "+   Add           -   Subtract     *   Multiply         %  Divide";
 "";
 "=   Equals        <   Less Than    >   Greater Than     ~  Match";
 "<>  Not Equals    <=  Up To        >=  At Least";
 "|   Greater, OR   &   Lesser, AND";
 "";
 "#   Take          _   Cut, Drop    ^   Fill             ,  Join"
 )
DIR,:(enlist`operator)!enlist`$"operators (functions)"
TXT,:(enlist`save)!enlist(
 "tables can be written as a single file or spread across a directory, e.g.";
 "`:trade set x      / write as single file ";
 "`:trade/ set x     / write across a directory ";
 "trade:get`:trade   / read ";
 "trade:get`:trade/  / map columns on demand";
 "";
 "tables splayed across a directory must be fully enumerated(no varchar) and not keyed."
 )
DIR,:(enlist`save)!enlist`$"save/load tables"
TXT,:(enlist`syscmd)!enlist(
 "\\1 filename  redirect stdout";
 "\\2 filename  redirect stderr";
 "\\a [n]       tables [namespace]";
 "\\b           views (see also .z.b)";
 "\\B           invalid/pending dependencies";
 "\\c [23 79]   console height,width";
 "\\C [36 2000] browser height,width";
 "\\d [n]       q namespace/directory [go to]";
 "\\e [0|1|2]   error trap clients 0=off|1=on|2=display";
 "\\f [n]       functions [namespace]";
 "\\g [0|1]     garbage collection mode ";
 "\\l [f]       load script (or dir:files splays parts scripts)";
 "\\l .         (re)load data only, ignore any scripts  ";
 "\\o [N]       offset from gmt";
 "\\p [i]       port (0 turns off)";
 "\\P [7]       print digits(0-all)";
 "\\r           replication master";
 "\\r old new   unix mv ";
 "\\s           number of slaves (query only) ";
 "\\S [-314159] random seed";
 "\\t [i]       timer [x] milliseconds (1st fire after delay)";
 "\\t expr      time for expression ";
 "\\ts expr     time and space for expression";
 "\\T [i]       timeout [x] seconds ";
 "\\u           reload the user:pswd file specified with -u";
 "\\v [n]       variables [namespace]";
 "\\w           workspace (bytes allocated; available bytes in heap; max heap so far;";
 "                        max bytes available; mapped bytes; physical memory)";
 "             (max bytes set by -w, 0 => unlimited) - see .Q.w[]";
 "\\w 0         count symbols defined, symbol space used (bytes)";
 "\\W [2]       week offset(sat..fri)";
 "\\x .z.p?     expunge .z.zd or .z.p? value (ie reset to default)";
 "\\z [0|1]    \"D\"$ uses mm/dd/yyyy (0) or dd/mm/yyyy (1)";
 "\\cd [d]      O/S directory [go to]";
 "\\_           is readonly (cmdline -b)";
 "\\_ f.q       create runtime script f.q_ from f.q (or f.k_ from f.k) ";
 "\\[other]     O/S execute";
 "\\\\           exit";
 "\\            (escape suspension, or switch language mode)";
 "ctrl-c       (stop)"
 )
DIR,:(enlist`syscmd)!enlist`$"system commands"
TXT,:(enlist`temporal)!enlist(
 "`timestamp$x ~ 2009.11.05D20:39:35.614334000 ~ \"p\"$x ~ x.timestamp";
 "`datetime$x ~ 2009.11.05T20:39:35.614 ~ \"z\"$x ~ x.datetime";
 "`year$x ~ 2009 ~ x.year";
 "`month$x ~ 2009.11m ~ \"m\"$x ~ x.month";
 "`mm$`date$x ~ 11 ~ x.mm";
 "`week$x ~ 2009.11.02 ~ x.week";
 "`date$x ~ 2009.11.05 ~ \"d\"$x ~ x.date";
 "`dd$x ~ 5 ~ x.dd";
 "`hh$x ~ 20 ~ x.hh";
 "`minute$x ~ 20:39 ~ \"u\"$x ~ x.minute";
 "`mm$`time$x ~ 39 ~ x.mm";
 "`uu$x ~ 39 ~ x.uu";
 "`second$x ~ 20:39:35 ~ \"v\"$x ~ x.second";
 "`ss$x ~ 35 ~ x.ss";
 "`time$x ~ 20:39:35.614 ~ \"t\"$x ~ x.time";
 "`timespan$x ~ 0D20:39:35.614334000 ~ \"n\"$x ~ x.timespan"
 )
DIR,:(enlist`temporal)!enlist`$"temporal - date & time casts"
.q.help:.help.display
