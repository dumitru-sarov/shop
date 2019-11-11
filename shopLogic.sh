#!/bin/bash

# Add

# Search

# Remove

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


