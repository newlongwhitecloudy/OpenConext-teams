/*
 * Copyright 2012 SURFnet bv, The Netherlands
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package nl.surfnet.coin.teams.control;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import nl.surfnet.coin.teams.domain.GroupProviderUserOauth;

/**
 * Tests for {@link ExternalGroupController}
 */
public class ExternalGroupControllerTest extends AbstractControllerTest {
  private ExternalGroupController controller;

  @Before
  public void setUp() throws Exception {
    super.setup();
    controller = new ExternalGroupController();

  }

  @Test
  public void testGetMyExternalGroupMembers() throws Exception {

  }

  private List<GroupProviderUserOauth> getOAuths() {
    List<GroupProviderUserOauth> oAuths = new ArrayList<GroupProviderUserOauth>();
    GroupProviderUserOauth oauth = new GroupProviderUserOauth(getMember().getId(), "hz", "token", "secret");
    oAuths.add(oauth);
    return oAuths;
  }
}
