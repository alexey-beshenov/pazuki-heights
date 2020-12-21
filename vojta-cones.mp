outputtemplate := "%j.mps";

beginfig(1)
  u = 1.0cm;
  n = 2;

  for i=0 upto 11:
    fill (0,0) -- ((cosd(30*i+15),sind(30*i+15))*n*u) -- ((cosd(30*(i+1)+15),sind(30*(i+1)+15))*n*u) -- cycle
      if odd (i) : withcolor (.9,.6.,.9)
      else : withcolor (.6,.8.,.9)
      fi;
  endfor;

  for i=0 upto 11:
    draw (0,0) -- ((cosd(30*i+15),sind(30*i+15))*(n+1/8)*u);
  endfor;

  drawarrow (-(n+1/2),0)*u -- (n+1/2,0)*u;
  drawarrow (0,-(n+1/2))*u -- (0,n+1/2)*u;

  for i=1 upto 360:
    if uniformdeviate(1) > .75:
      draw ((cosd(i), sind(i))*(1/4+uniformdeviate(n-1/3))*u) withpen pencircle scaled 1.5pt;
    fi;
  endfor;
endfig;
end
