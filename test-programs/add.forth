VARIABLE fp
MEM mem 1024

( open the file )
"./test-programs/add.forth" DROP 0 0 SYS_OPEN
fp !

( read the content )
fp @ mem 1024 SYS_READ

mem SWAP TYPE
