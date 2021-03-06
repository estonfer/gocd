##########################################################################
# Copyright 2016 ThoughtWorks, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
##########################################################################

module Admin
  class AgentsController < ::ApplicationController
    include ApiV1::AuthenticationHelper

    layout 'single_page_app'
    before_action :check_user_and_401

    def index
      @view_title = 'Agents'
      @is_user_admin = security_service.isUserAdmin(current_user)
    end

    private

    helper_method :plugin_templates

  end

end
