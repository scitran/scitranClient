% JobRequest
%
% JobRequest Properties:
%    inputs  
%    target  
%    outputs 
%
% JobRequest Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef JobRequest < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'inputs', 'target', 'outputs' }, ...
            { 'inputs', 'target', 'outputs' });
    end
    properties(Dependent)
        inputs
        target
        outputs
    end
    methods
        function obj = JobRequest(varargin)
            obj@flywheel.ModelBase(flywheel.model.JobRequest.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'inputs', []);
                addParameter(p, 'target', []);
                addParameter(p, 'outputs', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.inputs)
                    obj.props_('inputs') = p.Results.inputs;
                end
                if ~isempty(p.Results.target)
                    obj.props_('target') = p.Results.target;
                end
                if ~isempty(p.Results.outputs)
                    obj.props_('outputs') = p.Results.outputs;
                end
            end
        end
        function result = get.inputs(obj)
            if ismethod(obj, 'get_inputs')
                result = obj.get_inputs();
            else
                if isKey(obj.props_, 'inputs')
                    result = obj.props_('inputs');
                else
                    result = [];
                end
            end
        end
        function obj = set.inputs(obj, value)
            obj.props_('inputs') = value;
        end
        function result = get.target(obj)
            if ismethod(obj, 'get_target')
                result = obj.get_target();
            else
                if isKey(obj.props_, 'target')
                    result = obj.props_('target');
                else
                    result = [];
                end
            end
        end
        function obj = set.target(obj, value)
            obj.props_('target') = value;
        end
        function result = get.outputs(obj)
            if ismethod(obj, 'get_outputs')
                result = obj.get_outputs();
            else
                if isKey(obj.props_, 'outputs')
                    result = obj.props_('outputs');
                else
                    result = [];
                end
            end
        end
        function obj = set.outputs(obj, value)
            obj.props_('outputs') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'inputs')
                result('inputs') = flywheel.ModelBase.cellmap(@toJson, obj.props_('inputs'));
            end
            if isKey(obj.props_, 'target')
                result('target') = flywheel.ModelBase.serializeValue(obj.props_('target'), 'containers.Map');
            end
            if isKey(obj.props_, 'outputs')
                result('outputs') = flywheel.ModelBase.serializeValue(obj.props_('outputs'), 'vector[containers.Map]');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'inputs')
                result.inputs = flywheel.ModelBase.cellmap(@struct, obj.props_('inputs'));
            else
                result.inputs = [];
            end
            if isKey(obj.props_, 'target')
                result.target = obj.props_('target');
            else
                result.target = [];
            end
            if isKey(obj.props_, 'outputs')
                result.outputs = obj.props_('outputs');
            else
                result.outputs = [];
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
                if isKey(obj.props_, 'inputs')
                    propList.inputs = obj.props_('inputs');
                else
                    propList.inputs = [];
                end
                if isKey(obj.props_, 'target')
                    propList.target = obj.props_('target');
                else
                    propList.target = [];
                end
                if isKey(obj.props_, 'outputs')
                    propList.outputs = obj.props_('outputs');
                else
                    propList.outputs = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.JobRequest;
            if isfield(json, 'inputs')
                obj.props_('inputs') = flywheel.ModelBase.cellmap(@(x) flywheel.model.JobInputsItem.fromJson(x, context), json.inputs);
            end
            if isfield(json, 'target')
                obj.props_('target') = flywheel.ModelBase.deserializeValue(json.target, 'containers.Map');
            end
            if isfield(json, 'outputs')
                obj.props_('outputs') = flywheel.ModelBase.deserializeValue(json.outputs, 'vector[containers.Map]');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.JobRequest')
                    obj = flywheel.model.JobRequest(obj);
                end
                if isKey(obj.props_, 'inputs')
                    obj.props_('inputs') = flywheel.ModelBase.cellmap(@flywheel.model.JobInputsItem.ensureIsInstance, obj.props_('inputs'));
                end
                if isKey(obj.props_, 'target')
                end
                if isKey(obj.props_, 'outputs')
                end
            end
        end
    end
end