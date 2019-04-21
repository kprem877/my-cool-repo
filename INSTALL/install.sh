#!/bin/bash

#An install sh file
#A lightweight installer 
#by Prem K.
#
#2018-05-28 : Created date

get_version_num() {
 VERSION_NUM="$1"
 VERSION_NUM=${VERSION_NUM#-r}

 #Truncate everything except numerical digits off of VERSION_NUM
 #and compare it with original 
 TRUNC_NUM=`echo $VERSION_NUM | tr -dc [:digit:]`

 if [ $VERSION_NUM != $TRUNC_NUM ]
 then 
 	RETURN_VAL=-1
 else
 	RETURN_VAL=$VERSOIN_NUM
 fi
}

#Returns version X (passed in as $2 -must be a valid integer)
