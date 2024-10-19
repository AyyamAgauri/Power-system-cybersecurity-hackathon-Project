% Assuming P and P_noised are extracted from Simulink
deviation_limit = 0.05;

% Condition: Check if the noised values deviate by more than 5%
P_condition = abs((P_noised - P) ./ P) > deviation_limit;
Ig_condition = abs((Ig_noised - Ig) ./ Ig) > deviation_limit;
Iin_condition = abs((Iin_noised - Iin) ./ Iin) > deviation_limit;
Vg_condition = abs((Vg_noised - Vg) ./ Vg) > deviation_limit;
Vin_condition = abs((Vin_noised - Vin) ./ Vin) > deviation_limit;

% Combine conditions (for multi-phase components, apply the condition element-wise)
overall_condition = P_condition | Ig_condition | Iin_condition | Vg_condition | Vin_condition;

% Extract only the rows where the condition is true
selected_data = data(overall_condition, :);

% Make predictions based on the selected data
predictions = model.predict(selected_data);

disp(predictions);

for t = 1:simulation_time
    % Simulate and extract signals for this time step
    simOut = sim('your_simulink_model');
    
    % Extract normal and noised signals for this time step
    P = simOut.get('P');
    P_noised = simOut.get('P_noised');
    % Similarly for Ig, Iin, Vg, Vin, etc.

    % Apply 5% deviation condition
    P_condition = abs((P_noised - P) ./ P) > deviation_limit;

    % Use the condition to select the data and make predictions
    if P_condition
        % Prepare data and predict
        data = [P, Ig_A, Ig_B, Ig_C, Iin_A, Iin_B, Iin_C, Vg_A, Vg_B, Vg_C, Vin_A, Vin_B, Vin_C];
        predictions = model.predict(data);
        disp(predictions);
    end
end
