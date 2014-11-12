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

-- Module      : Network.AWS.CloudSearch.DescribeServiceAccessPolicies
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Gets information about the access policies that control access to the
-- domain's document and search endpoints. By default, shows the configuration
-- with any pending changes. Set the Deployed option to true to show the
-- active configuration and exclude pending changes. For more information, see
-- Configuring Access for a Search Domain in the Amazon CloudSearch Developer
-- Guide.
module Network.AWS.CloudSearch.DescribeServiceAccessPolicies
    (
    -- * Request
      DescribeServiceAccessPolicies
    -- ** Request constructor
    , describeServiceAccessPolicies
    -- ** Request lenses
    , dsapDeployed
    , dsapDomainName

    -- * Response
    , DescribeServiceAccessPoliciesResponse
    -- ** Response constructor
    , describeServiceAccessPoliciesResponse
    -- ** Response lenses
    , dsaprAccessPolicies
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.CloudSearch.Types

data DescribeServiceAccessPolicies = DescribeServiceAccessPolicies
    { _dsapDeployed   :: Maybe Bool
    , _dsapDomainName :: Text
    } deriving (Eq, Ord, Show, Generic)

-- | 'DescribeServiceAccessPolicies' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dsapDeployed' @::@ 'Maybe' 'Bool'
--
-- * 'dsapDomainName' @::@ 'Text'
--
describeServiceAccessPolicies :: Text -- ^ 'dsapDomainName'
                              -> DescribeServiceAccessPolicies
describeServiceAccessPolicies p1 = DescribeServiceAccessPolicies
    { _dsapDomainName = p1
    , _dsapDeployed   = Nothing
    }

-- | Whether to display the deployed configuration (true) or include any
-- pending changes (false). Defaults to false.
dsapDeployed :: Lens' DescribeServiceAccessPolicies (Maybe Bool)
dsapDeployed = lens _dsapDeployed (\s a -> s { _dsapDeployed = a })

-- | The name of the domain you want to describe.
dsapDomainName :: Lens' DescribeServiceAccessPolicies Text
dsapDomainName = lens _dsapDomainName (\s a -> s { _dsapDomainName = a })

instance ToQuery DescribeServiceAccessPolicies

instance ToPath DescribeServiceAccessPolicies where
    toPath = const "/"

newtype DescribeServiceAccessPoliciesResponse = DescribeServiceAccessPoliciesResponse
    { _dsaprAccessPolicies :: AccessPoliciesStatus
    } deriving (Eq, Show, Generic)

-- | 'DescribeServiceAccessPoliciesResponse' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dsaprAccessPolicies' @::@ 'AccessPoliciesStatus'
--
describeServiceAccessPoliciesResponse :: AccessPoliciesStatus -- ^ 'dsaprAccessPolicies'
                                      -> DescribeServiceAccessPoliciesResponse
describeServiceAccessPoliciesResponse p1 = DescribeServiceAccessPoliciesResponse
    { _dsaprAccessPolicies = p1
    }

-- | The access rules configured for the domain specified in the request.
dsaprAccessPolicies :: Lens' DescribeServiceAccessPoliciesResponse AccessPoliciesStatus
dsaprAccessPolicies =
    lens _dsaprAccessPolicies (\s a -> s { _dsaprAccessPolicies = a })

instance FromXML DescribeServiceAccessPoliciesResponse where
    fromXMLOptions = xmlOptions
    fromXMLRoot    = fromRoot "DescribeServiceAccessPoliciesResponse"

instance AWSRequest DescribeServiceAccessPolicies where
    type Sv DescribeServiceAccessPolicies = CloudSearch
    type Rs DescribeServiceAccessPolicies = DescribeServiceAccessPoliciesResponse

    request  = post "DescribeServiceAccessPolicies"
    response = xmlResponse $ \h x -> DescribeServiceAccessPoliciesResponse
        <$> x %| "AccessPolicies"
