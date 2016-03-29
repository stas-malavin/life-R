Live <- function(n = 20, continue = if (is.null(dev.list())) FALSE else TRUE, Speed = 1.5)
{
cat('Life for R language.\nTo set points use the mouse.\nTo finish setting and start the process click the right button (Linux console) or click and choose "Stop" (Windows GUI).\nTo stop the process in the console window press "Ctrl-C" (Linux) or "Escape" (Windows).\nFor arguments see "Liveme.txt".\n© S. Malavin, 2015')
if (!continue | !exists('M')) {
	M <- matrix(0, n, n)
	par(bg = 5, mar = rep(1, 4))
	plot(1:n, 1:n, type = 'n', xlim = c(0,n), ylim = c(0,n), asp = 1, axes = F, ann = F)
	invisible(sapply(0.5:(n+0.5), function(x) {abline(v=x); abline(h=x)}))
}
P <- cbind(rep(1:n, each = n), rep(1:n, n))
for (i in 1:(n^2)) {
	if (!is.null(l <- locator(1))) {
		M[round(l$y),round(l$x)] <- !M[round(l$y),round(l$x)]
		points(round(l$x), round(l$y), pch = 15, col = -M[round(l$y),round(l$x)]+5, cex = 3) 
	} else break
}
while (sum(M)!=0) {
	Mr <- cbind(rep(0, n), M[,-n])
	Ml <- cbind(M[,-1], rep(0, n))
	Mu <- rbind(M[-1,], rep(0, n))
	Md <- rbind(rep(0, n), M[-n,])
	M <- (Mu + Md + Mr + Ml)-1
	M[M!=1] <- 0
	assign('M', M, env = .GlobalEnv)
	points(P, col = -M+5, pch = 15, cex = 3)
	Sys.sleep(1/Speed)
}
}
