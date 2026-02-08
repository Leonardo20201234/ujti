geqrhs(0) = 4*vel(2)*((pot(3)*(dempot(3,1)-dempot(1,3))*pot(4)*po&
&t(5))/((-pot(1)*pot(3)*pot(4)*pot(5))-pot(2)**2*pot(3)*pot(4))-(p&
&ot(2)*pot(3)*pot(4)*(dempot(3,4)-dempot(4,3)))/((-pot(1)*pot(3)*p&
&ot(4)*pot(5))-pot(2)**2*pot(3)*pot(4)))*e+4*vel(1)*(((dempot(2,1)&
&-dempot(1,2))*pot(3)*pot(4)*pot(5))/((-pot(1)*pot(3)*pot(4)*pot(5&
&))-pot(2)**2*pot(3)*pot(4))-(pot(2)*pot(3)*pot(4)*(dempot(2,4)-de&
&mpot(4,2)))/((-pot(1)*pot(3)*pot(4)*pot(5))-pot(2)**2*pot(3)*pot(&
&4)))*e+(4*pot(3)*vel(3)*pot(4)*(dempot(4,1)-dempot(1,4))*pot(5)*e&
&)/((-pot(1)*pot(3)*pot(4)*pot(5))-pot(2)**2*pot(3)*pot(4))-(4*vel&
&(0)*pot(2)*pot(3)*pot(4)*(dempot(1,4)-dempot(4,1))*e)/((-pot(1)*p&
&ot(3)*pot(4)*pot(5))-pot(2)**2*pot(3)*pot(4))-(2*vel(2)*vel(3)*(p&
&ot(2)*dpot(5,2)-dpot(2,2)*pot(5)))/(2*pot(1)*pot(5)+2*pot(2)**2)-&
&(2*vel(1)*vel(3)*(pot(2)*dpot(5,1)-dpot(2,1)*pot(5)))/(2*pot(1)*p&
&ot(5)+2*pot(2)**2)-(2*vel(0)*vel(2)*(dpot(1,2)*pot(5)+pot(2)*dpot&
&(2,2)))/(2*pot(1)*pot(5)+2*pot(2)**2)-(2*vel(0)*vel(1)*(dpot(1,1)&
&*pot(5)+pot(2)*dpot(2,1)))/(2*pot(1)*pot(5)+2*pot(2)**2)
 
geqrhs(1) = (4*vel(3)*(dempot(4,2)-dempot(2,4))*((-pot(1)*pot(4)*&
&pot(5))-pot(2)**2*pot(4))*e)/((-pot(1)*pot(3)*pot(4)*pot(5))-pot(&
&2)**2*pot(3)*pot(4))+(4*vel(2)*(dempot(3,2)-dempot(2,3))*((-pot(1&
&)*pot(4)*pot(5))-pot(2)**2*pot(4))*e)/((-pot(1)*pot(3)*pot(4)*pot&
&(5))-pot(2)**2*pot(3)*pot(4))+(4*vel(0)*(dempot(1,2)-dempot(2,1))&
&*((-pot(1)*pot(4)*pot(5))-pot(2)**2*pot(4))*e)/((-pot(1)*pot(3)*p&
&ot(4)*pot(5))-pot(2)**2*pot(3)*pot(4))+((vel(3)**2*dpot(5,1))/pot&
&(3))/2.0E+0+((vel(2)**2*dpot(4,1))/pot(3))/2.0E+0-(vel(1)*vel(2)*&
&dpot(3,2))/pot(3)-((vel(1)**2*dpot(3,1))/pot(3))/2.0E+0+(vel(0)*d&
&pot(2,1)*vel(3))/pot(3)-((vel(0)**2*dpot(1,1))/pot(3))/2.0E+0
 
geqrhs(2) = (4*vel(3)*(dempot(4,3)-dempot(3,4))*((-pot(1)*pot(3)*&
&pot(5))-pot(2)**2*pot(3))*e)/((-pot(1)*pot(3)*pot(4)*pot(5))-pot(&
&2)**2*pot(3)*pot(4))+(4*vel(1)*(dempot(2,3)-dempot(3,2))*((-pot(1&
&)*pot(3)*pot(5))-pot(2)**2*pot(3))*e)/((-pot(1)*pot(3)*pot(4)*pot&
&(5))-pot(2)**2*pot(3)*pot(4))+(4*vel(0)*(dempot(1,3)-dempot(3,1))&
&*((-pot(1)*pot(3)*pot(5))-pot(2)**2*pot(3))*e)/((-pot(1)*pot(3)*p&
&ot(4)*pot(5))-pot(2)**2*pot(3)*pot(4))+((vel(3)**2*dpot(5,2))/pot&
&(4))/2.0E+0-((vel(2)**2*dpot(4,2))/pot(4))/2.0E+0-(vel(1)*vel(2)*&
&dpot(4,1))/pot(4)+((vel(1)**2*dpot(3,2))/pot(4))/2.0E+0+(vel(0)*d&
&pot(2,2)*vel(3))/pot(4)-((vel(0)**2*dpot(1,2))/pot(4))/2.0E+0
 
geqrhs(3) = 4*vel(2)*((-(pot(1)*pot(3)*pot(4)*(dempot(3,4)-dempot&
&(4,3)))/((-pot(1)*pot(3)*pot(4)*pot(5))-pot(2)**2*pot(3)*pot(4)))&
&-(pot(2)*pot(3)*(dempot(3,1)-dempot(1,3))*pot(4))/((-pot(1)*pot(3&
&)*pot(4)*pot(5))-pot(2)**2*pot(3)*pot(4)))*e+4*vel(1)*((-(pot(1)*&
&pot(3)*pot(4)*(dempot(2,4)-dempot(4,2)))/((-pot(1)*pot(3)*pot(4)*&
&pot(5))-pot(2)**2*pot(3)*pot(4)))-(pot(2)*(dempot(2,1)-dempot(1,2&
&))*pot(3)*pot(4))/((-pot(1)*pot(3)*pot(4)*pot(5))-pot(2)**2*pot(3&
&)*pot(4)))*e-(4*pot(2)*pot(3)*vel(3)*pot(4)*(dempot(4,1)-dempot(1&
&,4))*e)/((-pot(1)*pot(3)*pot(4)*pot(5))-pot(2)**2*pot(3)*pot(4))-&
&(4*vel(0)*pot(1)*pot(3)*pot(4)*(dempot(1,4)-dempot(4,1))*e)/((-po&
&t(1)*pot(3)*pot(4)*pot(5))-pot(2)**2*pot(3)*pot(4))-(2*vel(2)*vel&
&(3)*(pot(1)*dpot(5,2)+pot(2)*dpot(2,2)))/(2*pot(1)*pot(5)+2*pot(2&
&)**2)-(2*vel(1)*vel(3)*(pot(1)*dpot(5,1)+pot(2)*dpot(2,1)))/(2*po&
&t(1)*pot(5)+2*pot(2)**2)-(2*vel(0)*vel(2)*(pot(1)*dpot(2,2)-dpot(&
&1,2)*pot(2)))/(2*pot(1)*pot(5)+2*pot(2)**2)-(2*vel(0)*vel(1)*(pot&
&(1)*dpot(2,1)-dpot(1,1)*pot(2)))/(2*pot(1)*pot(5)+2*pot(2)**2)
 
