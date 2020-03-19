function x = read_file(s)
% This funciton read the data
% And return a circular list of the data
% In anti clockwise
% Copyright https://github.com/joaomh
    fid = fopen (s, 'r');
    x = fscanf(fid, '%g %g', [2, inf]); % How to read the data
    fclose (fid);
    npoints = size(x,2);
    x(:, npoints+1) = x(:,1);           % circular list

end

