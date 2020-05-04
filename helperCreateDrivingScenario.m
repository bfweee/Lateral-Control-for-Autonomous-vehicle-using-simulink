function [scenario,roadCenters,laneSpecification] = helperCreateDrivingScenario()

%%function [scenario, egoCar] = HelperCreateDrivingScenario1()
% createDrivingScenario Returns the drivingScenario defined in the Designer

% Generated by MATLAB(R) 9.5 and Automated Driving System Toolbox 1.3.
% Generated on: 04-May-2020 20:01:54

% Construct a drivingScenario object.
scenario = drivingScenario;

% Add all road segments
roadCenters = [2.11 21.64 0;
    9.13 5.88 0;
    35.97 -7.24 0;
    48.04 -22.62 0];
marking = [laneMarking('Dashed', 'Color', [0.98 0.86 0.36])
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', [6 3.6], 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification);

% Add the ego car
egoCar = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [1.06 21.34 0]);
waypoints = [1.06 21.34 0;
    1.58 19.08 0.01;
    3.47 13.42 0.01;
    5.81 8.22 0.01;
    10.26 3.32 0.01;
    15.46 0.08 0.01;
    20.89 -2.11 0.01;
    26.55 -4 0.01;
    32.28 -5.96 0.01;
    36.95 -9.65 0.01;
    41.18 -14.03 0.01;
    44.42 -19.16 0.01;
    46.91 -23.53 0];
speed = 30;
trajectory(egoCar, waypoints, speed);
