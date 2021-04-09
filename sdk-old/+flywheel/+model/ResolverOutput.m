% ResolverOutput
%
% ResolverOutput Properties:
%    path     
%    children 
%
% ResolverOutput Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef ResolverOutput < flywheel.ModelBase & flywheel.mixins.ResolverOutputMixin
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'path', 'children' }, ...
            { 'path', 'children' });
    end
    properties(Dependent)
        path
        children
    end
    methods
        function obj = ResolverOutput(varargin)
            obj@flywheel.ModelBase(flywheel.model.ResolverOutput.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'path', []);
                addParameter(p, 'children', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.path)
                    obj.props_('path') = p.Results.path;
                end
                if ~isempty(p.Results.children)
                    obj.props_('children') = p.Results.children;
                end
            end
        end
        function result = get.path(obj)
            if ismethod(obj, 'get_path')
                result = obj.get_path();
            else
                if isKey(obj.props_, 'path')
                    result = obj.props_('path');
                else
                    result = [];
                end
            end
        end
        function obj = set.path(obj, value)
            obj.props_('path') = value;
        end
        function result = get.children(obj)
            if ismethod(obj, 'get_children')
                result = obj.get_children();
            else
                if isKey(obj.props_, 'children')
                    result = obj.props_('children');
                else
                    result = [];
                end
            end
        end
        function obj = set.children(obj, value)
            obj.props_('children') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'path')
                result('path') = flywheel.ModelBase.cellmap(@toJson, obj.props_('path'));
            end
            if isKey(obj.props_, 'children')
                result('children') = flywheel.ModelBase.cellmap(@toJson, obj.props_('children'));
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'path')
                result.path = flywheel.ModelBase.cellmap(@struct, obj.props_('path'));
            else
                result.path = [];
            end
            if isKey(obj.props_, 'children')
                result.children = flywheel.ModelBase.cellmap(@struct, obj.props_('children'));
            else
                result.children = [];
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
                if isKey(obj.props_, 'path')
                    propList.path = obj.props_('path');
                else
                    propList.path = [];
                end
                if isKey(obj.props_, 'children')
                    propList.children = obj.props_('children');
                else
                    propList.children = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.ResolverOutput;
            if isfield(json, 'path')
                obj.props_('path') = flywheel.ModelBase.cellmap(@(x) flywheel.model.ResolverNode.fromJson(x, context), json.path);
            end
            if isfield(json, 'children')
                obj.props_('children') = flywheel.ModelBase.cellmap(@(x) flywheel.model.ResolverNode.fromJson(x, context), json.children);
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.ResolverOutput')
                    obj = flywheel.model.ResolverOutput(obj);
                end
                if isKey(obj.props_, 'path')
                    obj.props_('path') = flywheel.ModelBase.cellmap(@flywheel.model.ResolverNode.ensureIsInstance, obj.props_('path'));
                end
                if isKey(obj.props_, 'children')
                    obj.props_('children') = flywheel.ModelBase.cellmap(@flywheel.model.ResolverNode.ensureIsInstance, obj.props_('children'));
                end
            end
        end
    end
end