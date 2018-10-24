function r=lon_sc_pmd_Cmalphaf(pd,Dx,xi,wf,Sw,cbarw)
sum=0;
for n=1:12
    sum=sum+ ( wf(n)^2 * pd(n) *Dx(n));
end
disp(sum);
disp(wf);
disp(xi)
disp(pd)
disp(Dx)

r= sum/(36.5*Sw*cbarw);