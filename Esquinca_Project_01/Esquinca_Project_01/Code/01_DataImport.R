######################################################
# File          : Data Import
# Author        : Erika Esquinca
# Last Modified : 09/08/2020
# Description   : BIOS 6621 Project 1
######################################################

# Set the working directory at the beginning of the code
getwd()
setwd("C:/Users/erika/OneDrive/Documents/Bios 6621 Stat Consulting")

# Read in raw data
Titanic <- read.csv(file.choose())

head(Titanic)

# Note that Class has a column name of ï..Class, so we will change that column name
colnames(Titanic)[colnames(Titanic) == "ï..Class"] <- "Class"

# Total number of cases per variable in a table format
Classtab <- table(Titanic$Class)
Sextab <- table(Titanic$Sex)
Agetab <-table(Titanic$Age)
Survivedtab <- table(Titanic$Survived)

# Relative frequency of each table
prop.table(Classtab)
prop.table(Sextab)
prop.table(Agetab)
prop.table(Survivedtab)

# Bar plots of the tables
barplot(Classtab, main = "People on the Titanic and Corresponding Class")
barplot(Sextab, main = "People on the Titanic and Corresponding Sex")
barplot(Agetab, main = "People on the Titanic and Age")
barplot(Survivedtab, main = "People on the Titanic and Records of Survival")

tab3 <- table(Titanic$Survived, Titanic$Class)
barplot(tab3)
barplot(tab3, main = "Class Survival on Titanic", 
        legend.text = TRUE, args.legend = list(x = "topleft"))

tab2 <- table(Titanic$Survived, Titanic$Sex)
barplot(tab2, main = "Male and Female survival on Titanic", 
        legend.text = TRUE, args.legend = list(x = "topleft"))



