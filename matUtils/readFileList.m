function resList = readFileList(filePattern, readFunction, varargin)
% Read a series of files from a file pattern and a functon handle.
%
%   RESLIST = readFileList(FILEPATTERN, FUNHANDLE)
%
%   Example
%   readFileList
%
%   See also
%
 
% ------
% Author: David Legland
% e-mail: david.legland@inra.fr
% Created: 2019-09-14,    using Matlab 8.6.0.267246 (R2015b)
% Copyright 2019 INRA - Cepia Software Platform.


%% Parse input args.
verbose = false;
while length(varargin) > 1
    pname = varargin{1};
    if strcmpi(pname, 'verbose')
        verbose = varargin{2};
    else
        error('Unknown argument name: %s', pname);
    end
    varargin(1:2) = [];
end


%% Init

[path, tmp] = fileparts(filePattern); %#ok<ASGLU>
fileList = dir(filePattern);
nFiles = length(fileList);

if verbose
    disp(sprintf('Found %d files to read', nFiles)); %#ok<DSPS>
end


%% Iterate over files

resList = cell(nFiles, 1);

for iFile = 1:nFiles
    fileName = fileList(iFile).name;
    if verbose
        disp(sprintf('Reading file %d/%d: %s', iFile, nFiles, fileName)); %#ok<DSPS>
    end
    
    filePath = fullfile(path, fileName); 
    resList{iFile} = readFunction(filePath);
end
