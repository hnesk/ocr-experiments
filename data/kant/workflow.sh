#!/bin/bash

ocrd-anybaseocr-binarize --overwrite -P bignore 0.25 -I OCR-D-IMG -O OCR-D-IMG-BIN
ocrd-anybaseocr-crop --overwrite -I OCR-D-IMG-BIN -O OCR-D-IMG-BIN-CROP
ocrd-cis-ocropy-segment --overwrite -P level-of-operation page -P dpi 120 -I OCR-D-IMG-BIN-CROP -O OCR-D-SEG-LINE

