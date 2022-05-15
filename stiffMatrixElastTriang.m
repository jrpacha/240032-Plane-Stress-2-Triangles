function [Ke,Be] = stiffMatrixElastTriang(nodes,elem,C,th,e)
  v = nodes(elem(e,:),:);
  beta1 = v(2,2)-v(3,2);
  beta2 = v(3,2)-v(1,2);
  beta3 = v(1,2)-v(2,2);
  gamma1 = -(v(2,1)-v(3,1));
  gamma2 = -(v(3,1)-v(1,1));
  gamma3 = -(v(1,1)-v(2,1));
  A = det([[1;1;1],v])/2;
  Be = 0.5*[beta1,0,beta2,0,beta3,0;
         0, gamma1, 0, gamma2, 0, gamma3;
       gamma1, beta1, gamma2, beta2, gamma3, beta3]/A;
  Ke = th*A*Be'*C*Be;   
end

