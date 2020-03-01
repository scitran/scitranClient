% SearchParentResponse - Fields for parent search response
%
% SearchParentResponse Properties:
%    id           - Unique database ID
%    type         - The type of container (e.g. session)
%
% SearchParentResponse Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef SearchParentResponse < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'id', 'type' }, ...
            { '_id', 'type' });

        discriminatorValueClassMap = containers.Map({ 'collection', 'group', 'acquisition', 'analysis', 'project', 'session' }, ...
            { 'flywheel.model.SearchParentCollection.fromJson', 'flywheel.model.SearchParentGroup.fromJson', 'flywheel.model.SearchParentAcquisition.fromJson', 'flywheel.model.SearchParentAnalysis.fromJson', 'flywheel.model.SearchParentProject.fromJson', 'flywheel.model.SearchParentSession.fromJson' });
    end
    properties(Dependent)
        id
        type
    end
    methods
        function obj = SearchParentResponse(varargin)
            obj@flywheel.ModelBase(flywheel.model.SearchParentResponse.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'id', []);
                addParameter(p, 'type', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.id)
                    obj.props_('_id') = p.Results.id;
                end
                if ~isempty(p.Results.type)
                    obj.props_('type') = p.Results.type;
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
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, '_id')
                result('_id') = flywheel.ModelBase.serializeValue(obj.props_('_id'), 'char');
            end
            if isKey(obj.props_, 'type')
                result('type') = flywheel.ModelBase.serializeValue(obj.props_('type'), 'char');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, '_id')
                result.id = obj.props_('_id');
            else
                result.id = [];
            end
            if isKey(obj.props_, 'type')
                result.type = obj.props_('type');
            else
                result.type = [];
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
                if isKey(obj.props_, 'type')
                    propList.type = obj.props_('type');
                else
                    propList.type = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function result = fromJson(json, context)
            discriminatorValue = [];

            if isfield(json, 'type')
                discriminatorValue = json.type;
            end

            if isKey(flywheel.model.SearchParentResponse.discriminatorValueClassMap, discriminatorValue)
                result = feval(flywheel.model.SearchParentResponse.discriminatorValueClassMap(discriminatorValue), json, context);
            else
                result = [];
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.SearchParentResponse')
                    obj = flywheel.model.SearchParentResponse(obj);
                end
                if isKey(obj.props_, '_id')
                end
                if isKey(obj.props_, 'type')
                end
            end
        end
    end
end