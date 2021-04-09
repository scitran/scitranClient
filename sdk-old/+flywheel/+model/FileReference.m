% FileReference - A reference to an individual file in a container, by type, id and name
%
% FileReference Properties:
%    type  - The type of container (e.g. session)
%    id    - Unique database ID
%    name  - The name of the file on disk
%
% FileReference Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef FileReference < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'type', 'id', 'name' }, ...
            { 'type', 'id', 'name' });
    end
    properties(Dependent)
        type
        id
        name
    end
    methods
        function obj = FileReference(varargin)
            obj@flywheel.ModelBase(flywheel.model.FileReference.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'type', []);
                addParameter(p, 'id', []);
                addParameter(p, 'name', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.type)
                    obj.props_('type') = p.Results.type;
                end
                if ~isempty(p.Results.id)
                    obj.props_('id') = p.Results.id;
                end
                if ~isempty(p.Results.name)
                    obj.props_('name') = p.Results.name;
                end
            end
        end
        function result = get.type(obj)
            if ismethod(obj, 'get_type')
                result = obj.get_type();
            else
                if isKey(obj.props_, 'type')
                    result = obj.props_('type');
                else
                    result = [];
                end
            end
        end
        function obj = set.type(obj, value)
            obj.props_('type') = value;
        end
        function result = get.id(obj)
            if ismethod(obj, 'get_id')
                result = obj.get_id();
            else
                if isKey(obj.props_, 'id')
                    result = obj.props_('id');
                else
                    result = [];
                end
            end
        end
        function obj = set.id(obj, value)
            obj.props_('id') = value;
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
            if isKey(obj.props_, 'type')
                result('type') = flywheel.ModelBase.serializeValue(obj.props_('type'), 'char');
            end
            if isKey(obj.props_, 'id')
                result('id') = flywheel.ModelBase.serializeValue(obj.props_('id'), 'char');
            end
            if isKey(obj.props_, 'name')
                result('name') = flywheel.ModelBase.serializeValue(obj.props_('name'), 'char');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'type')
                result.type = obj.props_('type');
            else
                result.type = [];
            end
            if isKey(obj.props_, 'id')
                result.id = obj.props_('id');
            else
                result.id = [];
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
                if isKey(obj.props_, 'type')
                    propList.type = obj.props_('type');
                else
                    propList.type = [];
                end
                if isKey(obj.props_, 'id')
                    propList.id = obj.props_('id');
                else
                    propList.id = [];
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
            obj =  flywheel.model.FileReference;
            if isfield(json, 'type')
                obj.props_('type') = flywheel.ModelBase.deserializeValue(json.type, 'char');
            end
            if isfield(json, 'id')
                obj.props_('id') = flywheel.ModelBase.deserializeValue(json.id, 'char');
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
                if ~isa(obj, 'flywheel.model.FileReference')
                    obj = flywheel.model.FileReference(obj);
                end
                if isKey(obj.props_, 'type')
                end
                if isKey(obj.props_, 'id')
                end
                if isKey(obj.props_, 'name')
                end
            end
        end
    end
end
