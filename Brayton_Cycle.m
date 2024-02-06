% Brayton Cycle
% 2 Main areas where gas turbine engines are used: aircraft propulsion and
% electric power generation.
% The open gas-turbine cycle can be modelled as a closed cycle by using the
% air-standard assumptions. That ideal gas turbine cycle with 2 rotating parts (compressor, turbine) 
% is called Brayton cycle.
% Made up of 4 internally reversible processes --> 
% 1.) Isentropic Compression (in a compressor)
% 2.) Constant-Pressure heat addition
% 3.) Isentropic expansion (in a turbine)
% 4.) Constant-pressure heat rejection
% Under the air-standard assumptions, we can derive that 
% eta_th_brayton = 1 - 1/(r_p^((k-1)/k)); r_p = p2/p1 = pressure ratio for ideal brayton cycle
% k = cp/cv for the working fluid

%% Variation of efficiency of Ideal Brayton Cycle with Pressure Ratio for a given working fluid
k = 1.4; % Specific heat ratio of air
r_p = linspace(1,20,100); % r_p = p2/p1 = pressure ratio for ideal brayton cycle
eta_th_brayton = 1 - 1./(r_p.^((k-1)/k));
plot(r_p,eta_th_brayton); % Graph
ylabel({'Brayton Cycle Efficiency (\eta_{th,b})'});
xlabel({'Pressure Ratio (r_p)'});

% Max temperature in cycle = inlet of turbine which also limits the max.
% obtainable pressure ratio
% For a given turbine inlet temperature,
