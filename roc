install.packages("pROC")
library(pROC)
library(openxlsx)

data<-read.xlsx("D:\\R\\All_patients_edema_202204.xlsx", sheet = "工作表4")
roc(data$mask, data$icvf, plot=TRUE, legacy.axes=TRUE, percent=TRUE, xlab="False Positive Percentage", ylab="True Postive Percentage")
