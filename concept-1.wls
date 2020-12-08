#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Input:: *)
(*cen[t_,f_,w_,x_,l_]:=(f w(l+f/2)+t l(l/2))/(f w+t l);*)
(*i[t_,f_,w_,x_,l_]:=(w f^3+2t l^3)/12+f w (l+f/2-cen[t,f,w,x,l])^2+2 t l (l/2-cen[t,f,w,x,l])^2;*)
(*q[t_,f_,w_,x_,l_]:=2 l t(cen[t,f,w,x,l]-l/2);*)
(*g=3426.9;*)


(* ::Input:: *)
(*P1[t_,f_,w_,x_,l_]:=3 /14 i[t,f,w,x,l]/(cen[t,f,w,x,l]);*)
(*P2[t_,f_,w_,x_,l_]:=3/70 i[t,f,w,x,l]/(l+f-cen[t,f,w,x,l]);*)
(*P3[t_,f_,w_,x_,l_]:=8i[t,f,w,x,l]/(l(cen[t,f,w,x,l]-l/2));*)
(*P5[t_,f_,w_,x_,l_]:=2g t^2i[t,f,w,x,l]/(70 x^2(l+f-cen[t,f,w,x,l]));*)
(*P6[t_,f_,w_,x_,l_]:=0.425g t^2i[t,f,w,x,l]/(140((w-x)/2)^2)(l+f-cen[t,f,w,x,l]);*)
(*P7[t_,f_,w_,x_,l_]:=3g t^2i[t,f,w,x,l]/(70(l-cen[t,f,w,x,l])^2(l+f-cen[t,f,w,x,l]));*)
(*P8[t_,f_,w_,x_,l_]:=10g i[t,f,w,x,l]((t/280)^2+(t/(l+f))^2)/(l(cen[t,f,w,x,l]-l/2));*)


(* ::Input:: *)
(*v[t_,f_,w_,x_,l_]:=980(w f+2l t);*)
(*vmax=813*1016*1.27;*)
(*w=100;*)


(* ::Input:: *)
(*Manipulate[Plot[{P1[t,f,w,x,l],P2[t,f,w,x,l],P3[t,f,w,x,l],P5[t,f,w,x,l],P6[t,f,w,x,l],P7[t,f,w,x,l],P8[t,f,w,x,l],1000*v[t,f,w,x,l]/vmax},{x,5,100},AxesLabel->{"height(mm)"}, PlotRange->{{0,100}, {0,5000}}, PlotTheme->"Detailed"],{t,1.27,5*1.27,1.27},{f,1.27,5*1.27,1.27},{l,0.1,150}]*)
(**)


(* ::Input:: *)
(*t=2.54;*)
(*f=3.81;*)
(*l=130;*)
(*x=20;*)
(*N[P1[t,f,w,x,l]]*)
(*N[P2[t,f,w,x,l]]*)
(*N[P3[t,f,w,x,l]]*)
(*N[P5[t,f,w,x,l]]*)
(*N[P6[t,f,w,x,l]]*)
(*N[P7[t,f,w,x,l]]*)
(*N[P8[t,f,w,x,l]]*)
(*N[vmax-v[t,f,w,x,l]]*)



