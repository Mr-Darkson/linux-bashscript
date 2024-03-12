#!/bin/bash

#You can create variables yourself or or uncomment the two lines at the bottom and change the values.
#export LENGTH=10
#export WIDTH=10


# Check existence of variables
if [ -z "$LENGTH" ] || [ -z "$WIDTH" ]; then
    echo "Ошибка: Укажите длину и ширину прямоугольника в переменных окружения LENGTH и WIDTH."
    exit 1
fi

# Checking that LENGHT and WIDTH are positive numbers
if ! [[ "$LENGTH" =~ ^[1-9][0-9]*$ ]] || ! [[ "$WIDTH" =~ ^[1-9][0-9]*$ ]]; then
    echo "Ошибка: Длина и ширина должны быть положительными числами."
    exit 1
fi
# Calculate perimeter
PERIMETER=$((2*($LENGTH + $WIDTH)))

# Create out file and write data
OUTPUT_FILE="out.txt"
echo "Периметр прямоугольника с длиной $LENGTH и шириной $WIDTH равен $PERIMETER" > "$OUTPUT_FILE"

echo "Результат был сохранен в файл $OUTPUT_FILE."
