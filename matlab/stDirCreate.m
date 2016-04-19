function stDirCreate(d)
% Create an empty directory, d
%
% LMP,BW Vistasoft Team, 2016

% Check for exitence.  If there, empty it.  If not there, create it.
if exist(d,'dir'),     delete(fullfile(d,'*'))
else                   mkdir(d);
end

end