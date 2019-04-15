% Avatars
%
% Avatars Properties:
%    gravatar 
%    provider 
%    custom   
%
% Avatars Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef Avatars < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'gravatar', 'provider', 'custom' }, ...
            { 'gravatar', 'provider', 'custom' });
    end
    properties(Dependent)
        gravatar
        provider
        custom
    end
    methods
        function obj = Avatars(varargin)
            obj@flywheel.ModelBase(flywheel.model.Avatars.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'gravatar', []);
                addParameter(p, 'provider', []);
                addParameter(p, 'custom', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.gravatar)
                    obj.props_('gravatar') = p.Results.gravatar;
                end
                if ~isempty(p.Results.provider)
                    obj.props_('provider') = p.Results.provider;
                end
                if ~isempty(p.Results.custom)
                    obj.props_('custom') = p.Results.custom;
                end
            end
        end
        function result = get.gravatar(obj)
            if ismethod(obj, 'get_gravatar')
                result = obj.get_gravatar();
            else
                if isKey(obj.props_, 'gravatar')
                    result = obj.props_('gravatar');
                else
                    result = [];
                end
            end
        end
        function obj = set.gravatar(obj, value)
            obj.props_('gravatar') = value;
        end
        function result = get.provider(obj)
            if ismethod(obj, 'get_provider')
                result = obj.get_provider();
            else
                if isKey(obj.props_, 'provider')
                    result = obj.props_('provider');
                else
                    result = [];
                end
            end
        end
        function obj = set.provider(obj, value)
            obj.props_('provider') = value;
        end
        function result = get.custom(obj)
            if ismethod(obj, 'get_custom')
                result = obj.get_custom();
            else
                if isKey(obj.props_, 'custom')
                    result = obj.props_('custom');
                else
                    result = [];
                end
            end
        end
        function obj = set.custom(obj, value)
            obj.props_('custom') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'gravatar')
                result('gravatar') = flywheel.ModelBase.serializeValue(obj.props_('gravatar'), 'char');
            end
            if isKey(obj.props_, 'provider')
                result('provider') = flywheel.ModelBase.serializeValue(obj.props_('provider'), 'char');
            end
            if isKey(obj.props_, 'custom')
                result('custom') = flywheel.ModelBase.serializeValue(obj.props_('custom'), 'char');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'gravatar')
                result.gravatar = obj.props_('gravatar');
            else
                result.gravatar = [];
            end
            if isKey(obj.props_, 'provider')
                result.provider = obj.props_('provider');
            else
                result.provider = [];
            end
            if isKey(obj.props_, 'custom')
                result.custom = obj.props_('custom');
            else
                result.custom = [];
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
                if isKey(obj.props_, 'gravatar')
                    propList.gravatar = obj.props_('gravatar');
                else
                    propList.gravatar = [];
                end
                if isKey(obj.props_, 'provider')
                    propList.provider = obj.props_('provider');
                else
                    propList.provider = [];
                end
                if isKey(obj.props_, 'custom')
                    propList.custom = obj.props_('custom');
                else
                    propList.custom = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.Avatars;
            if isfield(json, 'gravatar')
                obj.props_('gravatar') = flywheel.ModelBase.deserializeValue(json.gravatar, 'char');
            end
            if isfield(json, 'provider')
                obj.props_('provider') = flywheel.ModelBase.deserializeValue(json.provider, 'char');
            end
            if isfield(json, 'custom')
                obj.props_('custom') = flywheel.ModelBase.deserializeValue(json.custom, 'char');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.Avatars')
                    obj = flywheel.model.Avatars(obj);
                end
                if isKey(obj.props_, 'gravatar')
                end
                if isKey(obj.props_, 'provider')
                end
                if isKey(obj.props_, 'custom')
                end
            end
        end
    end
end