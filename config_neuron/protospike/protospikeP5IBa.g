// genesis

/* FILE INFORMATION
**
**  Function to create prototype "spikegen" element "spike"
**  with unit amplitude and 0.010 second refractory period
**
**  GENESIS 2.0
*/

function make_spk6
        if ({exists spk6})
                return
        end

        create spikegen spk6
        setfield spk6 \
                thresh  0.0 \         // V
                abs_refract     1e-3 \ // sec
                output_amp      1
end
