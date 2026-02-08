#!/bin/bash

#==============================================================================
# Script de instalación de Fortran, Python y Maxima
#==============================================================================

echo "Actualizando repositorios..."
sudo apt update

echo "Instalando gfortran..."
sudo apt install -y gfortran

echo "Instalando Python 3..."
sudo apt install -y python3 python3-pip

echo "Instalando Maxima..."
sudo apt install -y maxima

echo "Instalación completada."