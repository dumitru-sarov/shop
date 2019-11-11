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

# Update
