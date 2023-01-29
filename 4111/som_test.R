require(kohonen)

test <- read.csv('test_data2.csv')
test_matrix <- as.matrix(scale(test))

grid_test <- somgrid(5,5,'hexagonal')
som_test <- supersom(test_matrix, grid=grid_test)

som_test$unit.classif

write.table(som_test$unit.classif, 'test_som.csv', sep=',', row.names=FALSE)
