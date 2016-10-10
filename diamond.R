library(data.table)
dat <- data.table(diamonds)
dat[carat==1,mean(price)]
dat[carat==1,round(mean(price)),by='cut'][order(V1, decreasing=TRUE)]
dat[,cor(price,carat),by='cut'] #finding correlation btwn price and cut
sink <- dat[,color := as.character(color)]
dat[,data.frame(round(t(coef(lm(price ~ carat + color))))),by='cut']
head(diamonds)
dat[,list(cr=cor(price,carat),mn=mean((price)),by list(cut(depth,5))]


library(data.table)
game_dat_raw<- fread("C:/Users/Ketaki/Documents/ODSC_R_Files/odsc_football_raw_data.csv")
head(game_dat_raw)
modelling_data_raw<-fread("C:/Users/Ketaki/Documents/ODSC_R_Files/odsc_football_raw_data.csv")
head(game_dat_raw)
head(modelling_data_raw[week==7,])
mean(modelling_data_raw$position=="UNK")

dat<- modelling_data_raw[week>1]#removing all the info that is missing(can be done by replacing missing values by mean values)
summary(dat)


players<- dat[,list(pts=sum(fanduel_points)), by='player_id']
hist(players$pts)
hist(players$pts,breaks=100)
dat[,table(position)]
players<-players[pts>10]
hist[players$pts,breaks=100]

nrow(players)
dat<-dat[player_id %in% players$player_id,]
table(dat$position)
?abline()
