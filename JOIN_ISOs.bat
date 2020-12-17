::make dirs
echo "making dirs ..."
md ISOs ISO_Parts
echo "dirs made"

::get iso name from format [name].part.iso
dir | findstr "part" > tmp.txt
SET /p isonametmp1=<tmp.txt
::echo %isonametmp1%
for /f "tokens=4" %%G in ("%isonametmp1%") DO (SET isonametmp2=%%G)
::echo %isonametmp2%
for /f "tokens=1 delims=." %%a in ("%isonametmp2%") do (set isoname=%%a)
::echo %isoname%
DEL tmp.txt

:: join iso's
echo "concatenating ISO's into ISOs/%isoname%.iso ..."
type *iso > ISOs/%isoname%.iso
echo"ISOs/%isoname%.iso COMPLETE!"

:: move iso parts to to_delete dir
echo "Moving ISO part to ISO_Parts/.."
move *iso ISO_Parts/ 
echo "move COMPLETE!"