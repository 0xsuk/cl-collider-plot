# cl-collider-plot

plot library for cl-collider.

Depends on: cl-collider, kai, iterate

## usage
```lisp

(draw-proxy (sin-osc.ar 400)) ; like proxy, but plots ugen. no sound by default.
(show) ; opens a new tab in browser

(draw-proxy (sin-osc.ar 440) :sec 1 :mul .1) ; plots ugen for one second. multiply amplitude by .1
(show)

(draw-proxy (env-gen.ar (env '(1 0) '(1)))) ; to plot envelope
(show)

; in synth def
(defsynth test ()
    (let ((sound (sin-osc.ar 440)))
        (draw sound :frames 48000) ; plots ugen for one sec (same as :sec 1)
        (out.ar 0 sound))
)
(synth 'test)
(show)

```
