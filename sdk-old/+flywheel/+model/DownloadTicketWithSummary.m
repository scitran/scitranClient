% DownloadTicketWithSummary - A ticket for non-authenticated download of files, including a summary
%
% DownloadTicketWithSummary Properties:
%    ticket   - The ticket to use to perform the actual download
%    fileCnt  - The number of files that will be included in the download
%    size     - An estimated total number of bytes that will be downloaded
%
% DownloadTicketWithSummary Methods:
%    toJson - Convert the object to a Map that can be encoded to json
%    struct - Convert the object to a struct
    classdef DownloadTicketWithSummary < flywheel.ModelBase
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties (Constant)
        propertyMap = containers.Map({ 'ticket', 'fileCnt', 'size' }, ...
            { 'ticket', 'file_cnt', 'size' });
    end
    properties(Dependent)
        ticket
        fileCnt
        size
    end
    methods
        function obj = DownloadTicketWithSummary(varargin)
            obj@flywheel.ModelBase(flywheel.model.DownloadTicketWithSummary.propertyMap);

            % Allow empty object creation
            if length(varargin)
                p = inputParser;
                addParameter(p, 'ticket', []);
                addParameter(p, 'fileCnt', []);
                addParameter(p, 'size', []);

                parse(p, varargin{:});

                if ~isempty(p.Results.ticket)
                    obj.props_('ticket') = p.Results.ticket;
                end
                if ~isempty(p.Results.fileCnt)
                    obj.props_('file_cnt') = p.Results.fileCnt;
                end
                if ~isempty(p.Results.size)
                    obj.props_('size') = p.Results.size;
                end
            end
        end
        function result = get.ticket(obj)
            if ismethod(obj, 'get_ticket')
                result = obj.get_ticket();
            else
                if isKey(obj.props_, 'ticket')
                    result = obj.props_('ticket');
                else
                    result = [];
                end
            end
        end
        function obj = set.ticket(obj, value)
            obj.props_('ticket') = value;
        end
        function result = get.fileCnt(obj)
            if ismethod(obj, 'get_fileCnt')
                result = obj.get_fileCnt();
            else
                if isKey(obj.props_, 'file_cnt')
                    result = obj.props_('file_cnt');
                else
                    result = [];
                end
            end
        end
        function obj = set.fileCnt(obj, value)
            obj.props_('file_cnt') = value;
        end
        function result = get.size(obj)
            if ismethod(obj, 'get_size')
                result = obj.get_size();
            else
                if isKey(obj.props_, 'size')
                    result = obj.props_('size');
                else
                    result = [];
                end
            end
        end
        function obj = set.size(obj, value)
            obj.props_('size') = value;
        end
        function result = toJson(obj)
            result = containers.Map;
            if isKey(obj.props_, 'ticket')
                result('ticket') = flywheel.ModelBase.serializeValue(obj.props_('ticket'), 'char');
            end
            if isKey(obj.props_, 'file_cnt')
                result('file_cnt') = flywheel.ModelBase.serializeValue(obj.props_('file_cnt'), 'integer');
            end
            if isKey(obj.props_, 'size')
                result('size') = flywheel.ModelBase.serializeValue(obj.props_('size'), 'integer');
            end
        end
        function result = struct(obj)
            result = struct;

            if isKey(obj.props_, 'ticket')
                result.ticket = obj.props_('ticket');
            else
                result.ticket = [];
            end
            if isKey(obj.props_, 'file_cnt')
                result.fileCnt = obj.props_('file_cnt');
            else
                result.fileCnt = [];
            end
            if isKey(obj.props_, 'size')
                result.size = obj.props_('size');
            else
                result.size = [];
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
                if isKey(obj.props_, 'ticket')
                    propList.ticket = obj.props_('ticket');
                else
                    propList.ticket = [];
                end
                if isKey(obj.props_, 'file_cnt')
                    propList.fileCnt = obj.props_('file_cnt');
                else
                    propList.fileCnt = [];
                end
                if isKey(obj.props_, 'size')
                    propList.size = obj.props_('size');
                else
                    propList.size = [];
                end
                prpgrp = matlab.mixin.util.PropertyGroup(propList);
            end
        end
    end
    methods(Static)
        function obj = fromJson(json, context)
            obj =  flywheel.model.DownloadTicketWithSummary;
            if isfield(json, 'ticket')
                obj.props_('ticket') = flywheel.ModelBase.deserializeValue(json.ticket, 'char');
            end
            if isfield(json, 'file_cnt')
                obj.props_('file_cnt') = flywheel.ModelBase.deserializeValue(json.file_cnt, 'integer');
            end
            if isfield(json, 'size')
                obj.props_('size') = flywheel.ModelBase.deserializeValue(json.size, 'integer');
            end
            if isprop(obj, 'context_')
                obj.setContext_(context);
            end
        end
        function obj = ensureIsInstance(obj)
            if ~isempty(obj)
                % Realistically, we only convert structs
                if ~isa(obj, 'flywheel.model.DownloadTicketWithSummary')
                    obj = flywheel.model.DownloadTicketWithSummary(obj);
                end
                if isKey(obj.props_, 'ticket')
                end
                if isKey(obj.props_, 'file_cnt')
                end
                if isKey(obj.props_, 'size')
                end
            end
        end
    end
end
