% UsersApi - User operations
%
% UsersApi Properties:
%    apiClient - ApiClient instance
%
% UsersApi Methods
%    addUser               - Add a new user
%    deleteUser            - Delete a user
%    getAllUsers           - Return a list of all users
%    getCurrentUser        - Get information about the current user
%    getCurrentUserAvatar  - Get the avatar of the current user
%    getCurrentUserInfo    - Get info of the current user
%    getCurrentUserJobs    - Return list of jobs created by the current user
%    getUser               - Get information about the specified user
%    getUserAcquisitions   - Get all acquisitions that belong to the given user.
%    getUserAvatar         - Get the avatar of the specified user
%    getUserCollections    - Get all collections that belong to the given user.
%    getUserGroups         - List all groups the specified user is a member of
%    getUserProjects       - Get all projects that belong to the given user.
%    getUserSessions       - Get all sessions that belong to the given user.
%    modifyCurrentUserInfo - Update or replace info for the current user.
%    modifyUser            - Update the specified user
classdef UsersApi < handle
    % NOTE: This file is auto generated by the swagger code generator program.
    % Do not edit the file manually.
    properties
        apiClient
        context_
    end
    methods
        function obj = UsersApi(apiClient, context)
            obj.apiClient = apiClient;
            obj.context_ = context;
        end

        function [returnData, resp] = addUser(obj, body, varargin)
            % Add a new user
            % body (User)
            % returns: [CommonObjectCreated, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'body');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, body, varargin{:});

            % Path parameters
            pathParams = {};

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = flywheel.model.User.ensureIsInstance(x__inp.Results.body);
            body = flywheel.ApiClient.encodeJson(body.toJson());

            resp = obj.apiClient.callApi('POST', '/users', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.CommonObjectCreated.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = deleteUser(obj, userId, varargin)
            % Delete a user
            % userId (char)
            % returns: [CommonDeletedCount, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'userId');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, userId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.userId)
                pathParams = [pathParams, 'UserId', x__inp.Results.userId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('DELETE', '/users/{UserId}', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.CommonDeletedCount.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getAllUsers(obj, varargin)
            % Return a list of all users
            % returns: [vector[User], resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, varargin{:});

            % Path parameters
            pathParams = {};

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/users', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.ModelBase.cellmap(@(x) flywheel.model.User.fromJson(x, obj.context_), json);
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getCurrentUser(obj, varargin)
            % Get information about the current user
            % returns: [User, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, varargin{:});

            % Path parameters
            pathParams = {};

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/users/self', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.User.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getCurrentUserAvatar(obj, varargin)
            % Get the avatar of the current user
            % returns: [none, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, varargin{:});

            % Path parameters
            pathParams = {};

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/users/self/avatar', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getCurrentUserInfo(obj, varargin)
            % Get info of the current user
            % fields (char):Get only the specified fields from user's info. Accept multiple fields separated by comma. 
            % returns: [none, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addParameter(x__inp, 'fields', []);
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, varargin{:});

            % Path parameters
            pathParams = {};

            % Query parameters
            queryParams = {};
            if ~isempty(x__inp.Results.fields)
                queryParams = [queryParams, 'fields', flywheel.ApiClient.castParam(x__inp.Results.fields, 'char')];
            end

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/users/self/info', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getCurrentUserJobs(obj, varargin)
            % Return list of jobs created by the current user
            % gear (char):Gear name. Get only the jobs which are related to a specific gear. 
            % returns: [UserJobsOutput, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addParameter(x__inp, 'gear', []);
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, varargin{:});

            % Path parameters
            pathParams = {};

            % Query parameters
            queryParams = {};
            if ~isempty(x__inp.Results.gear)
                queryParams = [queryParams, 'gear', flywheel.ApiClient.castParam(x__inp.Results.gear, 'char')];
            end

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/users/self/jobs', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.UserJobsOutput.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getUser(obj, userId, varargin)
            % Get information about the specified user
            % userId (char)
            % returns: [User, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'userId');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, userId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.userId)
                pathParams = [pathParams, 'UserId', x__inp.Results.userId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/users/{UserId}', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.User.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getUserAcquisitions(obj, userId, varargin)
            % Get all acquisitions that belong to the given user.
            % userId (char)
            % returns: [vector[Acquisition], resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'userId');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, userId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.userId)
                pathParams = [pathParams, 'UserId', x__inp.Results.userId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/users/{UserId}/acquisitions', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.ModelBase.cellmap(@(x) flywheel.model.Acquisition.fromJson(x, obj.context_), json);
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getUserAvatar(obj, userId, varargin)
            % Get the avatar of the specified user
            % userId (char)
            % returns: [none, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'userId');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, userId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.userId)
                pathParams = [pathParams, 'UserId', x__inp.Results.userId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/users/{UserId}/avatar', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getUserCollections(obj, userId, varargin)
            % Get all collections that belong to the given user.
            % userId (char)
            % returns: [vector[Collection], resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'userId');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, userId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.userId)
                pathParams = [pathParams, 'UserId', x__inp.Results.userId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/users/{UserId}/collections', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.ModelBase.cellmap(@(x) flywheel.model.Collection.fromJson(x, obj.context_), json);
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getUserGroups(obj, userId, varargin)
            % List all groups the specified user is a member of
            % userId (char)
            % returns: [vector[Group], resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'userId');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, userId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.userId)
                pathParams = [pathParams, 'UserId', x__inp.Results.userId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/users/{UserId}/groups', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.ModelBase.cellmap(@(x) flywheel.model.Group.fromJson(x, obj.context_), json);
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getUserProjects(obj, userId, varargin)
            % Get all projects that belong to the given user.
            % userId (char)
            % returns: [vector[Project], resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'userId');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, userId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.userId)
                pathParams = [pathParams, 'UserId', x__inp.Results.userId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/users/{UserId}/projects', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.ModelBase.cellmap(@(x) flywheel.model.Project.fromJson(x, obj.context_), json);
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = getUserSessions(obj, userId, varargin)
            % Get all sessions that belong to the given user.
            % userId (char)
            % returns: [vector[Session], resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'userId');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, userId, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.userId)
                pathParams = [pathParams, 'UserId', x__inp.Results.userId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = {};

            resp = obj.apiClient.callApi('GET', '/users/{UserId}/sessions', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.ModelBase.cellmap(@(x) flywheel.model.Session.fromJson(x, obj.context_), json);
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = modifyCurrentUserInfo(obj, body, varargin)
            % Update or replace info for the current user.
            % body (InfoUpdateInput)
            % returns: [none, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'body');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, body, varargin{:});

            % Path parameters
            pathParams = {};

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = flywheel.model.InfoUpdateInput.ensureIsInstance(x__inp.Results.body);
            body = flywheel.ApiClient.encodeJson(body.toJson());

            resp = obj.apiClient.callApi('POST', '/users/self/info', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                otherwise
                    returnData = [];
            end
        end

        function [returnData, resp] = modifyUser(obj, userId, body, varargin)
            % Update the specified user
            % userId (char)
            % body (User):Accepts an object matching the User type except all fields are optional 
            % returns: [CommonModifiedCount, resp]

            x__inp = inputParser;
            x__inp.StructExpand = false;
            addRequired(x__inp, 'userId');
            addRequired(x__inp, 'body');
            addParameter(x__inp, 'DumpResponseData', false);
            parse(x__inp, userId, body, varargin{:});

            % Path parameters
            pathParams = {};
            if ~isempty(x__inp.Results.userId)
                pathParams = [pathParams, 'UserId', x__inp.Results.userId];
            end

            % Query parameters
            queryParams = {};

            % Header parameters
            headers = {};

            % Form parameters
            formParams = {};
            files = {};

            % Body (as JSON)
            body = flywheel.model.User.ensureIsInstance(x__inp.Results.body);
            body = flywheel.ApiClient.encodeJson(body.toJson());

            resp = obj.apiClient.callApi('PUT', '/users/{UserId}', ...
                pathParams, queryParams, headers, body, formParams, files);

            status = resp.getStatusCode();

            switch num2str(status)
                case '200'
                    if x__inp.Results.DumpResponseData
                        x__respData = resp.getBodyAsString();
                        disp(x__respData);
                    end
                    json = flywheel.ApiClient.getResponseJson(resp);
                    returnData = flywheel.model.CommonModifiedCount.fromJson(json, obj.context_);
                    if ~isempty(returnData)
                        returnData = returnData.returnValue();
                    end
                otherwise
                    returnData = [];
            end
        end

    end
end
