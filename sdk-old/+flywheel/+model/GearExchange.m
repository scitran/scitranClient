% GearExchange - Metadata object that describes the origin of a gear version
%
% GearExchange Properties:
%    gitCommit   - The SHA-1 hash referring to the git commit
%    rootfsHash  - The cryptographic hash of the root filesystem in the form of \"algorithm:<base16 hash>\"
%    rootfsUrl   - The absolute URL of the gear's root file system
%
% GearExchange Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef GearExchange < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'gitCommit', 'rootfsHash', 'rootfsUrl' }, ...
            { 'git-commit', 'rootfs-hash', 'rootfs-url' });
    end
    properties(Dependent)
        gitCommit
        rootfsHash
        rootfsUrl
    end
    methods
        function obj = GearExchange(varargin)
            obj@flywheel.ModelBase(flywheel.model.GearExchange.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'gitCommit', []);
                addParameter(p, 'rootfsHash', []);
                addParameter(p, 'rootfsUrl', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.gitCommit)
                    obj.props_('git-commit') = p.Results.gitCommit;
                end
                if ~isempty(p.Results.rootfsHash)
                    obj.props_('rootfs-hash') = p.Results.rootfsHash;
                end
                if ~isempty(p.Results.rootfsUrl)
                    obj.props_('rootfs-url') = p.Results.rootfsUrl;
                end
            end
        end
        function result = get.gitCommit(obj)
            if ismethod(obj, 'get_gitCommit')
                result = obj.get_gitCommit();
            else
                if isKey(obj.props_, 'git-commit')
                    result = obj.props_('git-commit');
                else
                    result = [];
                end
            end
        end
        function obj = set.gitCommit(obj, value)
            obj.props_('git-commit') = value;
        end
        function result = get.rootfsHash(obj)
            if ismethod(obj, 'get_rootfsHash')
                result = obj.get_rootfsHash();
            else
                if isKey(obj.props_, 'rootfs-hash')
                    result = obj.props_('rootfs-hash');
                else
                    result = [];
                end
            end
        end
        function obj = set.rootfsHash(obj, value)
            obj.props_('rootfs-hash') = value;
        end
        function result = get.rootfsUrl(obj)
            if ismethod(obj, 'get_rootfsUrl')
                result = obj.get_rootfsUrl();
            else
                if isKey(obj.props_, 'rootfs-url')
                    result = obj.props_('rootfs-url');
                else
                    result = [];
                end
            end
        end
        function obj = set.rootfsUrl(obj, value)
            obj.props_('rootfs-url') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'git-commit')
                result('git-commit') = flywheel.ModelBase.serializeValue(obj.props_('git-commit'), 'char');
            end
            if isKey(obj.props_, 'rootfs-hash')
                result('rootfs-hash') = flywheel.ModelBase.serializeValue(obj.props_('rootfs-hash'), 'char');
            end
            if isKey(obj.props_, 'rootfs-url')
                result('rootfs-url') = flywheel.ModelBase.serializeValue(obj.props_('rootfs-url'), 'char');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'git-commit')
                result.gitCommit = obj.props_('git-commit');
            else
                result.gitCommit = [];
            end
            if isKey(obj.props_, 'rootfs-hash')
                result.rootfsHash = obj.props_('rootfs-hash');
            else
                result.rootfsHash = [];
            end
            if isKey(obj.props_, 'rootfs-url')
                result.rootfsUrl = obj.props_('rootfs-url');
            else
                result.rootfsUrl = [];
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
                if isKey(obj.props_, 'git-commit')
                    propList.gitCommit = obj.props_('git-commit');
                else
                    propList.gitCommit = [];
                end
                if isKey(obj.props_, 'rootfs-hash')
                    propList.rootfsHash = obj.props_('rootfs-hash');
                else
                    propList.rootfsHash = [];
                end
                if isKey(obj.props_, 'rootfs-url')
                    propList.rootfsUrl = obj.props_('rootfs-url');
                else
                    propList.rootfsUrl = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.GearExchange;
            if isfield(json, 'git0x2Dcommit')
                obj.props_('git-commit') = flywheel.ModelBase.deserializeValue(json.git0x2Dcommit, 'char');
            end
            if isfield(json, 'rootfs0x2Dhash')
                obj.props_('rootfs-hash') = flywheel.ModelBase.deserializeValue(json.rootfs0x2Dhash, 'char');
            end
            if isfield(json, 'rootfs0x2Durl')
                obj.props_('rootfs-url') = flywheel.ModelBase.deserializeValue(json.rootfs0x2Durl, 'char');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.GearExchange')
                    obj = flywheel.model.GearExchange(obj);
                end
                if isKey(obj.props_, 'git-commit')
                end
                if isKey(obj.props_, 'rootfs-hash')
                end
                if isKey(obj.props_, 'rootfs-url')
                end
            end
        end
    end
end
