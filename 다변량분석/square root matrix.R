############# ������ ��� ############# 

A <- matrix(c(3,1, 1, 3), ncol=2, byrow=T)  # ��Ī ��ķ�
egnA <- eigen(A)
egnval <- egnA$values
egnvec <- egnA$vectors

rootA <- egnvec %*% diag(sqrt(egnval)) %*% t(egnvec)
# A^1/2 = P x lambda^1/2 x P'
rootA

rootA %*% rootA # => a^1/2 + a^1/2
A
