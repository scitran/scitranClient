% SearchMlInputFile
%
% SearchMlInputFile Properties:
%    parentId  - Unique database ID
%    name      - The name of the file on disk
%
% SearchMlInputFile Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef SearchMlInputFile < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'parentId', 'name' }, ...
            { 'parent_id', 'name' });
    end
    properties(Dependent)
        parentId
        name
    end
    methods
        function obj = SearchMlInputFile(varargin)
            obj@flywheel.ModelBase(flywheel.model.SearchMlInputFile.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'parentId', []);
                addParameter(p, 'name', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.parentId)
                    obj.props_('parent_id') = p.Results.parentId;
                end
                if ~isempty(p.Results.name)
                    obj.props_('name') = p.Results.name;
                end
            end
        end
        function result = get.parentId(obj)
            if ismethod(obj, 'get_parentId')
                result = obj.get_parentId();
            else
                if isKey(obj.props_, 'parent_id')
                    result = obj.props_('parent_id');
                else
                    result = [];
                end
            end
        end
        function obj = set.parentId(obj, value)
            obj.props_('parent_id') = value;
        end
        function result = get.name(obj)
            if ismethod(obj, 'get_name')
                result = obj.get_name();
            else
                if isKey(obj.props_, 'name')
                    result = obj.props_('name');
                else
                    result = [];
                end
            end
        end
        function obj = set.name(obj, value)
            obj.props_('name') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'parent_id')
                result('parent_id') = flywheel.ModelBase.serializeValue(obj.props_('parent_id'), 'char');
            end
            if isKey(obj.props_, 'name')
                result('name') = flywheel.ModelBase.serializeValue(obj.props_('name'), 'char');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'parent_id')
                result.parentId = obj.props_('parent_id');
            else
                result.parentId = [];
            end
            if isKey(obj.props_, 'name')
                result.name = obj.props_('name');
            else
                result.name = [];
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
                if isKey(obj.props_, 'parent_id')
                    propList.parentId = obj.props_('parent_id');
                else
                    propList.parentId = [];
                end
                if isKey(obj.props_, 'name')
                    propList.name = obj.props_('name');
                else
                    propList.name = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.SearchMlInputFile;
            if isfield(json, 'parent_id')
                obj.props_('parent_id') = flywheel.ModelBase.deserializeValue(json.parent_id, 'char');
            end
            if isfield(json, 'name')
                obj.props_('name') = flywheel.ModelBase.deserializeValue(json.name, 'char');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.SearchMlInputFile')
                    obj = flywheel.model.SearchMlInputFile(obj);
                end
                if isKey(obj.props_, 'parent_id')
                end
                if isKey(obj.props_, 'name')
                end
            end
        end
    end
end