// genesis

/* FILE INFORMATION
**
**  Function to create prototype "spikegen" element "spike"
**  with unit amplitude and 0.010 second refractory period
**
**  GENESIS 2.0
*/

function make_spk12longrange
        if ({exists spk12longrange})
                return
        end

        create spikegen spk12longrange
        setfield spk12longrange \
                thresh  0.00 \         // V
                abs_refract     1e-3 \ // sec
                output_amp      1
end
