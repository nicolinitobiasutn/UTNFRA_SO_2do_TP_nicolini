#!/bin/bash

# 1. Validar parámetros
if [ $# -ne 2 ]; then
    echo "Error: Se necesitan 2 parámetros."
    echo "Uso: $0 <usuario_origen> <archivo_lista>"
    exit 1
fi

USUARIO_ORIGEN=$1
LISTA=$2

# 2. Obtener el hash de la contraseña (Clase 4 y 9 del PDF)
SHASH=$(sudo grep "^${USUARIO_ORIGEN}:" /etc/shadow | awk -F':' '{print $2}')

# 3. Recorrer el archivo y procesar (Clase 5 del PDF)
for LINEA in $(cat $LISTA | grep -v '^#'); do
    USUARIO=$(echo $LINEA | awk -F',' '{print $1}')
    GRUPO=$(echo $LINEA | awk -F',' '{print $2}')
    HOME_DIR=$(echo $LINEA | awk -F',' '{print $3}')

    # Crear grupo si no existe
    if ! getent group "$GRUPO" > /dev/null; then
        sudo groupadd "$GRUPO"
    fi

    # Crear usuario con su home, grupo y la clave encriptada
    if ! id "$USUARIO" > /dev/null 2>&1; then
        sudo useradd -m -d "$HOME_DIR" -g "$GRUPO" -s /bin/bash -p "$SHASH" "$USUARIO"
    fi
done

echo "Proceso finalizado con éxito."
