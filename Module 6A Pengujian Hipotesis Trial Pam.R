#UJI KENORMALAN
mydata<-data.frame(Data_Modul_6A_Pengujian_Hipotesis)
mydata
ks<-Data_Modul_6A_Pengujian_Hipotesis$`Breakdown Mesin (Menit)`
ks.test(ks, "pnorm", mean(ks), sd(ks))

#UJI ONE SAMPLE T.TEST
mydata<-data.frame(Data_Modul_6A_Pengujian_Hipotesis)
mydata
t.test(Data_Modul_6A_Pengujian_Hipotesis$`Jumlah Penjualan (Unit)`,alternative = "two.sided",mu = 65, conf.level = 0.95)
alpha<-0.05
qt(c(alpha/2, 1-(alpha/2)), df=34)

#UJI INDEPENDENT SAMPLE T.TEST
mydata<-data.frame(Data_Modul_6A_Pengujian_Hipotesis)
mydata
a<-Data_Modul_6A_Pengujian_Hipotesis$`Mesin Espreso Manual`
b<-Data_Modul_6A_Pengujian_Hipotesis$`Mesin Espreso Automatic`
var.test(a,b)
t.test(a,b, var.equal = TRUE, paired =FALSE, alternative = "two.sided", conf.level = 0.95)
alpha<-0.05
db=20+20-2
qt(c(alpha/2, 1-(alpha/2)), df=db)

#UJI PAIRED SAMPLE T.TEST
mydata<-data.frame(Data_Modul_6A_Pengujian_Hipotesis)
mydata
a<-Data_Modul_6A_Pengujian_Hipotesis$`Permintaan Sebelum Kenaikan`
b<-Data_Modul_6A_Pengujian_Hipotesis$`Permintaan Sesudah Kenaikan`
t.test(a,b, alternative = "two.sided", paired = TRUE, conf.level = 0.95)
alpha<-0.05
db=15-1
qt(c(alpha/2, 1-(alpha/2)), df=db)
