### Simple bootstrap

data<-c(2,9,7,6,5.5,6.4,4,6.1,5.2,4.9)   # your data here

# what are you calculating? In the example below, just the mean of the data

average<-mean(data)

num_sim <- 999  #number of simulation
average_sim<-as.numeric()  
for (i in 1:num_sim){
  replicates_sim<-sample(data, length(data), replace=TRUE)  #shuffle data
  average_sim[i]<-mean(replicates_sim)  # use the same formula as in line 7 here
}

average<-mean(average_sim);average  #new average
inter_sup<-quantile(average_sim,0.975);inter_sup  # 95% sup interval

inter_inf<-quantile(average_sim,0.025);inter_inf  # 95% inf interval

hist(average_sim)