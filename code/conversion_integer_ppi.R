net <- as.matrix(read.delim('./temp/net_ppi_unique_nodes.txt', header = FALSE, sep = "\t"))
#print(dim(net))
conversion<-as.matrix(read.delim("./temp/nodes.txt", header = FALSE, sep = "\t"))
net[,1]<-match(net[,1],conversion[,1])
net[,2]<-match(net[,2],conversion[,1])
write.table(net,'./temp/net_ppi_unique_nodes_int.txt',sep='\t',row.names=FALSE,col.names=FALSE)
