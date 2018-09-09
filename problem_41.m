fid = fopen('DATA.lst');
while ~feof(fid)
    numbers = fgetl(fid);
    newNumbers =sscanf(numbers,'%d',[1,3]);
    minValue = min(newNumbers);
    maxValue = max(newNumbers);
    for index=1:3
        if ((newNumbers(index) ~= minValue) && (newNumbers(index) ~= maxValue))
            disp(newNumbers(index));
        end
    end
end
fclose(fid);