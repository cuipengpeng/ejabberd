%%%----------------------------------------------------------------------
%%%
%%% ejabberd, Copyright (C) 2002-2018   ProcessOne
%%%
%%% This program is free software; you can redistribute it and/or
%%% modify it under the terms of the GNU General Public License as
%%% published by the Free Software Foundation; either version 2 of the
%%% License, or (at your option) any later version.
%%%
%%% This program is distributed in the hope that it will be useful,
%%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
%%% General Public License for more details.
%%%
%%% You should have received a copy of the GNU General Public License along
%%% with this program; if not, write to the Free Software Foundation, Inc.,
%%% 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
%%%
%%%----------------------------------------------------------------------

-type matchspec_atom() :: '_' | '$1' | '$2' | '$3' | '$4'.
-record(carboncopy, {us       :: {binary(), binary()} | matchspec_atom(), 
		     resource :: binary() | matchspec_atom(),
		     version  :: binary() | matchspec_atom(),
		     node = node() :: node() | matchspec_atom()}).

-define(CARBONCOPY_CACHE, carboncopy_cache).
