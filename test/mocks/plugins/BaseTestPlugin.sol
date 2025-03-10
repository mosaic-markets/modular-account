// This file is part of Modular Account.
//
// Copyright 2024 Alchemy Insights, Inc.
//
// SPDX-License-Identifier: GPL-3.0-or-later
//
// This program is free software: you can redistribute it and/or modify it under the terms of the GNU General
// Public License as published by the Free Software Foundation, either version 3 of the License, or (at your
// option) any later version.
//
// This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the
// implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
// more details.
//
// You should have received a copy of the GNU General Public License along with this program. If not, see
// <https://www.gnu.org/licenses/>.

pragma solidity ^0.8.22;

import {PluginMetadata} from "modular-account-libs/interfaces/IPlugin.sol";

import {BasePlugin} from "../../../src/plugins/BasePlugin.sol";

contract BaseTestPlugin is BasePlugin {
    // Don't need to implement this in each context
    function pluginMetadata() external pure virtual override returns (PluginMetadata memory) {
        revert NotImplemented(msg.sig, 0);
    }
}
