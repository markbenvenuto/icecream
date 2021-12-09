@REM copy all the files for client-side icecream into a directory
@REM
@REM IMPORTANT
@REM icecc.exe and iceccd.exe MUST be run with the same cygwin1.dll from the same path
@REM otherwise they cannot "talk" to each other over the unix domain socket
@REM since the unix domain socket is based on the location of the cygwin dll
@REM
@REM see
@REM https://github.com/cygwin/cygwin/blob/8050ef207494e6d227e968cc7e5850153f943320/winsup/cygwin/cygheap.cc#L116-L137
@REM https://cygwin.com/git/?p=newlib-cygwin.git;a=blob;f=winsup/cygwin/fhandler_socket_unix.cc;h=8abb581b999e79ad71ddd19a1557e2be0fd9d757;hb=HEAD#l63
@REM
DESTDIR=z:\icecream

copy client\icecc.exe %DESTDIR%
copy client\icecc.exe %DESTDIR%\icerun.exe
copy daemon\iceccd.exe %DESTDIR%

copy "c:\cygwin64\bin\cygstdc++-6.dll" %DESTDIR%
copy "c:\cygwin64\bin\cygwin1.dll" %DESTDIR%
copy "c:\cygwin64\bin\cyggcc_s-seh-1.dll" %DESTDIR%
copy "c:\cygwin64\bin\cygarchive-13.dll" %DESTDIR%
copy "c:\cygwin64\bin\cyglzo2-2.dll" %DESTDIR%
copy "c:\cygwin64\bin\cygzstd-1.dll" %DESTDIR%
