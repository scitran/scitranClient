% CollectionNewOutput
%
% CollectionNewOutput Properties:
%    id  - Unique database ID
%
% CollectionNewOutput Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef CollectionNewOutput < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'id' }, ...
            { '_id' });
    end
    properties(Dependent)
        id
    end
    methods
        function obj = CollectionNewOutput(varargin)
            obj@flywheel.ModelBase(flywheel.model.CollectionNewOutput.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'id', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.id)
                    obj.props_('_id') = p.Results.id;
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
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, '_id')
                result('_id') = flywheel.ModelBase.serializeValue(obj.props_('_id'), 'char');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, '_id')
                result.id = obj.props_('_id');
            else
                result.id = [];
            end
        end
        function result = returnValue(obj)
            result = obj.props_('_id');
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
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.CollectionNewOutput;
            if isfield(json, 'x0x5Fid')
                obj.props_('_id') = flywheel.ModelBase.deserializeValue(json.x0x5Fid, 'char');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.CollectionNewOutput')
                    obj = flywheel.model.CollectionNewOutput(obj);
                end
                if isKey(obj.props_, '_id')
                end
            end
        end
    end
end
