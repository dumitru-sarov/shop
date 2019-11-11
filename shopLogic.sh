#!/bin/bash

# Add

echo "Enter name of item"
read item
echo $item >> items

# Search
echo Enter an item you are looking for:
read item


if grep -q  $item items
then
	echo $(grep $item items)
else
	echo item not found
fi
# Remove

sed -i "s/$1//g" items
sed -i '/^$/d' items

# Update

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


