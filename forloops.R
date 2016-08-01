for(i in 1:length(nhdsdata$X)){
  if(nhdsdata$Sex[i] == 1){
    nhdsdata$Sex = "Male"
  }else 
      nhdsdata$Sex = "Female"
  }





nhds01df$Diagnosis.Code.1<-icdcodedf$SHORT.DESCRIPTION[match(nhds01df$Diagnosis.Code.1,icdcodedf$DIAGNOSIS.CODE)]
nhds01df$Diagnosis.Code.2<-icdcodedf$SHORT.DESCRIPTION[match(nhds01df$Diagnosis.Code.2,icdcodedf$DIAGNOSIS.CODE)]
nhds01df$Diagnosis.Code.3<-icdcodedf$SHORT.DESCRIPTION[match(nhds01df$Diagnosis.Code.3,icdcodedf$DIAGNOSIS.CODE)]
nhds01df$Diagnosis.Code.4<-icdcodedf$SHORT.DESCRIPTION[match(nhds01df$Diagnosis.Code.4,icdcodedf$DIAGNOSIS.CODE)]
nhds01df$Diagnosis.Code.5<-icdcodedf$SHORT.DESCRIPTION[match(nhds01df$Diagnosis.Code.5,icdcodedf$DIAGNOSIS.CODE)]
nhds01df$Diagnosis.Code.6<-icdcodedf$SHORT.DESCRIPTION[match(nhds01df$Diagnosis.Code.6,icdcodedf$DIAGNOSIS.CODE)]
nhds01df$Diagnosis.Code.7<-icdcodedf$SHORT.DESCRIPTION[match(nhds01df$Diagnosis.Code.7,icdcodedf$DIAGNOSIS.CODE)]




for(i in 1:length(nhdsdata$X)){
  if(nhdsdata$Sex[i] == 1){
    nhdsdata$UnitsofAge = "Years"
  }else if(nhdsdata$UnitsofAge[i] == 2){
      nhdsdata$UnitsofAge = "Months"
  }else
    nhdsdata$UnitsofAge = "Days"
}



for(i in 1:length(nhdsdata$X)){
  if(nhdsdata$NewBornStatus[i] == 1){
    nhdsdata$NewBornStatus = "New Born"
  }else 
    nhdsdata$NewBornStatus = "Not NewBorn"
}




for(i in 1:length(nhdsdata$X)){
  if(nhdsdata$Race[i] == 1){
    nhdsdata$Race = "White"
  }else if(nhdsdata$Race[i] == 2){
    nhdsdata$Race = "Black"
  }else if(nhdsdata$Race[i] == 3){
    nhdsdata$Race = "American Indian/Alaskan Native"
  }else if(nhdsdata$Race[i] == 4){
    nhdsdata$Race = "Asian"
  }else if(nhdsdata$Race[i] == 5){
    nhdsdata$Race = "Native Hawaiian/Pacific Isldr"
  }else if(nhdsdata$Race[i] == 6){
    nhdsdata$Race = "Other"
  }else if(nhdsdata$Race[i] == 8){
    nhdsdata$Race = "Multiple race"
  }
  else
    nhdsdata$Race = "Not stated"
}




for(i in 1:length(nhdsdata$X)){
  if(nhdsdata$LengthofStay[i] == 0){
    nhdsdata$LengthofStay = nhdsdata$DaysofCare
  }else
    nhdsdata$LengthofStay = nhdsdata$DaysofCare + "Days"
}




for(i in 1:length(nhdsdata$X)){
  if(nhdsdata$DischargeMonth[i] == 1){
    nhdsdata$DischargeMonth = "January"
  }else if(nhdsdata$DischargeMonth[i] == 2){
    nhdsdata$DischargeMonth = "February"
  }else if(nhdsdata$DischargeMonth[i] == 3){
    nhdsdata$DischargeMonth = "March"
  }else if(nhdsdata$DischargeMonth[i] == 4){
    nhdsdata$DischargeMonth = "April"
  }else if(nhdsdata$DischargeMonth[i] == 5){
    nhdsdata$DischargeMonth = "May"
  }else if(nhdsdata$DischargeMonth[i] == 6){
    nhdsdata$DischargeMonth = "June"
  }else if(nhdsdata$DischargeMonth[i] == 7){
    nhdsdata$DischargeMonth = "July"
  }else if(nhdsdata$DischargeMonth[i] == 8){
    nhdsdata$DischargeMonth = "August"
  }else if(nhdsdata$DischargeMonth[i] == 9){
    nhdsdata$DischargeMonth = "September"
  }else if(nhdsdata$DischargeMonth[i] == 10){
    nhdsdata$DischargeMonth = "October"
  }else if(nhdsdata$DischargeMonth[i] == 11){
    nhdsdata$DischargeMonth = "November"
  }else
    nhdsdata$DischargeMonth = "December"   
}



