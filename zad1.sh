#!/bin/bash


read n
let n=n+1

for((i=0; i<$n; i++ ))
do
        s[i]=1
done

for ((i=2; i<$n; i++))
do
        if [[ " ${s[i]} " -eq 1 ]]
         then
                let w=i*i

                while [ $w -le $n ]
                do
                        s[w]=0
                        let w=w+i
                done
        fi
done

for((i=2; i<$n; i++))
do
        if [[ " ${s[i]} " -eq 1 ]]
         then
                echo " $i "
        fi
done


