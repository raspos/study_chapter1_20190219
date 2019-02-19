#################################################
# script, console, Enviroment, etc
# ctrl + shift + n : 새 스크립트 만들기
# ctrl + Enter : 실행
#################################################

#################################################
# vector?
# https://goo.gl/LLb5Q에서 벡터는?
#################################################

c(2, 4, 6)
x <- c(5, 14, 6, 21, 100, 5, 3, 22) # x라는 변수에 저장
x

2:6
2:6 + 10:14

c("콘텐트팀", "프로젝트팀")

seq(1, 10, by = 0.1)

rep(1:5, times = 5)
rep(1:5, times = 5, each = 10)

# parameter를 모를땐 함수 성격을 검색하는 습관을!
??rep 
help.search("rep")

# 벡터에 적용할 수 있는 함수들 예시 
sort(x)
sort(x, decreasing = T)

rev(x)
table(x)
unique(c(14, 14, 15, 17, 21, 21, 25, 30))

cor(c(1, 2, 3, 4, 5), c(10, 11, 12, 13, 20))

#################################################
# vector의 접근
#################################################
x[4] #21
x[-4]
x[3:5]
x[-(2:4)]
x[c(1, 5)]

x[x == 100]
x[x < 5]

x[x %in% c(1, 2, 5)]

# 작음따옴표, 큰따옴표?
name <- c("추미애", "김무성", "김진태", "안철수")
name[name == "추미애"]
name[name %in% c("추미애", "안철수", "김성태", "진선미")]


a = a
a == a

5 > 1
3 == 2
3 != 2
3 / 2

#################################################
# 데이터타입 (type)
#################################################

# 무엇이 무엇이 다를까요?
number1 <- c(1, 2, 3, 4, 5)
number2 <- c("1", "2", "3", "4", "5")

is.numeric(number1)
is.character(number1)
is.factor(number1)
is.logical(number1)

number3 <- as.numeric(number2)
is.character(number2)
is.character(number3)

sum(number1)
mean(number1)
median(number1)
max(number1)
min(number1)
quantile(number1)

round(15.6333)
rank(c(10, 2, 5, 9, 9, 20), ties.method = "min")

var(number1)
sd(number1)


#################################################
# 패키지 설치 및 불러오기
#################################################
install.packages("tidyverse")
library(tidyverse)
library(readxl)

#################################################
# 데이터 가져오기
#################################################
sample_xls <- read_xls("data/sample.xls", sheet = 1, col_names = FALSE)
sample_csv <- read_csv("data/sample2.csv")
