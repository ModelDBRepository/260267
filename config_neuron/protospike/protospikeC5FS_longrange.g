// genesis

/* FILE INFORMATION
**
**  Function to create prototype "spikegen" element "spike"
**  with unit amplitude and 0.010 second refractory period
**
**  GENESIS 2.0
*/

function make_spk16longrange
        if ({exists spk16longrange})
                return
        end

        create spikegen spk16longrange
        setfield spk16longrange \
                thresh  0.00 \         // V
                abs_refract     1e-3 \ // sec
                output_amp      1
end
