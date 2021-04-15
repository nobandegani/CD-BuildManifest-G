::Copyright Inoland Studio, Inc. All Rights Reserved.
::support@inoland.site

@echo off
set /P filename="Enter CustomName/exam=VariantA   ?"
if [%filename%]==[] (set filename=VariantA)

set /P bid="Enter BuildID/exam=Patcher-Live   ?"
if [%bid%]==[] (set bid=Patcher-Live)

set /P vnumber="Enter Version Number/exam=ver001   ?"
if [%vnumber%]==[] (set vnumber=ver001)

set /P vpath="Enter Custom Path/exam=VariantA   ?"
if [%vpath%]==[] (set vpath=%filename%)


set cpatch=.\BuildManifest-%filename%.txt


::set $NUM_ENTRIES =   -----------------------------------------------------------+

set cnt=0
for %%A in ("*.pak") do set /a cnt+=1
set /A nentries= %cnt% - 1
echo ^$NUM_ENTRIES =^ %nentries% >%cpatch%


::set $BUILD_ID =   --------------------------------------------------------------
echo ^$BUILD_ID =^ %bid%>>%cpatch%


::set pakchunk entries   ---------------------------------------------------------
setlocal enabledelayedexpansion
FOR %%I IN ("*.pak") DO (
	SET fne=%%~nxI
	SET fn=%%~nI
	SET chunkid=!fn:~8,4!

	if !fne! NEQ pakchunk0-WindowsNoEditor.pak (echo !fne!		%%~zI		%vnumber%	!chunkid!	/%vpath%/!fne! >>%cpatch% ) 
)

Pause


::example build manifest ------------------------------------------------------------
::$NUM_ENTRIES = 7
::$BUILD_ID = Patcher-Live
::pakchunk2001-WindowsNoEditor.pak	649386902	ver001	2001	/VariantA/pakchunk2001-WindowsNoEditor.pak