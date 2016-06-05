#!/bin/bash

errorlog="$0.errorpag10"

# La salida estandar de error redireccionada al archivo if-then.sh.errorpag10
if cp archivo2.txt archivo2.txt.bck 2> $errorlog
then
	echo "El archivo2.txt fue correctamente respaldado."
	echo "Eliminando archivo original"
	# Ejemplo de un "if" anidado, una condicion contenida dentro de otra...
	if rm archivo2.txt
	then
		echo "El archivo orginal fue eliminado correctamente..."
	else
		echo "NO se pudo eliminar el archivo..."
	fi
	else
	echo "El archivo2.txt no pudo ser respaldado, verifique el log: $errorlog"
fi
