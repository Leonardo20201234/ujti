geqrhs(0) = 4*vel(2)*e*((dempot(1,2)*px*py*pz)/((-pv*px*py*pz)-pw&
&**2*px*py)-(dempot(2,2)*pw*px*py)/((-pv*px*py*pz)-pw**2*px*py))+4&
&*vel(1)*e*((dempot(1,1)*px*py*pz)/((-pv*px*py*pz)-pw**2*px*py)-(d&
&empot(2,1)*pw*px*py)/((-pv*px*py*pz)-pw**2*px*py))-(2*vel(2)*vel(&
&3)*(pot(2)*dpot(5,2)-dpot(2,2)*pot(5)))/(2*pot(1)*pot(5)+2*pot(2)&
&**2)-(2*vel(1)*vel(3)*(pot(2)*dpot(5,1)-dpot(2,1)*pot(5)))/(2*pot&
&(1)*pot(5)+2*pot(2)**2)-(2*vel(0)*vel(2)*(dpot(1,2)*pot(5)+pot(2)&
&*dpot(2,2)))/(2*pot(1)*pot(5)+2*pot(2)**2)-(2*vel(0)*vel(1)*(dpot&
&(1,1)*pot(5)+pot(2)*dpot(2,1)))/(2*pot(1)*pot(5)+2*pot(2)**2)
 
geqrhs(1) = (-(4*dempot(2,1)*vel(3)*e*((-pv*py*pz)-pw**2*py))/((-&
&pv*px*py*pz)-pw**2*px*py))-(4*vel(0)*dempot(1,1)*e*((-pv*py*pz)-p&
&w**2*py))/((-pv*px*py*pz)-pw**2*px*py)+((vel(3)**2*dpot(5,1))/pot&
&(3))/2.0E+0+((vel(2)**2*dpot(4,1))/pot(3))/2.0E+0-(vel(1)*vel(2)*&
&dpot(3,2))/pot(3)-((vel(1)**2*dpot(3,1))/pot(3))/2.0E+0+(vel(0)*d&
&pot(2,1)*vel(3))/pot(3)-((vel(0)**2*dpot(1,1))/pot(3))/2.0E+0
 
geqrhs(2) = (-(4*dempot(2,2)*vel(3)*e*((-pv*px*pz)-pw**2*px))/((-&
&pv*px*py*pz)-pw**2*px*py))-(4*vel(0)*dempot(1,2)*e*((-pv*px*pz)-p&
&w**2*px))/((-pv*px*py*pz)-pw**2*px*py)+((vel(3)**2*dpot(5,2))/pot&
&(4))/2.0E+0-((vel(2)**2*dpot(4,2))/pot(4))/2.0E+0-(vel(1)*vel(2)*&
&dpot(4,1))/pot(4)+((vel(1)**2*dpot(3,2))/pot(4))/2.0E+0+(vel(0)*d&
&pot(2,2)*vel(3))/pot(4)-((vel(0)**2*dpot(1,2))/pot(4))/2.0E+0
 
geqrhs(3) = 4*vel(2)*e*((-(dempot(1,2)*pw*px*py)/((-pv*px*py*pz)-&
&pw**2*px*py))-(dempot(2,2)*pv*px*py)/((-pv*px*py*pz)-pw**2*px*py)&
&)+4*vel(1)*e*((-(dempot(1,1)*pw*px*py)/((-pv*px*py*pz)-pw**2*px*p&
&y))-(dempot(2,1)*pv*px*py)/((-pv*px*py*pz)-pw**2*px*py))-(2*vel(2&
&)*vel(3)*(pot(1)*dpot(5,2)+pot(2)*dpot(2,2)))/(2*pot(1)*pot(5)+2*&
&pot(2)**2)-(2*vel(1)*vel(3)*(pot(1)*dpot(5,1)+pot(2)*dpot(2,1)))/&
&(2*pot(1)*pot(5)+2*pot(2)**2)-(2*vel(0)*vel(2)*(pot(1)*dpot(2,2)-&
&dpot(1,2)*pot(2)))/(2*pot(1)*pot(5)+2*pot(2)**2)-(2*vel(0)*vel(1)&
&*(pot(1)*dpot(2,1)-dpot(1,1)*pot(2)))/(2*pot(1)*pot(5)+2*pot(2)**&
&2)
 
