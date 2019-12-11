// genesis

/* FILE INFORMATION
**
**  Function to create prototype "spikegen" element "spike"
**  with unit amplitude and 0.010 second refractory period
**
**  GENESIS 2.0
*/

function make_spk1
        if ({exists spk1})
                return
        end

        create spikegen spk1
        setfield spk1 \
                thresh  0.00 \         // V
                abs_refract     1e-3 \ // sec
                output_amp      1
end
