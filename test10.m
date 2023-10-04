clc
clear
K=3;
for k1=0:K
    tic
    for k2=k1:K
        for k3=max(k1,k2):K
              k1_location=k1+1;
                k2_location=k2+1;
                k3_location=k3+1;
            if k1==k2
             %   [ inth9,inth10]=expikrr(k1,k2,k3);
              
                  A(k1_location,k2_location,k3_location)=2;
                  A(k2_location,k3_location,k1_location)=2;
                  A(k3_location,k1_location,k2_location)=2;
                  A(k2_location,k1_location,k3_location)=2;
                  A(k1_location,k3_location,k2_location)=2;
                  A(k3_location,k2_location,k1_location)=2;

                  B(k1_location,k2_location,k3_location)=2;
                  B(k2_location,k3_location,k1_location)=2;
                  B(k3_location,k1_location,k2_location)=2;
                  B(k2_location,k1_location,k3_location)=2;
                  B(k1_location,k3_location,k2_location)=2;
                  B(k3_location,k2_location,k1_location)=2;
            else
                % [ inth9,inth10]=expikrr(k1,k2,k3);
                  A(k1_location,k2_location,k3_location)=-1;
                  A(k2_location,k3_location,k1_location)=-1;
                  A(k3_location,k1_location,k2_location)=-1;
                  

                  B(k1_location,k2_location,k3_location)=-1;
                  B(k2_location,k3_location,k1_location)=-1;
                  B(k3_location,k1_location,k2_location)=-1;
               %  [ inth9,inth10]=expikrr(k2,k1,k3);
                  A(k2_location,k1_location,k3_location)=1;
                  A(k1_location,k3_location,k2_location)=1;
                  A(k3_location,k2_location,k1_location)=1;
                   B(k2_location,k1_location,k3_location)=1;
                  B(k1_location,k3_location,k2_location)=1;
                  B(k3_location,k2_location,k1_location)=1;
            end
        end
    end
    toc
end

