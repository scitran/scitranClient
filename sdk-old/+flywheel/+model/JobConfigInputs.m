% JobConfigInputs
%
% JobConfigInputs Properties:
%
% JobConfigInputs Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef JobConfigInputs < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = [];
    end
    properties(Dependent)
    end
    methods
        function obj = JobConfigInputs(varargin)
            obj@flywheel.ModelBase(flywheel.model.JobConfigInputs.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                p.KeepUnmatched = true;

                parse(p, varargin{:});

                names = fieldnames(p.Unmatched);
                for i = 1:length(names)
                    name = names{i};
                    obj.props_(name) = p.Unmatched.(name);
                end
            end
        end
        function result = keys(obj)
            result = obj.props_.keys();
        end
        function result = toJson(obj)
            result = obj.props_;
        end
        function result = struct(obj)
            result = struct;

            propKeys = keys(obj.props_);
            for i = 1:length(propKeys)
                key = propKeys{i};
                result.(key) = obj.props_(key);
            end
        end
        function result = returnValue(obj)
            result = obj;
        end
    end
    methods(Access = protected)
        function prpgrp = getPropertyGroups(obj)
            if ~isscalar(obj)
                prpgrp = getPropertyGroups@matlab.mixin.CustomDisplay(obj);
            else
                propList = struct;
                propKeys = keys(obj.props_);
                for i = 1:length(propKeys)
                    key = propKeys{i};
                    propList.(key) = obj.props_(key);
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.JobConfigInputs;
            if ~isempty(json)
                keys = fieldnames(json);
                names = matlab.lang.makeValidName(keys);
                names = matlab.lang.makeUniqueStrings(names, {}, namelengthmax);
                values = struct2cell(json);
                for i = 1:length(keys)
                    key = keys{i};
                    name = names{i};
                    value = values{i};

                    if ~strcmp(key, name)
                        fprintf('Warning: ''%s'' is not a valid identifier and has been renamed to ''%s''\n', key, name);
                    end

                    obj.props_(name) = value;
                end
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.JobConfigInputs')
                    obj = flywheel.model.JobConfigInputs(obj);
                end
            end
        end
    end
end
