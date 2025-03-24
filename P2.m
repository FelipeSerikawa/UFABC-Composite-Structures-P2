% APLICAÇÕES ESTRUTURAIS DE MATERIAIS COMPÓSITOS - ESAE001-23 PROVA 2 - TRABALHO

clc

% Material: E-Glass/Epoxy

% 1 - Receber as propriedades da lâmina nas direções 1 e 2
E1 = 41; % módulos de elasticidade (GPa)
E2 = 10.4; % módulos de elasticidade (GPa)
v12 = 0.28; % coeficiente de Poisson
G12 = 4.3; % módulo de cisalhamento (GPa)
Xt = 3250; % longitudinal tensile
Xc = 1590; % longitudinal compressive
Yt = 62; % transverse tensile
Yc = 200; % transverse compressive
S = 75;  % in-plane shear

% 2 - Receber o ângulo theta de orientação da lâmina em relação aos eixos x e y
theta = deg2rad(45);

% 3 - Receber o estado de tensão qualquer (MPa)
Sx = 10;
Sy = 10;
Txy = 10;

% 4 - Calcular a partir dos dados fornecidos o estado de tensão nas direções 1 e 2
S1 = cos(theta)^2 * Sx + sin(theta)^2 * Sy + 2 * cos(theta) * sin(theta) * Txy;
S2 = sin(theta)^2 * Sx + cos(theta)^2 * Sy - 2 * cos(theta) * sin(theta) * Txy;
T12 = (cos(theta)^2 - sin(theta)^2) * Txy + cos(theta) * sin(theta) * (Sy - Sx);

S1
S2
T12
