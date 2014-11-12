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

-- Module      : Network.AWS.Redshift.RebootCluster
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Reboots a cluster. This action is taken as soon as possible. It results in
-- a momentary outage to the cluster, during which the cluster status is set
-- to rebooting. A cluster event is created when the reboot is completed. Any
-- pending cluster modifications (see ModifyCluster) are applied at this
-- reboot. For more information about managing clusters, go to Amazon Redshift
-- Clusters in the Amazon Redshift Management Guide.
module Network.AWS.Redshift.RebootCluster
    (
    -- * Request
      RebootClusterMessage
    -- ** Request constructor
    , rebootClusterMessage
    -- ** Request lenses
    , rcmClusterIdentifier

    -- * Response
    , RebootClusterResult
    -- ** Response constructor
    , rebootClusterResult
    -- ** Response lenses
    , rcrCluster
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.Redshift.Types

newtype RebootClusterMessage = RebootClusterMessage
    { _rcmClusterIdentifier :: Text
    } deriving (Eq, Ord, Show, Generic, Monoid, IsString)

-- | 'RebootClusterMessage' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'rcmClusterIdentifier' @::@ 'Text'
--
rebootClusterMessage :: Text -- ^ 'rcmClusterIdentifier'
                     -> RebootClusterMessage
rebootClusterMessage p1 = RebootClusterMessage
    { _rcmClusterIdentifier = p1
    }

-- | The cluster identifier.
rcmClusterIdentifier :: Lens' RebootClusterMessage Text
rcmClusterIdentifier =
    lens _rcmClusterIdentifier (\s a -> s { _rcmClusterIdentifier = a })

instance ToQuery RebootClusterMessage

instance ToPath RebootClusterMessage where
    toPath = const "/"

newtype RebootClusterResult = RebootClusterResult
    { _rcrCluster :: Maybe Cluster
    } deriving (Eq, Show, Generic)

-- | 'RebootClusterResult' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'rcrCluster' @::@ 'Maybe' 'Cluster'
--
rebootClusterResult :: RebootClusterResult
rebootClusterResult = RebootClusterResult
    { _rcrCluster = Nothing
    }

rcrCluster :: Lens' RebootClusterResult (Maybe Cluster)
rcrCluster = lens _rcrCluster (\s a -> s { _rcrCluster = a })

instance FromXML RebootClusterResult where
    fromXMLOptions = xmlOptions
    fromXMLRoot    = fromRoot "RebootClusterResult"

instance AWSRequest RebootClusterMessage where
    type Sv RebootClusterMessage = Redshift
    type Rs RebootClusterMessage = RebootClusterResult

    request  = post "RebootCluster"
    response = xmlResponse $ \h x -> RebootClusterResult
        <$> x %| "Cluster"
