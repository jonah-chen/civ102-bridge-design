#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Input:: *)
(*(* Hyperparameters *)*)
(*i[t1_,t2_,a_,b_]:=a ^3b/12-((b-2t1)(a-2t2)^3/12);*)
(*q[t1_,t2_,a_,b_]:=t1 b^2/4+(a b t2-a t2^2)/2-b t1 t2+t1 t2^2;*)
(*B[t1_,t2_,a_,b_]:=2 t1; *)
(*qg[t1_,t2_,a_,b_]:=t2 b(a/2-t2/2);*)


(* ::Input:: *)
(*(*P1 is not included since it is ALWAYS less than P2 *)*)
(*(* P2 is the compressive failure of walls *) *)
(*P2[t1_,t2_,a_,b_]:=0.262717415i[t1,t2,a,b]/a;*)
(*(* P3 is scheer failure of walls *)*)
(*P3[t1_,t2_,a_,b_]:=20.46570748i[t1,t2,a,b]t1/q[t1,t2,a,b];*)
(*(* P4 is scheer failure of glue with no fold *)*)
(*P4[t1_,t2_,a_,b_]:=5.116426869563426B[t1,t2,a,b] i[t1,t2,a,b]/qg[t1,t2,a,b];*)
(*(* P5 is buckling of the compressive flange between webs *)*)
(*P5[t1_,t2_,a_,b_]:=2*35067.43691727392i[t1,t2,a,b](t2/b)^2/a;*)
(*(*P6 is not included because the failure regions it is relevent does not exist *)*)
(*(* P7 is the buckling of the webs due to flexual stresses *)*)
(*P7[t1_,t2_,a_,b_]:=450.1591937t1^2/a^3 i[t1,t2,a,b];*)
(*(* No additional diaphrams for P8 *)*)
(*P8[t1_,t2_,a_,b_]:=43834.29815*2t1^3 i[t1,t2,a,b]/q[t1,t2,a,b](a^-2+250^-2);*)


(* ::Input:: *)
(*(* The volume of the material used vs. the amount given *)*)
(*vmax=813*1016*1.27;*)
(*v[t1_,t2_,a_,b_]=980(a b-(a-2t2)(b-2t1))+1.27*10(a-2t2)(b-2t1);*)
(**)
(*(* This is the required width of the beam *)*)
(*b=100;*)


(* ::Input:: *)
(*(* The thickness given is 1.27. The second moment of area as a function of these thicknesses are *)*)
(*Manipulate[Plot[i[t1,t2,a,b]/1000,{a,1,200}, AxesLabel->{"height(mm)", "I(cm^4)"}],{t1,1.27, 5*1.27,1.27},{t2,1.27, 5*1.27,1.27}]*)


(* ::Input:: *)
(*(* Calculating the failure force based on the geometry of the section *)*)
(*Manipulate[Plot[{Min[{P2[t1,t2,a,b], P3[t1,t2,a,b],P4[t1,t2,a,b],P5[t1,t2,a,b],P7[t1,t2,a,b], P8[t1,t2,a,b]}], v[t1,t2,a,b]/(813*1016*1.27)*1000},{a,1,200}, PlotLegends->{"Failure Load(kN)", "% of material used x10"} , AxesLabel->{"height(mm)"}],{t1,1.27, 5*1.27,1.27},{t2,1.27,5*1.27,1.27}]*)


(* ::Input:: *)
(*(* Calculating the failure force for all failure modes based on the geometry of the section *)*)
(*Manipulate[Plot[{P2[t1,t2,a,b], P3[t1,t2,a,b],P4[t1,t2,a,b],P5[t1,t2,a,b],P7[t1,t2,a,b], P8[t1,t2,a,b],v[t1,t2,a,b]/(813*1016*1.27)*1000},{a,1,300}, PlotRange->{{1,200},{0,4000}},PlotLegends->{"Compressive Failure of Walls","Scheer Failuer of Walls","Glue Failure","B. of compressive flange","B. of webs due to flexual stresses","Scheer Buckling of webs","% of material used x10"}, AxesLabel->{"height(mm)"}],{t1,1.27, 5*1.27,1.27},{t2,1.27,5*1.27,1.27}]*)


(* ::Input:: *)
(*(* For the Column Pc is the max force and Vc is the *)*)
(*Pc[t1_, t2_, w_]:=4Pi^2 4000/(12(1-0.2^2))Min[(t1/w)^2,(t2/100)^2] (w*100-(100-2t1)(w-2t2));*)
(*vc[t1_,t2_, w_]:=600(w*100-(100-2t1)(w-2t2))*)


(* ::Input:: *)
(*(* Proposed design where the board is cut into half. Carries 2110N *)*)
(*t1=2*1.27;*)
(*t2=1.27;*)
(*a=85;*)
(*N[P2[t1,t2,a,b]]*)
(*N[P3[t1,t2,a,b]]*)
(*N[P4[t1,t2,a,b]]*)
(*N[P5[t1,t2,a,b]]*)
(*N[P7[t1,t2,a,b]]*)
(*N[P8[t1,t2,a,b]]*)
(*N[Pc[1.27,1.27*1.5,30]]*)
(*N[vmax-v[t1,t2,a,b]-vc[1.27,1.27*1.5,30]]*)


(* ::Input:: *)
(*(* Proposed design that is standard. 100x76. Carries 1806N *)*)
(*t1=2*1.27;*)
(*t2=1.27;*)
(*a=76;*)
(*N[P2[t1,t2,a,b]]*)
(*N[P3[t1,t2,a,b]]*)
(*N[P4[t1,t2,a,b]]*)
(*N[P5[t1,t2,a,b]]*)
(*N[P7[t1,t2,a,b]]*)
(*N[P8[t1,t2,a,b]]*)
(*N[Pc[1.27,1.27*2,30]]*)
(*N[vmax-v[t1,t2,a,b]-vc[1.27,1.27*2,30]]*)


(* ::Input:: *)
(**)
(**)
