outputtemplate := "%j.mps";

beginfig(1)
  u = 1.5cm;
  n = 2;

  fill (0,0)*u -- (n+1,(n+1)/2)*u -- (n+1,n+1)*u -- ((n+1)/2,n+1)*u -- cycle withcolor (.9,.6.,.9);

  draw (0,0)*u -- (n+1,(n+1)/2)*u;
  draw (0,0)*u -- ((n+1)/2,n+1)*u;

  drawarrow (-1/2,0)*u -- (n+1,0)*u;
  drawarrow (0,-1/2)*u -- (0,n+1)*u;

  dotlabel.urt (btex $x_0$ etex, (1,1)*u);

  label.urt (btex $2\theta_0$ etex, (1/3,1/3)*u);

  draw subpath (0.4, 1.6) of (fullcircle scaled  (4/5*u));
endfig;
end
