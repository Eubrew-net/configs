inst=185;
x=readtable(fullfile('..','icf185.xls'))
fmt_icf=[
'%.4f \n %.4f \n %.4f \n %.4f \n %.4f \n %.1f \n %.4f \n %.2f \n %.2f \n %.0f \n %.0f \n %.10f\n',...
'%.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n mk%.0f \n ',...
'%.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n ',...
'%.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f  \n ',...
'%.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f \n %.0f %f \n  %f \n '];

for ii=3:size(x,2)
    icx= x{:,ii}
%     if icx(24)==3
%         icx(24)=9999.909;
%     end
    
     if isnan(icx(end))
        icx(end)=-999.00000;
    end
    icx(isnan(icx))=0.0;
    s=sprintf(fmt_icf,icx(2:end))
   % s=strrep(s,'9999.909000','mkiii')
    s=strrep(s,'-999.000000',[char(13),datestr(icx(1),'yyyy-mm-dd')])
    yyy=datevec(icx(1));
    dj=diaj(icx(1));
    icfname=sprintf('icf%04d%03d.%03d',yyy(1),dj,inst)
    filewrite(icfname,s)
end