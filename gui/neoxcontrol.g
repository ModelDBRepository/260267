// genesis

float dt = 1.0e-4
float refresh_factor = 10.0

create xtoggle /control/Neoxout_toggle 
setfield ^ script "showtoggle  <w> /Neoxout" \
	   state 0                             \
	   onlabel  "Neoxout hidden"              \
	   offlabel "Neoxout visible"

function showtoggle(widget,form)
    str widget
    str form
    echo {widget} {form}
    if ({getfield {widget} state} == 1)
      xhide {form}
   else
      xshow {form}
    end
end 
