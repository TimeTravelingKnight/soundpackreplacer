.macro findCruxSpot, currPoint,file
  .if reads32(file, currPoint) == 0x61746164
	;.notice "Found it at" + tohex(currpoint)
       
	regexThis currPoint,file
	;.notice filewithnopath
	;createWemFile currPoint,file,@@file
	
 .else 
	;.notice "Looking still"
	findCruxSpot currPoint+1,file
 .endif

.endmacro