#!/bin/bash


echo "Select Option: "

echo "1: Add item"
echo "2: Search item"
echo "3: Remove item"
echo "4: Update item"

read option

# Add

if [ $option -eq 1 ]
then
	echo "Enter name of item"
	read item
	echo $item >> items
fi

# Search

if [ $option -eq 2 ]
then
	echo Enter an item you are looking for:
	read item


	if grep -q  $item items
	then
		echo $(grep $item items)
	else
		echo item not found
	fi
fi

# Remove

if [ $option -eq 3 ]
then
	echo "Item to remove"
	read item
	sed -i "s/$item//g" items
	sed -i '/^$/d' items
fi
# Update

if [ $option -eq 4 ]
	then
	echo "Input item you want to update "
	read item

	echo "What should this be updated to? "
	read updateItem

	if grep -q $item items
	then
		sed -i "s/$item/$updateItem/g" items
		echo "Item updated"
	else 
		echo "Item not found"
	fi
fi


