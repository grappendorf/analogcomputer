#!/bin/bash
PROJECT_NAME=analogcomputer
PROJECT_DIR=analogcomputer
VERSION=$(cat version.txt)
mkdir -p build                                                                                                                                                                                                     
rm -f build/*.zip                                                                                                                                                                                                  
cd ..                                                                                                                                                                                                              
zip ${PROJECT_DIR}/build/$PROJECT_NAME-$VERSION.zip ${PROJECT_DIR} -r \
    --exclude \*/RampGenerator/\* \
    --exclude \*/RefVoltage/\* \
    --exclude \*/Scope/\* \
    --include \*.brd \
    --include \*.sch
cd ${PROJECT_DIR}    
