% ContainerGroupOutput
%
% ContainerGroupOutput Properties:
%    id          
%    label        - The group label
%    permissions  - Array of user roles
%    created      - Creation time (automatically set)
%    modified     - Last modification time (automatically updated)
%    tags         - Array of application-specific tags
%
% ContainerGroupOutput Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef ContainerGroupOutput < flywheel.ModelBase & flywheel.mixins.GroupMixin
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'id', 'label', 'permissions', 'created', 'modified', 'tags' }, ...
            { '_id', 'label', 'permissions', 'created', 'modified', 'tags' });
    end
    properties(Dependent)
        id
        label
        permissions
        created
        modified
        tags
    end
    methods
        function obj = ContainerGroupOutput(varargin)
            obj@flywheel.ModelBase(flywheel.model.ContainerGroupOutput.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'id', []);
                addParameter(p, 'label', []);
                addParameter(p, 'permissions', []);
                addParameter(p, 'created', []);
                addParameter(p, 'modified', []);
                addParameter(p, 'tags', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.id)
                    obj.props_('_id') = p.Results.id;
                end
                if ~isempty(p.Results.label)
                    obj.props_('label') = p.Results.label;
                end
                if ~isempty(p.Results.permissions)
                    obj.props_('permissions') = p.Results.permissions;
                end
                if ~isempty(p.Results.created)
                    obj.props_('created') = p.Results.created;
                end
                if ~isempty(p.Results.modified)
                    obj.props_('modified') = p.Results.modified;
                end
                if ~isempty(p.Results.tags)
                    obj.props_('tags') = p.Results.tags;
                end
            end
        end
        function result = get.id(obj)
            if ismethod(obj, 'get_id')
                result = obj.get_id();
            else
                if isKey(obj.props_, '_id')
                    result = obj.props_('_id');
                else
                    result = [];
                end
            end
        end
        function obj = set.id(obj, value)
            obj.props_('_id') = value;
        end
        function result = get.label(obj)
            if ismethod(obj, 'get_label')
                result = obj.get_label();
            else
                if isKey(obj.props_, 'label')
                    result = obj.props_('label');
                else
                    result = [];
                end
            end
        end
        function obj = set.label(obj, value)
            obj.props_('label') = value;
        end
        function result = get.permissions(obj)
            if ismethod(obj, 'get_permissions')
                result = obj.get_permissions();
            else
                if isKey(obj.props_, 'permissions')
                    result = obj.props_('permissions');
                else
                    result = [];
                end
            end
        end
        function obj = set.permissions(obj, value)
            obj.props_('permissions') = value;
        end
        function result = get.created(obj)
            if ismethod(obj, 'get_created')
                result = obj.get_created();
            else
                if isKey(obj.props_, 'created')
                    result = obj.props_('created');
                else
                    result = [];
                end
            end
        end
        function obj = set.created(obj, value)
            obj.props_('created') = value;
        end
        function result = get.modified(obj)
            if ismethod(obj, 'get_modified')
                result = obj.get_modified();
            else
                if isKey(obj.props_, 'modified')
                    result = obj.props_('modified');
                else
                    result = [];
                end
            end
        end
        function obj = set.modified(obj, value)
            obj.props_('modified') = value;
        end
        function result = get.tags(obj)
            if ismethod(obj, 'get_tags')
                result = obj.get_tags();
            else
                if isKey(obj.props_, 'tags')
                    result = obj.props_('tags');
                else
                    result = [];
                end
            end
        end
        function obj = set.tags(obj, value)
            obj.props_('tags') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, '_id')
                result('_id') = flywheel.ModelBase.serializeValue(obj.props_('_id'), 'char');
            end
            if isKey(obj.props_, 'label')
                result('label') = flywheel.ModelBase.serializeValue(obj.props_('label'), 'char');
            end
            if isKey(obj.props_, 'permissions')
                result('permissions') = flywheel.ModelBase.cellmap(@toJson, obj.props_('permissions'));
            end
            if isKey(obj.props_, 'created')
                result('created') = flywheel.ModelBase.serializeValue(obj.props_('created'), 'datetime');
            end
            if isKey(obj.props_, 'modified')
                result('modified') = flywheel.ModelBase.serializeValue(obj.props_('modified'), 'datetime');
            end
            if isKey(obj.props_, 'tags')
                result('tags') = flywheel.ModelBase.serializeValue(obj.props_('tags'), 'vector[char]');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, '_id')
                result.id = obj.props_('_id');
            else
                result.id = [];
            end
            if isKey(obj.props_, 'label')
                result.label = obj.props_('label');
            else
                result.label = [];
            end
            if isKey(obj.props_, 'permissions')
                result.permissions = flywheel.ModelBase.cellmap(@struct, obj.props_('permissions'));
            else
                result.permissions = [];
            end
            if isKey(obj.props_, 'created')
                result.created = obj.props_('created');
            else
                result.created = [];
            end
            if isKey(obj.props_, 'modified')
                result.modified = obj.props_('modified');
            else
                result.modified = [];
            end
            if isKey(obj.props_, 'tags')
                result.tags = obj.props_('tags');
            else
                result.tags = [];
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
                if isKey(obj.props_, '_id')
                    propList.id = obj.props_('_id');
                else
                    propList.id = [];
                end
                if isKey(obj.props_, 'label')
                    propList.label = obj.props_('label');
                else
                    propList.label = [];
                end
                if isKey(obj.props_, 'permissions')
                    propList.permissions = obj.props_('permissions');
                else
                    propList.permissions = [];
                end
                if isKey(obj.props_, 'created')
                    propList.created = obj.props_('created');
                else
                    propList.created = [];
                end
                if isKey(obj.props_, 'modified')
                    propList.modified = obj.props_('modified');
                else
                    propList.modified = [];
                end
                if isKey(obj.props_, 'tags')
                    propList.tags = obj.props_('tags');
                else
                    propList.tags = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.ContainerGroupOutput;
            if isfield(json, 'x0x5Fid')
                obj.props_('_id') = flywheel.ModelBase.deserializeValue(json.x0x5Fid, 'char');
            end
            if isfield(json, 'label')
                obj.props_('label') = flywheel.ModelBase.deserializeValue(json.label, 'char');
            end
            if isfield(json, 'permissions')
                obj.props_('permissions') = flywheel.ModelBase.cellmap(@(x) flywheel.model.Permission.fromJson(x, context), json.permissions);
            end
            if isfield(json, 'created')
                obj.props_('created') = flywheel.ModelBase.deserializeValue(json.created, 'datetime');
            end
            if isfield(json, 'modified')
                obj.props_('modified') = flywheel.ModelBase.deserializeValue(json.modified, 'datetime');
            end
            if isfield(json, 'tags')
                obj.props_('tags') = flywheel.ModelBase.deserializeValue(json.tags, 'vector[char]');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.ContainerGroupOutput')
                    obj = flywheel.model.ContainerGroupOutput(obj);
                end
                if isKey(obj.props_, '_id')
                end
                if isKey(obj.props_, 'label')
                end
                if isKey(obj.props_, 'permissions')
                    obj.props_('permissions') = flywheel.ModelBase.cellmap(@flywheel.model.Permission.ensureIsInstance, obj.props_('permissions'));
                end
                if isKey(obj.props_, 'created')
                end
                if isKey(obj.props_, 'modified')
                end
                if isKey(obj.props_, 'tags')
                end
            end
        end
    end
end