{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

-- {-# OPTIONS_GHC -fno-warn-unused-imports #-}
-- {-# OPTIONS_GHC -fno-warn-unused-binds  #-} doesnt work if wall is used
{-# OPTIONS_GHC -w #-}

-- Module      : Network.AWS.AutoScaling.ResumeProcesses
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Resumes all suspended Auto Scaling processes for an Auto Scaling group. For
-- information on suspending and resuming Auto Scaling process, see Suspend
-- and Resume Auto Scaling Process.
module Network.AWS.AutoScaling.ResumeProcesses
    (
    -- * Request
      ResumeProcesses
    -- ** Request constructor
    , resumeProcesses
    -- ** Request lenses
    , rpAutoScalingGroupName
    , rpScalingProcesses

    -- * Response
    , ResumeProcessesResponse
    -- ** Response constructor
    , resumeProcessesResponse
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.AutoScaling.Types

data ResumeProcesses = ResumeProcesses
    { _rpAutoScalingGroupName :: Text
    , _rpScalingProcesses     :: [Text]
    } deriving (Eq, Ord, Show, Generic)

-- | 'ResumeProcesses' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'rpAutoScalingGroupName' @::@ 'Text'
--
-- * 'rpScalingProcesses' @::@ ['Text']
--
resumeProcesses :: Text -- ^ 'rpAutoScalingGroupName'
                -> ResumeProcesses
resumeProcesses p1 = ResumeProcesses
    { _rpAutoScalingGroupName = p1
    , _rpScalingProcesses     = mempty
    }

-- | The name or Amazon Resource Name (ARN) of the Auto Scaling group.
rpAutoScalingGroupName :: Lens' ResumeProcesses Text
rpAutoScalingGroupName =
    lens _rpAutoScalingGroupName (\s a -> s { _rpAutoScalingGroupName = a })

-- | The processes that you want to suspend or resume, which can include one
-- or more of the following: Launch Terminate HealthCheck ReplaceUnhealthy
-- AZRebalance AlarmNotification ScheduledActions AddToLoadBalancer To
-- suspend all process types, omit this parameter.
rpScalingProcesses :: Lens' ResumeProcesses [Text]
rpScalingProcesses =
    lens _rpScalingProcesses (\s a -> s { _rpScalingProcesses = a })

instance ToQuery ResumeProcesses

instance ToPath ResumeProcesses where
    toPath = const "/"

data ResumeProcessesResponse = ResumeProcessesResponse
    deriving (Eq, Ord, Show, Generic)

-- | 'ResumeProcessesResponse' constructor.
resumeProcessesResponse :: ResumeProcessesResponse
resumeProcessesResponse = ResumeProcessesResponse

instance FromXML ResumeProcessesResponse where
    fromXMLOptions = xmlOptions
    fromXMLRoot    = fromRoot "ResumeProcessesResponse"

instance AWSRequest ResumeProcesses where
    type Sv ResumeProcesses = AutoScaling
    type Rs ResumeProcesses = ResumeProcessesResponse

    request  = post "ResumeProcesses"
    response = nullaryResponse ResumeProcessesResponse
