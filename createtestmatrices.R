##test matrices -> inversable
testmatrix22 <- matrix(sample(1:4),2,2)
testmatrix33 <- matrix(sample(1:9),3,3)
testmatrix2020 <- matrix(sample(1:400),20,20)
testmatrix100100 <- matrix (sample(1:10000),100,100)
testmatrix500500 <- matrix(sample(1:250000),500,500)
testmatrix10001000 <- matrix(sample(1:1000000),1000,1000)


##tested matrices -> not inversable
testmatrix5 <- matrix(1:9,3,3)
largetestmatrix <- matrix((1:90000),300,300)
largetestmatrix2 <- matrix(1:160000,400,400)
largetestmatrix3 <- matrix(1:1000000,1000,1000)