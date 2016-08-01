nhdsdata<-read.csv("F:/My-classes/tidy datasets/nhdsData.csv")

nhdsdatadf<-data.frame(nhdsdata)
summary(nhdsdatadf)
levels(nhdsdatadf$HospitalType)
summary(nhdsdatadf$Weight)

summary(nhdsdatadf$X.secondpayment)
nhdsdatadf<-nhdsdatadf[nhdsdatadf$Age != ('Female'), ]
nhdsdatadf$Age <- factor(nhdsdatadf$Age)
levels(nhdsdatadf$ModeofPayment)
summary(nhdsdatadf$Diagnosis.Code.1)
table(nhdsdatadf$Race)


top_diagcode <- nhdsdatadf[nhdsdatadf$Diagnosis.Code.1 >= nhdsdatadf$Diagnosis.Code.1[order(as.numeric(as.character(nhdsdatadf$Diagnosis.Code.1)), decreasing=TRUE)][5] , ]
top_diagcode <-nhdsdatadf$Diagnosis.Code.1[order(nhdsdatadf$Diagnosis.Code.1,decreasing=TRUE)[1:10],] 

top_diagcode

library("dplyr")
with(nhdsdatadf, barplot(rev(sort(table(nhdsdatadf$Diagnosis.Code.1))[1:5])))





names(nhdsdatadf)





modifiednhdsdata<-nhdsdatadf[,c(3,4,6,7,8,9,11,12,14,16,19,20,21,22,23,24,25,26,27,28,29,30,31,33,34)]

yearlynhdsdata <- modifiednhdsdata[modifiednhdsdata$Year %in% c(2001,2002,2003,2004,2005,2006,2007,2008,2009),]

colnames(nhdsdatadf)

nhdsdatadf[X.3]<-NULL

write.csv(nhdsdatadf,file="tidyNhdsData.csv")

tidyNhdsdata <- read.csv("tidyNhdsData.csv")

tidyNhdsdatadf<-data.frame(tidyNhdsdata)

summary(nhdsdatadf)

head

names(tidyNhdsdatadf)

library("ggplot2")

par("mar")
par(mar=c(1,1,1,1))

#Age
ggplot(data = nhdsdatadf, aes(x=DischargeStatus))+geom_histogram()


nhdsdatadf$DischargeStatus<-factor(nhdsdatadf$DischargeStatus, levels = c(1,2,3,4,5,6,9), labels = c("Years","Months","Days"))

library("scales")

summary(nhdsdatadf$DischargeStatus)



#boxplot
qplot(x=Sex, y= DischargeStatus, data = nhdsdatadf, binwidth =1,geom = 'boxplot')+scale_y_discrete(limits=c(0:9))
#ggplot2
ggplot(aes(x=DischargeStatus), data = nhdsdatadf)+geom_point()+scale_y_log10()
#daysofcare vs race ggplot
ggplot(data = nhdsdatadf, aes(x=DaysofCare,y=Race))+geom_jitter(alpha = 1/20)+coord_trans(x='sqrt')
#group by functions
grp_daysofcare<-group_by(nhdsdata, DaysofCare)
grp_daysofcare
summary_daysofcare<-summarise(grp_daysofcare, mean_daysofcare = mean(DaysofCare), median_daysofcare = median(DaysofCare), n=n())
summary_daysofcare<-arrange(summary_daysofcare, DaysofCare)
summary_sex<-summarise(grp_by_sex, mean_daysofcare=mean(DaysofCare))
summary_sex

ggplot(aes(x=Year, y= DaysofCare), data = nhdsdata)+geom_point()+scale_x_continuous(breaks = (1998:2010))+geom_line(stat = "summary", fun.y=mean)+geom_line(stat = "summary", fun.y=quantile,probs = .9, color = "blue")+geom_line(stat = "summary", fun.y=quantile,probs = .1, color = "red", linetype = 2)+coord_cartesian(ylim=c(0,100), wise = TRUE)


range1_doc<-split(nhdsdata,nhdsdata$DaysofCare>=0 & nhdsdata$DaysofCare<= 10)
range1_doc

#[days of care vs Race vs Year]







