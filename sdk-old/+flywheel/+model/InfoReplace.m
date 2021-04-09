% InfoReplace - Indicates that info should be replaced with the properties in this document
%
% InfoReplace Properties:
%    replace  - The new set of properties for the info
%
% InfoReplace Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef InfoReplace < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'replace' }, ...
            { 'replace' });
    end
    properties(Dependent)
        replace
    end
    methods
        function obj = InfoReplace(varargin)
            obj@flywheel.ModelBase(flywheel.model.InfoReplace.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'replace', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.replace)
                    obj.props_('replace') = p.Results.replace;
                end
            end
        end
        function result = get.replace(obj)
            if ismethod(obj, 'get_replace')
                result = obj.get_replace();
            else
                if isKey(obj.props_, 'replace')
                    result = obj.props_('replace');
                else
                    result = [];
                end
            end
        end
        function obj = set.replace(obj, value)
            obj.props_('replace') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'replace')
                result('replace') = flywheel.ModelBase.serializeValue(obj.props_('replace'), 'containers.Map');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'replace')
                result.replace = obj.props_('replace');
            else
                result.replace = [];
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
                if isKey(obj.props_, 'replace')
                    propList.replace = obj.props_('replace');
                else
                    propList.replace = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.InfoReplace;
            if isfield(json, 'replace')
                obj.props_('replace') = flywheel.ModelBase.deserializeValue(json.replace, 'containers.Map');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.InfoReplace')
                    obj = flywheel.model.InfoReplace(obj);
                end
                if isKey(obj.props_, 'replace')
                end
            end
        end
    end
end
