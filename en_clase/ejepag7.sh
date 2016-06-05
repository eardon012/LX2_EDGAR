#!/bin/bash

errorlog="$0.err"

# La salida estandar de error estará redirecionada al archivo if-then.sh.err
if cp archivo1.txt archivo.txt.bck 2> $errorlog
then
	echo "El archivo1.txt fue correctamente respaldado..."
else 
	echo "El archivo1.txt no pudo ser respladado, verifique el log: $errorlog"
fi
