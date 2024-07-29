.macro createWemFile, currPoint,ogfile,outputfile
  
  .arm.little
  .open ogfile,"wem/"+outputfile,0
  .incbin ogfile,0,currPoint
  .org currPoint
  .incbin "loopheader/loopheader.bin"
  .org currPoint+filesize("loopheader/loopheader.bin")
  .dw leftpoint
  .dw rightpoint
  .db 00,00,00,00,00,00,00,00
  .incbin ogfile,currPoint

  .close
.endmacro