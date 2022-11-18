import numpy as np
from scipy.stats import norm
import matplotlib.pyplot as plt

LOC = 5.0     # \mu
SCALE = 2.0   # \sigma
PT = 8.0      # x

x = np.linspace(norm.ppf(0.001,loc=LOC,scale=SCALE),norm.ppf(0.999,loc=LOC,scale=SCALE),1001)
y = norm.pdf(x, loc=LOC,scale=SCALE)
yt= np.max(y)
#pval = norm.cdf(PT, loc=LOC, scale=SCALE)
fig, ax = plt.subplots(1,1)
ax.set_title(r'$X \, \sim \, N(\mu=5,\sigma^2=4)$')
ax.plot(x, y, 'r-', lw=3, alpha=0.6, label='norm pdf')
ax.fill_between(x,y, where=(x<=PT), color='C0', alpha=0.9)
ax.set_ylim((0.0,0.225))
ax.set_xlabel(r'$x$')
ax.set_ylabel(r'$f(x)$')
fig.tight_layout()
plt.savefig('norm.pdf',dpi=600)
