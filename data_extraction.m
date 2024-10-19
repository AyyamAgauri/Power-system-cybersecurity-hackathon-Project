% Assuming 'scope_data' is the variable containing the scope output
num_ports = length(GoodData.signals);  % Get the number of ports/signals connected to the scope

for k = 1:num_ports
    port_data = scope_data.signals(k).values;  % Extract data from the k-th port
    % You can process each port's data here or save it individually
    filename = sprintf('data_port_%d.csv', k);
    writematrix(port_data, filename);  % Save each port's data to a separate CSV file
end
