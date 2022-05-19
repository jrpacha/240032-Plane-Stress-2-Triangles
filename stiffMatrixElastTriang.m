function [Ke,Be] = stiffMatrixElastTriang(nodes,elem,C,th,e)
  v = nodes(elem(e,:),:);
  beta = [v(2,2)-v(3,2), ...
          v(3,2)-v(1,2), ...
          v(1,2)-v(2,2)];
  gamma = -[v(2,1)-v(3,1), ...
           v(3,1)-v(1,1), ...
           v(1,1)-v(2,1)];
  
  A = det([[1;1;1],v])/2;

  Be = 0.5*[beta(1),0,beta(2),0,beta(3),0;
         0, gamma(1), 0, gamma(2), 0, gamma(3);
       gamma(1), beta(1), gamma(2), beta(2), gamma(3), beta(3)]/A;

  Ke = th*A*Be'*C*Be;
end

