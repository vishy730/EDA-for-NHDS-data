nhdsdata08<-read.csv("nhdsdata08.csv")
for(i in 1:length(nhdsdata08$X)){
  if(nhdsdata08$Year[i] == 8){
    nhdsdata08$Year = 2008
  }
}
write.csv(nhdsdata08,"nhdsdata08.csv")


nhdsdata07<-read.csv("nhdsdata07.csv")
for(i in 1:length(nhdsdata07$X)){
  if(nhdsdata07$Year[i] == 7){
    nhdsdata07$Year = 2007
  }
}
write.csv(nhdsdata07,"nhdsdata07.csv")



nhdsdata06<-read.csv("nhdsdata06.csv")
for(i in 1:length(nhdsdata06$X)){
  if(nhdsdata06$Year[i] == 6){
    nhdsdata06$Year = 2006
  }
}
write.csv(nhdsdata06,"nhdsdata06.csv")



nhdsdata05<-read.csv("nhdsdata05.csv")
for(i in 1:length(nhdsdata05$X)){
  if(nhdsdata05$Year[i] == 5){
    nhdsdata05$Year = 2005
  }
}
write.csv(nhdsdata05,"nhdsdata05.csv")





nhdsdata04<-read.csv("nhdsdata04.csv")
for(i in 1:length(nhdsdata04$X)){
  if(nhdsdata04$Year[i] == 4){
    nhdsdata04$Year = 2004
  }
}
write.csv(nhdsdata04,"nhdsdata04.csv")




nhdsdata03<-read.csv("nhdsdata03.csv")
for(i in 1:length(nhdsdata03$X)){
  if(nhdsdata03$Year[i] == 3){
    nhdsdata03$Year = 2003
  }
}
write.csv(nhdsdata03,"nhdsdata03.csv")



nhdsdata02<-read.csv("nhdsdata02.csv")
for(i in 1:length(nhdsdata02$X)){
  if(nhdsdata02$Year[i] == 2){
    nhdsdata02$Year = 2002
  }
}
write.csv(nhdsdata02,"nhdsdata02.csv")



nhdsdata01<-read.csv("nhdsdata01.csv")
for(i in 1:length(nhdsdata01$X)){
  if(nhdsdata01$Year[i] == 1){
    nhdsdata01$Year = 2001
  }
}
write.csv(nhdsdata01,"nhdsdata01.csv")


nhdsdata09<-read.csv("nhdsdata09.csv")
for(i in 1:length(nhdsdata09$X)){
  if(nhdsdata09$Year[i] == 9){
    nhdsdata09$Year = 2009
  }
}
write.csv(nhdsdata09,"nhdsdata09.csv")


nhdsdata10<-read.csv("nhdsdata10.csv")
for(i in 1:length(nhdsdata10$X)){
  if(nhdsdata10$Year[i] == 10){
    nhdsdata10$Year = 2010
  }
}
write.csv(nhdsdata10,"nhdsdata10.csv")



nhdsdata98<-read.csv("nhdsdata98.csv")
for(i in 1:length(nhdsdata98$X)){
  if(nhdsdata98$Year[i] == 98){
    nhdsdata98$Year = 1998
  }
}
write.csv(nhdsdata98,"nhdsdata98.csv")


nhdsdata99<-read.csv("nhdsdata99.csv")
for(i in 1:length(nhdsdata99$X)){
  if(nhdsdata99$Year[i] == 99){
    nhdsdata99$Year = 1999
  }
}
write.csv(nhdsdata99,"nhdsdata99.csv")
