function special_print (result)
    rounded_std = round(std(result), 1, 'significant');
    if rounded_std
        rounded_mean = round(mean(result), -floor(log10(rounded_std)));
    else
        rounded_mean = mean(result);
    end
    exp = floor(log10(rounded_mean));

%     fprintf('%g +- %g\n', mean(result), std(result));
    fprintf('%g +- %g x 10^%d\n', rounded_mean/(10^exp), rounded_std/(10^exp), exp);
end