for(i in 1:length(nhdsdata$X)){
  if(nhdsdata$X.GeographicRegion[i] == 1){
    nhdsdata$X.GeographicRegion = "Northeast"
  }else if(nhdsdata$X.GeographicRegion[i] == 2){
    nhdsdata$X.GeographicRegion = "Midwest"
  }else if(nhdsdata$X.GeographicRegion[i] == 3){
    nhdsdata$X.GeographicRegion = "South"  
  }else
    nhdsdata$X.GeographicRegion = "West"
}




for(i in 1:length(nhdsdata$X)){
  if(nhdsdata$HospitalType[i] == 1){
    nhdsdata$HospitalType = "Proprietary"
  }else if(nhdsdata$HospitalType[i] == 2){
    nhdsdata$HospitalType = "Government"
  }else
    nhdsdata$HospitalType = "Nonprofit"
}




for(i in 1:length(nhdsdata$X)){
  if(nhdsdata$DischargeStatus[i] == 1){
    nhdsdata$DischargeStatus = "Routine"
  }else if(nhdsdata$DischargeStatus[i] == 2){
    nhdsdata$DischargeStatus = "medical advice"
  }else if(nhdsdata$DischargeStatus[i] == 3){
    nhdsdata$DischargeStatus = "transferred to short-term facility"
  }else if(nhdsdata$DischargeStatus[i] == 4){
    nhdsdata$DischargeStatus = "transferred to long-term facility"
  }else if(nhdsdata$DischargeStatus[i] == 5){
    nhdsdata$DischargeStatus = "Alive"
  }else if(nhdsdata$DischargeStatus[i] == 6){
    nhdsdata$DischargeStatus = "Dead"
  }else
    nhdsdata$DischargeStatus = "Not stated"
}




for(i in 1:length(nhdsdata$X)){
  if(nhdsdata$NoofBeds[i] == 1){
    nhdsdata$NoofBeds = "6-99"
  }else if(nhdsdata$NoofBeds[i] == 2){
    nhdsdata$NoofBeds = "100-199"
  }else if(nhdsdata$NoofBeds[i] == 3){
    nhdsdata$NoofBeds = "200-299"
  }else if(nhdsdata$NoofBeds[i] == 4){
    nhdsdata$NoofBeds = "300-499"
  }else
    nhdsdata$NoofBeds = "500 and above"
}




for(i in 1:length(nhdsdata$X)){
  if(nhdsdata$TypeofAdmission[i] == 1){
    nhdsdata$TypeofAdmission = "Emergency"
  }else if(nhdsdata$TypeofAdmission[i] == 2){
    nhdsdata$TypeofAdmission = "Urgent"
  }else if(nhdsdata$TypeofAdmission[i] == 3){
    nhdsdata$TypeofAdmission = "Elective"
  }else if(nhdsdata$TypeofAdmission[i] == 4){
    nhdsdata$TypeofAdmission = "3Newborn"
  }else
    nhdsdata$TypeofAdmission = "Not available"
}




for(i in 1:length(nhdsdata$X)){
  if(nhdsdata$SourceofAdmission[i] == 1){
    nhdsdata$SourceofAdmission = "Physician referral"
  }else if(nhdsdata$SourceofAdmission[i] == 2){
    nhdsdata$SourceofAdmission = "Clinical referral"
  }else if(nhdsdata$SourceofAdmission[i] == 3){
    nhdsdata$SourceofAdmission = "HMO referral"
  }else if(nhdsdata$SourceofAdmission[i] == 4){
    nhdsdata$SourceofAdmission = "Transfer-Hospital"
  }else if(nhdsdata$SourceofAdmission[i] == 5){
    nhdsdata$SourceofAdmission = "Transfer-Nursing facility"
  }else if(nhdsdata$SourceofAdmission[i] == 6){
    nhdsdata$SourceofAdmission = "Transfer-Health facility"
  }else if(nhdsdata$SourceofAdmission[i] == 7){
    nhdsdata$SourceofAdmission = "Emergency Room"
  }else if(nhdsdata$SourceofAdmission[i] == 8){
    nhdsdata$SourceofAdmission = "Court/law enforcement"
  }else if(nhdsdata$SourceofAdmission[i] == 9){
    nhdsdata$SourceofAdmission = "Other"
  }else
    nhdsdata$SourceofAdmission = "Not Available"   
}





