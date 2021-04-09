% CommonDeletedCount
%
% CommonDeletedCount Properties:
%    deleted 
%
% CommonDeletedCount Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef CommonDeletedCount < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'deleted' }, ...
            { 'deleted' });
    end
    properties(Dependent)
        deleted
    end
    methods
        function obj = CommonDeletedCount(varargin)
            obj@flywheel.ModelBase(flywheel.model.CommonDeletedCount.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'deleted', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.deleted)
                    obj.props_('deleted') = p.Results.deleted;
                end
            end
        end
        function result = get.deleted(obj)
            if ismethod(obj, 'get_deleted')
                result = obj.get_deleted();
            else
                if isKey(obj.props_, 'deleted')
                    result = obj.props_('deleted');
                else
                    result = [];
                end
            end
        end
        function obj = set.deleted(obj, value)
            obj.props_('deleted') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'deleted')
                result('deleted') = flywheel.ModelBase.serializeValue(obj.props_('deleted'), 'integer');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'deleted')
                result.deleted = obj.props_('deleted');
            else
                result.deleted = [];
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
                if isKey(obj.props_, 'deleted')
                    propList.deleted = obj.props_('deleted');
                else
                    propList.deleted = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.CommonDeletedCount;
            if isfield(json, 'deleted')
                obj.props_('deleted') = flywheel.ModelBase.deserializeValue(json.deleted, 'integer');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.CommonDeletedCount')
                    obj = flywheel.model.CommonDeletedCount(obj);
                end
                if isKey(obj.props_, 'deleted')
                end
            end
        end
    end
end
