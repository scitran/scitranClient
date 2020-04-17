% JobDetailFileEntry
%
% JobDetailFileEntry Properties:
%    ref    
%    object 
%
% JobDetailFileEntry Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef JobDetailFileEntry < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'ref', 'object' }, ...
            { 'ref', 'object' });
    end
    properties(Dependent)
        ref
        object
    end
    methods
        function obj = JobDetailFileEntry(varargin)
            obj@flywheel.ModelBase(flywheel.model.JobDetailFileEntry.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'ref', []);
                addParameter(p, 'object', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.ref)
                    obj.props_('ref') = p.Results.ref;
                end
                if ~isempty(p.Results.object)
                    obj.props_('object') = p.Results.object;
                end
            end
        end
        function result = get.ref(obj)
            if ismethod(obj, 'get_ref')
                result = obj.get_ref();
            else
                if isKey(obj.props_, 'ref')
                    result = obj.props_('ref');
                else
                    result = [];
                end
            end
        end
        function obj = set.ref(obj, value)
            obj.props_('ref') = value;
        end
        function result = get.object(obj)
            if ismethod(obj, 'get_object')
                result = obj.get_object();
            else
                if isKey(obj.props_, 'object')
                    result = obj.props_('object');
                else
                    result = [];
                end
            end
        end
        function obj = set.object(obj, value)
            obj.props_('object') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'ref')
                result('ref') = obj.props_('ref').toJson();
            end
            if isKey(obj.props_, 'object')
                result('object') = obj.props_('object').toJson();
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'ref')
                result.ref = struct(obj.props_('ref'));
            else
                result.ref = [];
            end
            if isKey(obj.props_, 'object')
                result.object = struct(obj.props_('object'));
            else
                result.object = [];
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
                if isKey(obj.props_, 'ref')
                    propList.ref = obj.props_('ref');
                else
                    propList.ref = [];
                end
                if isKey(obj.props_, 'object')
                    propList.object = obj.props_('object');
                else
                    propList.object = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.JobDetailFileEntry;
            if isfield(json, 'ref')
                obj.props_('ref') = flywheel.model.FileReference.fromJson(json.ref, context);
            end
            if isfield(json, 'object')
                obj.props_('object') = flywheel.model.FileEntry.fromJson(json.object, context);
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.JobDetailFileEntry')
                    obj = flywheel.model.JobDetailFileEntry(obj);
                end
                if isKey(obj.props_, 'ref')
                    obj.props_('ref') =  flywheel.model.FileReference.ensureIsInstance(obj.props_('ref'));
                end
                if isKey(obj.props_, 'object')
                    obj.props_('object') =  flywheel.model.FileEntry.ensureIsInstance(obj.props_('object'));
                end
            end
        end
    end
end