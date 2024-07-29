.macro regexThis,currPoint, filepath

@@FindingFile:
	@@spot equ rfind(filepath, "/")
	@@file equ substr(filepath , @@spot+1, strlen(filepath))
	createWemFile currPoint,filepath,@@file
.endmacro