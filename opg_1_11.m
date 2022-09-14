
matrix = load('moon_density.txt'); % load fil

r = [0, matrix(:,1)']; % Radius af grænseflader mellem skallerne
rho = matrix(:,2)'; % Massefylde af hver skal

l = size(r,2); 
r_h = r(2:l); % Øvre grænser for skallerne
r_l = r(1:l-1); % Nedre grænser for skallerne

density = sum(rho.*(r_h.^3-r_l.^3))./r(l)^3; % Udregn gennemsnitsdensitet

disp("planetens densitet er " + density + " kg/m^3")