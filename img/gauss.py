import numpy as np
from scipy.stats import norm
import matplotlib.pyplot as plt

loc = 5.0
scale = 2.0

x = np.linspace(norm.ppf(0.001,loc=loc,scale=scale),norm.ppf(0.999,loc=loc,scale=scale),1001)
y = norm.pdf(x, loc=loc,scale=scale)
yt= np.max(y)
print(f"Max. Value y:{yt}")
pt = 8.0
pval = norm.cdf(pt, loc=loc, scale=scale)
print(f"Pdf at {pt} is {norm.pdf(pt, loc=loc, scale=scale)}")
print(f"Cumulative p at {pt} is {pval}")
fig, ax = plt.subplots(1,1)
ax.set_title(r'$X \, \sim \, N(\mu=5,\sigma^2=4)$')
ax.plot(x, y, 'r-', lw=3, alpha=0.6, label='norm pdf')
ax.fill_between(x,y, where=(x<=8), color='C0', alpha=0.9)
ax.set_ylim((0.0,0.225))
ax.set_xlabel(r'$x$')
ax.set_ylabel(r'$f(x)$')
fig.tight_layout()
plt.savefig('norm.pdf',dpi=600)
