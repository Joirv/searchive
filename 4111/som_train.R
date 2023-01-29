require(kohonen)

train1 <- read.csv('train1.csv')
train1_matrix <- as.matrix(scale(train1))
train2 <- read.csv('train2.csv')
train2_matrix <- as.matrix(scale(train2))

grid_train1 = somgrid(5,5,'hexagonal')
som_train1 <- supersom(train1_matrix, grid=grid_train1)
grid_train2 = somgrid(5,5,'hexagonal')
som_train2 <- supersom(train2_matrix, grid=grid_train2)

som_train1$unit.classif
som_train2$unit.classif

write.table(som_train1$unit.classif, 'train1_som.csv', sep=',', row.names=FALSE)
write.table(som_train2$unit.classif, 'train2_som.csv', sep=',', row.names=FALSE)