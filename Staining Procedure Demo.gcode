; Homing sequence to place printer head at top right
G0 Z160 F2000 ; first position 
G0 X167 F2000 Y220 F1000

G4 S15; Pause for 10 secs to load 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; DRY Fixation Procedre Start;;;;;;;;;

;M104 S180 ; Sets the heating element to 180 C 
;M106 P0 S128; Sets the nozzle blower 10 50% duty cycle 
;G4   S10; Holds heating element temp and convectino for 3.3 minutes 
;M104 S200 ; Sets the heating element to 200 C 
;G4   S30 ; Holds the temp for ~ 6 minutes to fix sputum to slide

;;;;;;; DRY Fixation Procedre End;;;;;;;;;
;M104 S0 ; Sets the heating element to 0 C
;M106 S0 ; Turns off blower fan

; This is the Acid-Fast staining procedure in terms of G-Code movements
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; Acid-Fast Stain Procedure ;;;;;;;;;

;;;;;;;; Auramine Solution Stain:::::::::::
G1 Z160  F1000
G0 Y189  F1000
G0 X110  F3000
G1 Z29   F1000 ; Down to Container
G4 S600 ; Submerge for 10 min

;;;;;; Shake Excess Auramine ;;;;;;
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G0 Z160 F1000
G4 S10 

;;;;;; Rinse in Water & Shake off Waste ;;;;;;
G1 Z29  F1000 ; down on the first container
G4 S5 ;Stay submerged position for 5 seconds
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000

;;;;;;; Decolorizer Solution ;;;;;;;
G1 Z160  F1000
G0 Y189  F1000
G0 X110  F3000
G1 Z29   F1000 ; Down to Container
G4 S60 ; Submerge for 1 min

;;;;;; Shake Excess Decolorizer ;;;;;;
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G0 Z160 F1000
G4 S10 

;;;;;; Rinse in Water & Shake off Waste ;;;;;;
G1 Z29  F1000 ; down on the first container
G4 S5 ;Stay submerged position for 5 seconds
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000


;Methalyne 
G1 Z160  F1000
G0 Y189  F1000
G0 X110  F3000
G1 Z29   F1000 ; Down to Container
G4 S60 ; Submerge for 1 min

;;;;;; Shake Excess Decolorizer ;;;;;;
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G1 Z78 X113 F3000
G1 Z80 X115 F3000
G1 Z78 X113 F3000
G0 Z160 F1000
G4 S10 

;;;;;; Rinse in Water & Shake off Waste ;;;;;;
G1 Z29  F1000 ; down on the first container
G4 S5 ;Stay submerged position for 5 seconds
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000
G1 Z29 X115 Y189 F3000
G1 Z31 X110 Y193 F3000


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; DRY Procedure;;;;;;;;;
G1 Z160 F600
G1 Y189 X0 F2000
G0 Z57 F800

M104 S180 ; Sets the heating element to 180 C 
M106 P0 S128; Sets the nozzle blower 10 50% duty cycle 
G4   S10; Holds heating element temp and convectino for 3.3 minutes 
M104 S200 ; Sets the heating element to 200 C 
G4   S360 ; Holds the temp for ~ 6 minutes to fix sputum to slide

;;;;;;; DRY Fixation Procedre End;;;;;;;;;
M104 S0 ; Sets the heating element to 0 C
M106 S0 ; Turns off blower fan

;;;;;;;;Home;;;;;;;;;;;
G1 Z160 F1000
G1 X167 Y220 F2000