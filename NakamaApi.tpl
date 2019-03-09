extends HTTPRequest

# coding: utf-8

"""
    Nakama API v2

    No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

    OpenAPI spec version: 2.0
    Contact: hello@heroiclabs.com
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


export(String) var private_key
export(String) var game_id
export(String) var base_url
export(bool) var ssl_validate_domain
export(bool) var validate

var username_cache
var token_cache
var request_type

var busy = false

@include "model/model_api.gd.inc"


"""Add friends by ID or username to a user's account.

"""

signal api_add_friends(success)

func add_friends(kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/friend', {  }, {  }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Add users to a group.

:param String group_id: The group to add users to. (required)
"""

signal api_add_group_users(success)

func add_group_users(__String__group_id, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/group/{group_id}/add', {  }, { group_id=group_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Authenticate a user with a custom id against the server.

:param ApiAccountCustom body: The custom account details. (required)
:param bool create: Register the account if the user does not already exist.
:param String username: Set the username on the account at register. Must be unique.
"""

signal api_authenticate_custom(success)

func authenticate_custom(__ApiAccountCustom__body, kwargs={}):
    if busy: return
    busy = true
    var create = kwargs['create']
    var username = kwargs['username']
    var req = compose_req('POST', '/v2/account/authenticate/custom', { create=create, username=username }, {  }, {  }, {  }, { __ApiAccountCustom__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Authenticate a user with a device id against the server.

:param ApiAccountDevice body: The device account details. (required)
:param bool create: Register the account if the user does not already exist.
:param String username: Set the username on the account at register. Must be unique.
"""

signal api_authenticate_device(success)

func authenticate_device(__ApiAccountDevice__body, kwargs={}):
    if busy: return
    busy = true
    var create = kwargs['create']
    var username = kwargs['username']
    var req = compose_req('POST', '/v2/account/authenticate/device', { create=create, username=username }, {  }, {  }, {  }, { __ApiAccountDevice__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Authenticate a user with an email+password against the server.

:param ApiAccountEmail body: The email account details. (required)
:param bool create: Register the account if the user does not already exist.
:param String username: Set the username on the account at register. Must be unique.
"""

signal api_authenticate_email(success)

func authenticate_email(__ApiAccountEmail__body, kwargs={}):
    if busy: return
    busy = true
    var create = kwargs['create']
    var username = kwargs['username']
    var req = compose_req('POST', '/v2/account/authenticate/email', { create=create, username=username }, {  }, {  }, {  }, { __ApiAccountEmail__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Authenticate a user with a Facebook OAuth token against the server.

:param ApiAccountFacebook body: The Facebook account details. (required)
:param bool create: Register the account if the user does not already exist.
:param String username: Set the username on the account at register. Must be unique.
:param bool _sync: Import Facebook friends for the user.
"""

signal api_authenticate_facebook(success)

func authenticate_facebook(__ApiAccountFacebook__body, kwargs={}):
    if busy: return
    busy = true
    var create = kwargs['create']
    var username = kwargs['username']
    var _sync = kwargs['_sync']
    var req = compose_req('POST', '/v2/account/authenticate/facebook', { create=create, username=username, _sync=_sync }, {  }, {  }, {  }, { __ApiAccountFacebook__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Authenticate a user with Apple's GameCenter against the server.

:param ApiAccountGameCenter body: The Game Center account details. (required)
:param bool create: Register the account if the user does not already exist.
:param String username: Set the username on the account at register. Must be unique.
"""

signal api_authenticate_game_center(success)

func authenticate_game_center(__ApiAccountGameCenter__body, kwargs={}):
    if busy: return
    busy = true
    var create = kwargs['create']
    var username = kwargs['username']
    var req = compose_req('POST', '/v2/account/authenticate/gamecenter', { create=create, username=username }, {  }, {  }, {  }, { __ApiAccountGameCenter__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Authenticate a user with Google against the server.

:param ApiAccountGoogle body: The Google account details. (required)
:param bool create: Register the account if the user does not already exist.
:param String username: Set the username on the account at register. Must be unique.
"""

signal api_authenticate_google(success)

func authenticate_google(__ApiAccountGoogle__body, kwargs={}):
    if busy: return
    busy = true
    var create = kwargs['create']
    var username = kwargs['username']
    var req = compose_req('POST', '/v2/account/authenticate/google', { create=create, username=username }, {  }, {  }, {  }, { __ApiAccountGoogle__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Authenticate a user with Steam against the server.

:param ApiAccountSteam body: The Steam account details. (required)
:param bool create: Register the account if the user does not already exist.
:param String username: Set the username on the account at register. Must be unique.
"""

signal api_authenticate_steam(success)

func authenticate_steam(__ApiAccountSteam__body, kwargs={}):
    if busy: return
    busy = true
    var create = kwargs['create']
    var username = kwargs['username']
    var req = compose_req('POST', '/v2/account/authenticate/steam', { create=create, username=username }, {  }, {  }, {  }, { __ApiAccountSteam__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Block one or more users by ID or username.

"""

signal api_block_friends(success)

func block_friends(kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/friend/block', {  }, {  }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Create a new group with the current user as the owner.

:param ApiCreateGroupRequest body: (required)
"""

signal api_create_group(success)

func create_group(__ApiCreateGroupRequest__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/group', {  }, {  }, {  }, {  }, { __ApiCreateGroupRequest__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Delete one or more users by ID or username.

:param List[String] ids: The account id of a user.
:param List[String] usernames: The account username of a user.
"""

signal api_delete_friends(success)

func delete_friends(kwargs={}):
    if busy: return
    busy = true
    var ids = kwargs['ids']
    var usernames = kwargs['usernames']
    var req = compose_req('DELETE', '/v2/friend', { ids=ids, usernames=usernames }, {  }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Delete a group by ID.

:param String group_id: The id of a group. (required)
"""

signal api_delete_group(success)

func delete_group(__String__group_id, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('DELETE', '/v2/group/{group_id}', {  }, { group_id=group_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Delete a leaderboard record.

:param String leaderboard_id: The leaderboard ID to delete from. (required)
"""

signal api_delete_leaderboard_record(success)

func delete_leaderboard_record(__String__leaderboard_id, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('DELETE', '/v2/leaderboard/{leaderboard_id}', {  }, { leaderboard_id=leaderboard_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Delete one or more notifications for the current user.

:param List[String] ids: The id of notifications.
"""

signal api_delete_notifications(success)

func delete_notifications(kwargs={}):
    if busy: return
    busy = true
    var ids = kwargs['ids']
    var req = compose_req('DELETE', '/v2/notification', { ids=ids }, {  }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Delete one or more objects by ID or username.

:param ApiDeleteStorageObjectsRequest body: (required)
"""

signal api_delete_storage_objects(success)

func delete_storage_objects(__ApiDeleteStorageObjectsRequest__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('PUT', '/v2/storage/delete', {  }, {  }, {  }, {  }, { __ApiDeleteStorageObjectsRequest__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Fetch the current user's account.

"""

signal api_get_account(success)

func get_account(kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('GET', '/v2/account', {  }, {  }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Fetch zero or more users by ID and/or username.

:param List[String] ids: The account id of a user.
:param List[String] usernames: The account username of a user.
:param List[String] facebook_ids: The Facebook ID of a user.
"""

signal api_get_users(success)

func get_users(kwargs={}):
    if busy: return
    busy = true
    var ids = kwargs['ids']
    var usernames = kwargs['usernames']
    var facebook_ids = kwargs['facebook_ids']
    var req = compose_req('GET', '/v2/user', { ids=ids, usernames=usernames, facebook_ids=facebook_ids }, {  }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""A healthcheck which load balancers can use to check the service.

"""

signal api_healthcheck(success)

func healthcheck(kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('GET', '/healthcheck', {  }, {  }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Import Facebook friends and add them to a user's account.

:param ApiAccountFacebook body: The Facebook account details. (required)
:param bool reset: Reset the current user's friends list.
"""

signal api_import_facebook_friends(success)

func import_facebook_friends(__ApiAccountFacebook__body, kwargs={}):
    if busy: return
    busy = true
    var reset = kwargs['reset']
    var req = compose_req('POST', '/v2/friend/facebook', { reset=reset }, {  }, {  }, {  }, { __ApiAccountFacebook__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Immediately join an open group, or request to join a closed one.

:param String group_id: The group ID to join. The group must already exist. (required)
"""

signal api_join_group(success)

func join_group(__String__group_id, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/group/{group_id}/join', {  }, { group_id=group_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Attempt to join an open and running tournament.

:param String tournament_id: The ID of the tournament to join. The tournament must already exist. (required)
"""

signal api_join_tournament(success)

func join_tournament(__String__tournament_id, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/tournament/{tournament_id}/join', {  }, { tournament_id=tournament_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Kick a set of users from a group.

:param String group_id: The group ID to kick from. (required)
"""

signal api_kick_group_users(success)

func kick_group_users(__String__group_id, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/group/{group_id}/kick', {  }, { group_id=group_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Leave a group the user is a member of.

:param String group_id: The group ID to leave. (required)
"""

signal api_leave_group(success)

func leave_group(__String__group_id, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/group/{group_id}/leave', {  }, { group_id=group_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Add a custom ID to the social profiles on the current user's account.

:param ApiAccountCustom body: (required)
"""

signal api_link_custom(success)

func link_custom(__ApiAccountCustom__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/account/link/custom', {  }, {  }, {  }, {  }, { __ApiAccountCustom__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Add a device ID to the social profiles on the current user's account.

:param ApiAccountDevice body: (required)
"""

signal api_link_device(success)

func link_device(__ApiAccountDevice__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/account/link/device', {  }, {  }, {  }, {  }, { __ApiAccountDevice__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Add an email+password to the social profiles on the current user's account.

:param ApiAccountEmail body: (required)
"""

signal api_link_email(success)

func link_email(__ApiAccountEmail__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/account/link/email', {  }, {  }, {  }, {  }, { __ApiAccountEmail__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Add Facebook to the social profiles on the current user's account.

:param ApiAccountFacebook body: The Facebook account details. (required)
:param bool _sync: Import Facebook friends for the user.
"""

signal api_link_facebook(success)

func link_facebook(__ApiAccountFacebook__body, kwargs={}):
    if busy: return
    busy = true
    var _sync = kwargs['_sync']
    var req = compose_req('POST', '/v2/account/link/facebook', { _sync=_sync }, {  }, {  }, {  }, { __ApiAccountFacebook__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Add Apple's GameCenter to the social profiles on the current user's account.

:param ApiAccountGameCenter body: (required)
"""

signal api_link_game_center(success)

func link_game_center(__ApiAccountGameCenter__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/account/link/gamecenter', {  }, {  }, {  }, {  }, { __ApiAccountGameCenter__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Add Google to the social profiles on the current user's account.

:param ApiAccountGoogle body: (required)
"""

signal api_link_google(success)

func link_google(__ApiAccountGoogle__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/account/link/google', {  }, {  }, {  }, {  }, { __ApiAccountGoogle__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Add Steam to the social profiles on the current user's account.

:param ApiAccountSteam body: (required)
"""

signal api_link_steam(success)

func link_steam(__ApiAccountSteam__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/account/link/steam', {  }, {  }, {  }, {  }, { __ApiAccountSteam__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""List a channel's message history.

:param String channel_id: The channel ID to list from. (required)
:param int limit: Max number of records to return. Between 1 and 100.
:param bool forward: True if listing should be older messages to newer, false if reverse.
:param String _cursor: A pagination cursor, if any.
"""

signal api_list_channel_messages(success)

func list_channel_messages(__String__channel_id, kwargs={}):
    if busy: return
    busy = true
    var limit = kwargs['limit']
    var forward = kwargs['forward']
    var _cursor = kwargs['_cursor']
    var req = compose_req('GET', '/v2/channel/{channel_id}', { limit=limit, forward=forward, _cursor=_cursor }, { channel_id=channel_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""List all friends for the current user.

"""

signal api_list_friends(success)

func list_friends(kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('GET', '/v2/friend', {  }, {  }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""List all users that are part of a group.

:param String group_id: The group ID to list from. (required)
"""

signal api_list_group_users(success)

func list_group_users(__String__group_id, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('GET', '/v2/group/{group_id}/user', {  }, { group_id=group_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""List groups based on given filters.

:param String name: List groups that contain this value in their names.
:param String _cursor: Optional pagination cursor.
:param int limit: Max number of groups to return. Between 1 and 100.
"""

signal api_list_groups(success)

func list_groups(kwargs={}):
    if busy: return
    busy = true
    var name = kwargs['name']
    var _cursor = kwargs['_cursor']
    var limit = kwargs['limit']
    var req = compose_req('GET', '/v2/group', { name=name, _cursor=_cursor, limit=limit }, {  }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""List leaderboard records.

:param String leaderboard_id: The ID of the leaderboard to list for. (required)
:param List[String] owner_ids: One or more owners to retrieve records for.
:param int limit: Max number of records to return. Between 1 and 100.
:param String _cursor: A next or previous page cursor.
"""

signal api_list_leaderboard_records(success)

func list_leaderboard_records(__String__leaderboard_id, kwargs={}):
    if busy: return
    busy = true
    var owner_ids = kwargs['owner_ids']
    var limit = kwargs['limit']
    var _cursor = kwargs['_cursor']
    var req = compose_req('GET', '/v2/leaderboard/{leaderboard_id}', { owner_ids=owner_ids, limit=limit, _cursor=_cursor }, { leaderboard_id=leaderboard_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""List leaderboard records that belong to a user.

:param String leaderboard_id: The ID of the tournament to list for. (required)
:param String owner_id: The owner to retrieve records around. (required)
:param int limit: Max number of records to return. Between 1 and 100.
"""

signal api_list_leaderboard_records_around_owner(success)

func list_leaderboard_records_around_owner(__String__leaderboard_id, __String__owner_id, kwargs={}):
    if busy: return
    busy = true
    var limit = kwargs['limit']
    var req = compose_req('GET', '/v2/leaderboard/{leaderboard_id}/owner/{owner_id}', { limit=limit }, { leaderboard_id=leaderboard_id, owner_id=owner_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Fetch list of running matches.

:param int limit: Limit the number of returned matches.
:param bool authoritative: Authoritative or relayed matches.
:param String label: Label filter.
:param int min_size: Minimum user count.
:param int max_size: Maximum user count.
:param String query: Arbitrary label query.
"""

signal api_list_matches(success)

func list_matches(kwargs={}):
    if busy: return
    busy = true
    var limit = kwargs['limit']
    var authoritative = kwargs['authoritative']
    var label = kwargs['label']
    var min_size = kwargs['min_size']
    var max_size = kwargs['max_size']
    var query = kwargs['query']
    var req = compose_req('GET', '/v2/match', { limit=limit, authoritative=authoritative, label=label, min_size=min_size, max_size=max_size, query=query }, {  }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Fetch list of notifications.

:param int limit: The number of notifications to get. Between 1 and 100.
:param String cacheable_cursor: A cursor to page through notifications. May be cached by clients to get from point in time forwards.
"""

signal api_list_notifications(success)

func list_notifications(kwargs={}):
    if busy: return
    busy = true
    var limit = kwargs['limit']
    var cacheable_cursor = kwargs['cacheable_cursor']
    var req = compose_req('GET', '/v2/notification', { limit=limit, cacheable_cursor=cacheable_cursor }, {  }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""List publicly readable storage objects in a given collection.

:param String collection: The collection which stores the object. (required)
:param String user_id: ID of the user.
:param int limit: The number of storage objects to list. Between 1 and 100.
:param String _cursor: The cursor to page through results from.
"""

signal api_list_storage_objects(success)

func list_storage_objects(__String__collection, kwargs={}):
    if busy: return
    busy = true
    var user_id = kwargs['user_id']
    var limit = kwargs['limit']
    var _cursor = kwargs['_cursor']
    var req = compose_req('GET', '/v2/storage/{collection}', { user_id=user_id, limit=limit, _cursor=_cursor }, { collection=collection }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""List publicly readable storage objects in a given collection.

:param String collection: The collection which stores the object. (required)
:param String user_id: ID of the user. (required)
:param int limit: The number of storage objects to list. Between 1 and 100.
:param String _cursor: The cursor to page through results from.
"""

signal api_list_storage_objects2(success)

func list_storage_objects2(__String__collection, __String__user_id, kwargs={}):
    if busy: return
    busy = true
    var limit = kwargs['limit']
    var _cursor = kwargs['_cursor']
    var req = compose_req('GET', '/v2/storage/{collection}/{user_id}', { limit=limit, _cursor=_cursor }, { collection=collection, user_id=user_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""List tournament records.

:param String tournament_id: The ID of the tournament to list for. (required)
:param List[String] owner_ids: One or more owners to retrieve records for.
:param int limit: Max number of records to return. Between 1 and 100.
:param String _cursor: A next or previous page cursor.
"""

signal api_list_tournament_records(success)

func list_tournament_records(__String__tournament_id, kwargs={}):
    if busy: return
    busy = true
    var owner_ids = kwargs['owner_ids']
    var limit = kwargs['limit']
    var _cursor = kwargs['_cursor']
    var req = compose_req('GET', '/v2/tournament/{tournament_id}', { owner_ids=owner_ids, limit=limit, _cursor=_cursor }, { tournament_id=tournament_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""List tournament records for a given owner.

:param String tournament_id: The ID of the tournament to list for. (required)
:param String owner_id: The owner to retrieve records around. (required)
:param int limit: Max number of records to return. Between 1 and 100.
"""

signal api_list_tournament_records_around_owner(success)

func list_tournament_records_around_owner(__String__tournament_id, __String__owner_id, kwargs={}):
    if busy: return
    busy = true
    var limit = kwargs['limit']
    var req = compose_req('GET', '/v2/tournament/{tournament_id}/owner/{owner_id}', { limit=limit }, { tournament_id=tournament_id, owner_id=owner_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""List current or upcoming tournaments.

:param int category_start: The start of the categories to include. Defaults to 0.
:param int category_end: The end of the categories to include. Defaults to 128.
:param int start_time: The start time for tournaments. Defaults to epoch.
:param int end_time: The end time for tournaments. Defaults to +1 year from current Unix time.
:param int limit: Max number of records to return. Between 1 and 100.
:param String _cursor: A next page cursor for listings (optional).
"""

signal api_list_tournaments(success)

func list_tournaments(kwargs={}):
    if busy: return
    busy = true
    var category_start = kwargs['category_start']
    var category_end = kwargs['category_end']
    var start_time = kwargs['start_time']
    var end_time = kwargs['end_time']
    var limit = kwargs['limit']
    var _cursor = kwargs['_cursor']
    var req = compose_req('GET', '/v2/tournament', { category_start=category_start, category_end=category_end, start_time=start_time, end_time=end_time, limit=limit, _cursor=_cursor }, {  }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""List groups the current user belongs to.

:param String user_id: ID of the user. (required)
"""

signal api_list_user_groups(success)

func list_user_groups(__String__user_id, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('GET', '/v2/user/{user_id}/group', {  }, { user_id=user_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Promote a set of users in a group to the next role up.

:param String group_id: The group ID to promote in. (required)
"""

signal api_promote_group_users(success)

func promote_group_users(__String__group_id, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/group/{group_id}/promote', {  }, { group_id=group_id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Get storage objects.

:param ApiReadStorageObjectsRequest body: (required)
"""

signal api_read_storage_objects(success)

func read_storage_objects(__ApiReadStorageObjectsRequest__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/storage', {  }, {  }, {  }, {  }, { __ApiReadStorageObjectsRequest__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Execute a Lua function on the server.

:param String id: The identifier of the function. (required)
:param String body: The payload of the function which must be a JSON object. (required)
"""

signal api_rpc_func(success)

func rpc_func(__String__id, __String__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/rpc/{id}', {  }, { id=id }, {  }, {  }, { __String__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Execute a Lua function on the server.

:param String id: The identifier of the function. (required)
:param String payload: The payload of the function which must be a JSON object.
:param String http_key: The authentication key used when executed as a non-client HTTP request.
"""

signal api_rpc_func2(success)

func rpc_func2(__String__id, kwargs={}):
    if busy: return
    busy = true
    var payload = kwargs['payload']
    var http_key = kwargs['http_key']
    var req = compose_req('GET', '/v2/rpc/{id}', { payload=payload, http_key=http_key }, { id=id }, {  }, {  }, {  })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Remove the custom ID from the social profiles on the current user's account.

:param ApiAccountCustom body: (required)
"""

signal api_unlink_custom(success)

func unlink_custom(__ApiAccountCustom__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/account/unlink/custom', {  }, {  }, {  }, {  }, { __ApiAccountCustom__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Remove the device ID from the social profiles on the current user's account.

:param ApiAccountDevice body: (required)
"""

signal api_unlink_device(success)

func unlink_device(__ApiAccountDevice__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/account/unlink/device', {  }, {  }, {  }, {  }, { __ApiAccountDevice__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Remove the email+password from the social profiles on the current user's account.

:param ApiAccountEmail body: (required)
"""

signal api_unlink_email(success)

func unlink_email(__ApiAccountEmail__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/account/unlink/email', {  }, {  }, {  }, {  }, { __ApiAccountEmail__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Remove Facebook from the social profiles on the current user's account.

:param ApiAccountFacebook body: (required)
"""

signal api_unlink_facebook(success)

func unlink_facebook(__ApiAccountFacebook__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/account/unlink/facebook', {  }, {  }, {  }, {  }, { __ApiAccountFacebook__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Remove Apple's GameCenter from the social profiles on the current user's account.

:param ApiAccountGameCenter body: (required)
"""

signal api_unlink_game_center(success)

func unlink_game_center(__ApiAccountGameCenter__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/account/unlink/gamecenter', {  }, {  }, {  }, {  }, { __ApiAccountGameCenter__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Remove Google from the social profiles on the current user's account.

:param ApiAccountGoogle body: (required)
"""

signal api_unlink_google(success)

func unlink_google(__ApiAccountGoogle__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/account/unlink/google', {  }, {  }, {  }, {  }, { __ApiAccountGoogle__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Remove Steam from the social profiles on the current user's account.

:param ApiAccountSteam body: (required)
"""

signal api_unlink_steam(success)

func unlink_steam(__ApiAccountSteam__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/account/unlink/steam', {  }, {  }, {  }, {  }, { __ApiAccountSteam__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Update fields in the current user's account.

:param ApiUpdateAccountRequest body: (required)
"""

signal api_update_account(success)

func update_account(__ApiUpdateAccountRequest__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('PUT', '/v2/account', {  }, {  }, {  }, {  }, { __ApiUpdateAccountRequest__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Update fields in a given group.

:param String group_id: The ID of the group to update. (required)
:param ApiUpdateGroupRequest body: (required)
"""

signal api_update_group(success)

func update_group(__String__group_id, __ApiUpdateGroupRequest__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('PUT', '/v2/group/{group_id}', {  }, { group_id=group_id }, {  }, {  }, { __ApiUpdateGroupRequest__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Write a record to a leaderboard.

:param String leaderboard_id: The ID of the leaderboard to write to. (required)
:param WriteLeaderboardRecordRequestLeaderboardRecordWrite body: Record input. (required)
"""

signal api_write_leaderboard_record(success)

func write_leaderboard_record(__String__leaderboard_id, __WriteLeaderboardRecordRequestLeaderboardRecordWrite__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('POST', '/v2/leaderboard/{leaderboard_id}', {  }, { leaderboard_id=leaderboard_id }, {  }, {  }, { __WriteLeaderboardRecordRequestLeaderboardRecordWrite__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Write objects into the storage engine.

:param ApiWriteStorageObjectsRequest body: (required)
"""

signal api_write_storage_objects(success)

func write_storage_objects(__ApiWriteStorageObjectsRequest__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('PUT', '/v2/storage', {  }, {  }, {  }, {  }, { __ApiWriteStorageObjectsRequest__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass


"""Write a record to a tournament.

:param String tournament_id: The tournament ID to write the record for. (required)
:param WriteTournamentRecordRequestTournamentRecordWrite body: Record input. (required)
"""

signal api_write_tournament_record(success)

func write_tournament_record(__String__tournament_id, __WriteTournamentRecordRequestTournamentRecordWrite__body, kwargs={}):
    if busy: return
    busy = true
    var req = compose_req('PUT', '/v2/tournament/{tournament_id}', {  }, { tournament_id=tournament_id }, {  }, {  }, { __WriteTournamentRecordRequestTournamentRecordWrite__dict })
    request(req.url, req.headers, ssl_validate_domain, req.method, req.data)
    pass





func compose_req(method, url, query_args, path_args, form_args, header_args, body_args, body = ""):
    var req = {}
    var final_url = base_url if base_url else ""

    # path arguments
    final_url += url.format(path_args)

    # query arguments
    if !query_args.empty():
        final_url += "?"
        for i in query_args:
            if query_args[i] != null:
                final_url += "%s=%s&" % [i, str(query_args[i]).percent_encode()]
    req.url = final_url
    if !body.empty() &&  !body_args.empty():
        print("Both body_args and body are non-empty. Preferring body.")
    if !body.empty():
        req.data = body
    elif !body_args.empty():
        req.data = var2str(body_args)
    req.headers = [
        # HTTP header `Accept`
        'Accept: application/json
        # HTTP header `Content-Type`
        'Content-Type: application/json
    ].append(header_args)
    # Authentication setting
    reg.auth_settings = []
    return req
    pass

func get_username():
    return username_cache
    pass

func get_user_token():
    return token_cache
    pass

func _on_HTTPRequest_request_completed( result, response_code, headers, body ):
    busy = false
    emit_signal('api_' + request_type, body.get_string_from_ascii())
    pass # replace with function body

func _init():
    var id = "123"
    var create = "create_arg"
    var username = "username_arg"
    var tournament_id = "23331"
    var req = compose_req('PUT', '/v2/tournament/{tournament_id}', {create=create, username=username}, {tournament_id=tournament_id}, {}, {}, {id=id})
    print(req)