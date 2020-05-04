%------------------------------------------
% Find NaN - Demo
%
% This script shows how to play with the NaN values, as you will encounter
% during your MIFC study.
% Created by Jess CC Hsing 2020/05/03
%------------------------------------------


%% Create a matrix with a lot of NaN values
NaN_array = NaN(5);
for i = 1:5
    place_sub = randi(25);
    NaN_array(place_sub) = i; 
end
    
%% Extract place information from the NaN matrix
NaN_linfo = ~isnan(NaN_array); %finds all non_nan values and set as one
NaN_pinfo = find(NaN_linfo);   %pinfo stores the indexies of the non_NaN values in the 
% The above can be simplified as NaN_info = find(~isNaN(NaN_array))

%% Extract value information from the NaN matrix
NaN_vinfo = NaN_array(~isnan(NaN_array));

%% Reconstruct the NaN matrix with the place and value information
recon_array = NaN(5);


for i = 1:length(NaN_pinfo)
    recon_array(NaN_pinfo(i)) = NaN_vinfo(i);
end

recon_array == NaN_array