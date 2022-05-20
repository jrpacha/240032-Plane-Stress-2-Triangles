function [Ke,Be] = stiffMatrixElastTriang(nodes,elem,C,th,e)
%
% Remark: for the "official" version, see Practice 4.1 at 
%         professor Toni Susin's Numerical Factory,
%         https://www.numfactory.upc.edu
%
% Computes the 6x6 stiff matrix for a linear triangular  
% element in Plane Elasticity problems
%
% INPUT
% nodes: matrix with the nodes' position (as usual)
%  elem: connectivity matrix (as usual)
%     C: stress-strain matrix
%    th: thicknes (for strain problems th = 1)
%     e: element number
%
% OUTPUT
%    Ke: element stifness matrix
%

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

  Ke = th*A*(Be'*C*Be);
end

