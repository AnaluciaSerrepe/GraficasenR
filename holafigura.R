#hice un gráfico de pie
precios=c(0.23, 0.35, 0.14, 0.2, 0.23)
names(precios)=c("manzana", "uva", "pera", "naranja", "cereza")
pie(precios,col=rainbow(length(names(precios))),main="Precios frutas")

#hice un grafico de puras lineas
x=c(-2,-1,0,1,2)
y=c(-2,-1,0,1,2)
plot(x, y, main = "lineas", type = "n")
abline(v = -1, lty = 1, col = "magenta")
abline(h = -1, lty = 2, col = "red")
abline(-1, 2, lty = 3, col = "blue", lwd = 2)
abline(v = 1, lty = 5, col = "green3")
abline(1, -1, lty = 6, col = "purple", lwd = 2)

#GRAFICO DE LINEAS BONITO
# Convertir un factor a un vector numérico
Orange$Tree <- as.numeric(Orange$Tree)
ntrees <- max(Orange$Tree)  # máx árboles 

# Rango de x e y
xrange <- range(Orange$age)
yrange <- range(Orange$circumference)

# Crear el gráfico con sus dimensiones
plot(xrange, yrange, type = "n", xlab = "Age (days)", ylab = "Circumference (mm)")

# Colores, lineas y caracteres
colors <- rainbow(ntrees)
ltipo <- c(1:ntrees)
char <- seq(18, 18 + ntrees, 1)

# Añadir las lineas al gráfico
for (i in 1:ntrees) {
  tree <- subset(Orange, Tree == i)
  lines(tree$age, tree$circumference, type = "b", lwd = 1.5, lty = ltipo[i], 
        col = colors[i], pch = char[i])
}
# Añadir un título and sutitulo
title("Crecimiento del naranjo")

# Añadir la leyenda
legend(xrange[1], yrange[2], 1:ntrees, cex = 0.8, col = colors, pch = char, 
       lty = ltipo, title = "Árbol")

