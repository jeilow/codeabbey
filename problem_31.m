fid = fopen('DATA.lst');
while ~feof(fid)
    sentence = fgetl(fid);
    slpSentece = strsplit(sentence,' ');
    number = str2double(char(slpSentece(1)));
    word = char(slpSentece(2));
    if (number > 0)
        firstpart = word(1:number);
        secondpart = word(number + 1:(size(word,2)-number));
        final = strcat(secondpart,firstpart);
        disp(final);
    else
        firstpart = word(1:(size(word,2)+number));
        secondpart = word((size(word,2)+number+1):size(word,2));
        final = strcat(secondpart,firstpart);
        disp(final);
    end
end
fclose(fid);