## Test of means 
a <- makeVector(c(1,2,3,4))
 a$get()
 a$getmean()
cachemean(a)
 a$getmean()  # this is only to show you that the mean has been stored and does not affect anything

cachemean(a)
 a$set(c(10,20,30,40))
 a$getmean()
cachemean(a)
a$get()
 a$setmean(0)  # do NOT call setmean() directly despite it being accessible for the reason you will see next
a$getmean()
a$get()
cachemean(a)

 a <- makeVector(c(5, 25, 125, 625))
a$get()

 cachemean(a)
 cachemean(a)
