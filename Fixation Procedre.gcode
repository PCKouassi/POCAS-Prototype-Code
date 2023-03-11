; G0 is move followed Direction (X,Y,orZ)
; G28 is the home command
; M104 and 109 is the nozzel head heating 
; M140 and 190 is the bed heating s is the temp 
; fan cooling is m106 and the input value s is the fan speed, and P is the fan of interest
; G4 is the dwell time

G28 
; Homing sequence to place printer head at top right
G0 Z150 F2000 
G0 X167 F2000 Y220 F1000
 // printer bed extended to forward
G4 S20; Pause for 10 secs to load 

; Sequence to place the slide rack into the fixation chamber
G0 Z160 
G0 Y209 F1000
G0 X0 F800
G0 Z50 F800
G4 S5

;;;;;;;; Cartridge Heater Prep ;;;;;;;;;;
M109 S150 ; Pauses code until element reaches the prep temp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; Fixation Procedre ;;;;;;;;;

M104 S180 ; Sets the heating element to 180 C 
M106 P0 S128; Sets the nozzle blower 10 50% duty cycle 
G4   S200; Holds heating element temp and convectino for 3.3 minutes 
M104 S200 ; Sets the heating element to 200 C 
G4   S400 ; Holds the temp for ~ 6 minutes to fix sputum to slide

M104 S0 ; Sets the heating element to 0 C
M106 S0 ; Turns off blower fan

;;;;;;;;Home;;;;;;;;;;;
G0 Z160 X167 Y220 






