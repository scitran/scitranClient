% MasterSubjectCodeCodeOutput
%
% MasterSubjectCodeCodeOutput Properties:
%    code  - Master subject code
%
% MasterSubjectCodeCodeOutput Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef MasterSubjectCodeCodeOutput < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'code' }, ...
            { 'code' });
    end
    properties(Dependent)
        code
    end
    methods
        function obj = MasterSubjectCodeCodeOutput(varargin)
            obj@flywheel.ModelBase(flywheel.model.MasterSubjectCodeCodeOutput.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'code', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.code)
                    obj.props_('code') = p.Results.code;
                end
            end
        end
        function result = get.code(obj)
            if ismethod(obj, 'get_code')
                result = obj.get_code();
            else
                if isKey(obj.props_, 'code')
                    result = obj.props_('code');
                else
                    result = [];
                end
            end
        end
        function obj = set.code(obj, value)
            obj.props_('code') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'code')
                result('code') = flywheel.ModelBase.serializeValue(obj.props_('code'), 'char');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'code')
                result.code = obj.props_('code');
            else
                result.code = [];
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
                if isKey(obj.props_, 'code')
                    propList.code = obj.props_('code');
                else
                    propList.code = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.MasterSubjectCodeCodeOutput;
            if isfield(json, 'code')
                obj.props_('code') = flywheel.ModelBase.deserializeValue(json.code, 'char');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.MasterSubjectCodeCodeOutput')
                    obj = flywheel.model.MasterSubjectCodeCodeOutput(obj);
                end
                if isKey(obj.props_, 'code')
                end
            end
        end
    end
end