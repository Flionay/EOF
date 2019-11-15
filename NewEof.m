%load data
lon=ncread('sst.mnmean.nc','lon');
lat=ncread('sst.mnmean.nc','lat');
sst=ncread('sst.mnmean.nc','sst');

%%
oid='sst.mnmean.nc';
mv=ncreadatt(oid,'/sst','missing_value');
sst(sst==mv)=NaN;

%%
[EOF,pc,expvar] = eof(sst);

%%
contourf(lon,lat,EOF(:,:,end)','LineStyle','none')
title('????')
figure
plot(pc(1,:))
title('???????????')

%%
contourf(lon,lat,EOF(:,:,end-1)','LineStyle','none')
title('????')
figure
plot(pc(2,:))
title('???????????')