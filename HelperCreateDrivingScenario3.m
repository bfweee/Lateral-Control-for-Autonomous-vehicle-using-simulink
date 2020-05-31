function [scenario, egoCar] = createDrivingScenario()
% createDrivingScenario Returns the drivingScenario defined in the Designer

% Generated by MATLAB(R) 9.5 and Automated Driving System Toolbox 1.3.
% Generated on: 04-May-2020 21:14:39

% Construct a drivingScenario object.
scenario = drivingScenario;

% Add all road segments
roadCenters = [1.6 -18.8 0;
    22.6 16.6 0;
    48.7 8.2 0];
laneSpecification = lanespec(2, 'Width', 2.925);
road(scenario, roadCenters, 'Lanes', laneSpecification);

% Add the ego car
egoCar = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [1.6 -18.8 0]);
waypoints = [1.6 -18.8 0;
    2.6 -13.8 0;
    4.4 -4.9 0;
    6.5 1.8 0;
    9.6 7.2 0;
    14 12.1 0;
    19.5 16.2 0;
    25.4 17.1 0;
    29.8 17 0;
    36.2 15.5 0;
    40.5 13.1 0;
    44.3 10.6 0;
    48.6 8.2 0];
speed = 30;
trajectory(egoCar, waypoints, speed);

