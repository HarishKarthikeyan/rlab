Dataset
View(Dataset)
Dataset$Age = ifelse(is.na(Dataset$Age),
                     ave(Dataset$Age, FUN = function (x)mean(x, na.rm = TRUE)),
                     Dataset$Age)
Dataset
Dataset$Salary = ifelse(is.na(Dataset$Salary),
                        ave(Dataset$Salary, FUN = function (x)mean(x, na.rm = TRUE)),
                        Dataset$Salary)
Dataset
Dataset$Country = factor(Dataset$Country,
                         levels = c('France','Spain','Germany'),
                         labels = c(1.0, 2.0 , 3.0 ))
Dataset

