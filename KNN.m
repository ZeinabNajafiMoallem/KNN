%For k=1

clc;
clear;


age_Patient = input('Enter Patient Age: ');
weight_Patient = input('Enter Patient Weight: ');


patients = [20 160 ; 30 155 ; 18 165 ; 23 159 ; 28 162 ; 31 171];
lengthPatient = length(patients);


patientsaAge = patients(:, 1); 
patientsWeight = patients(:, 2);


finalDistance = 0;
for i=1:lengthPatient
    Distance(i) = ((patientsaAge(i) - age_Patient)^2) + ((patientsWeight(i) - weight_Patient)^2);
    finalDistance = finalDistance + Distance(i);
end


disp('-----------------------------------------')
EuclideanDistance = sqrt(finalDistance);
disp(['EuclideanDistance: ' num2str(EuclideanDistance)])


for j=1:i
    comparisonDistance(j) = abs(Distance(j) - EuclideanDistance);
end


minimumDistance = min(comparisonDistance);
index_minimumDistance = find(comparisonDistance == minimumDistance);
disp('-----------------------------------------')
disp(['row ==> ' num2str(index_minimumDistance) ' is nearest neighbor and minimum distance is ==> ' num2str(minimumDistance)])


