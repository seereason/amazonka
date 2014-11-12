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

-- Module      : Network.AWS.EC2.DescribeNetworkAcls
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Describes one or more of your network ACLs. For more information about
-- network ACLs, see Network ACLs in the Amazon Virtual Private Cloud User
-- Guide.
module Network.AWS.EC2.DescribeNetworkAcls
    (
    -- * Request
      DescribeNetworkAcls
    -- ** Request constructor
    , describeNetworkAcls
    -- ** Request lenses
    , dna1DryRun
    , dna1Filters
    , dna1NetworkAclIds

    -- * Response
    , DescribeNetworkAclsResult
    -- ** Response constructor
    , describeNetworkAclsResult
    -- ** Response lenses
    , dnarNetworkAcls
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.EC2.Types

data DescribeNetworkAcls = DescribeNetworkAcls
    { _dna1DryRun        :: Maybe Bool
    , _dna1Filters       :: [Filter]
    , _dna1NetworkAclIds :: [Text]
    } deriving (Eq, Show, Generic)

-- | 'DescribeNetworkAcls' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dna1DryRun' @::@ 'Maybe' 'Bool'
--
-- * 'dna1Filters' @::@ ['Filter']
--
-- * 'dna1NetworkAclIds' @::@ ['Text']
--
describeNetworkAcls :: DescribeNetworkAcls
describeNetworkAcls = DescribeNetworkAcls
    { _dna1DryRun        = Nothing
    , _dna1NetworkAclIds = mempty
    , _dna1Filters       = mempty
    }

dna1DryRun :: Lens' DescribeNetworkAcls (Maybe Bool)
dna1DryRun = lens _dna1DryRun (\s a -> s { _dna1DryRun = a })

-- | One or more filters. association.association-id - The ID of an
-- association ID for the ACL. association.network-acl-id - The ID of the
-- network ACL involved in the association. association.subnet-id - The ID
-- of the subnet involved in the association. default - Indicates whether
-- the ACL is the default network ACL for the VPC. entry.cidr - The CIDR
-- range specified in the entry. entry.egress - Indicates whether the entry
-- applies to egress traffic. entry.icmp.code - The ICMP code specified in
-- the entry, if any. entry.icmp.type - The ICMP type specified in the
-- entry, if any. entry.port-range.from - The start of the port range
-- specified in the entry. entry.port-range.to - The end of the port range
-- specified in the entry. entry.protocol - The protocol specified in the
-- entry (tcp | udp | icmp or a protocol number). entry.rule-action - Allows
-- or denies the matching traffic (allow | deny). entry.rule-number - The
-- number of an entry (in other words, rule) in the ACL's set of entries.
-- network-acl-id - The ID of the network ACL. tag:key=value - The key/value
-- combination of a tag assigned to the resource. tag-key - The key of a tag
-- assigned to the resource. This filter is independent of the tag-value
-- filter. For example, if you use both the filter "tag-key=Purpose" and the
-- filter "tag-value=X", you get any resources assigned both the tag key
-- Purpose (regardless of what the tag's value is), and the tag value X
-- (regardless of what the tag's key is). If you want to list only resources
-- where Purpose is X, see the tag:key=value filter. tag-value - The value
-- of a tag assigned to the resource. This filter is independent of the
-- tag-key filter. vpc-id - The ID of the VPC for the network ACL.
dna1Filters :: Lens' DescribeNetworkAcls [Filter]
dna1Filters = lens _dna1Filters (\s a -> s { _dna1Filters = a })

-- | One or more network ACL IDs. Default: Describes all your network ACLs.
dna1NetworkAclIds :: Lens' DescribeNetworkAcls [Text]
dna1NetworkAclIds =
    lens _dna1NetworkAclIds (\s a -> s { _dna1NetworkAclIds = a })

instance ToQuery DescribeNetworkAcls

instance ToPath DescribeNetworkAcls where
    toPath = const "/"

newtype DescribeNetworkAclsResult = DescribeNetworkAclsResult
    { _dnarNetworkAcls :: [NetworkAcl]
    } deriving (Eq, Show, Generic, Monoid, Semigroup)

instance IsList DescribeNetworkAclsResult
    type Item DescribeNetworkAclsResult = NetworkAcl

    fromList = DescribeNetworkAclsResult . fromList
    toList   = toList . _dnarNetworkAcls

-- | 'DescribeNetworkAclsResult' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dnarNetworkAcls' @::@ ['NetworkAcl']
--
describeNetworkAclsResult :: DescribeNetworkAclsResult
describeNetworkAclsResult = DescribeNetworkAclsResult
    { _dnarNetworkAcls = mempty
    }

-- | Information about one or more network ACLs.
dnarNetworkAcls :: Lens' DescribeNetworkAclsResult [NetworkAcl]
dnarNetworkAcls = lens _dnarNetworkAcls (\s a -> s { _dnarNetworkAcls = a })

instance FromXML DescribeNetworkAclsResult where
    fromXMLOptions = xmlOptions
    fromXMLRoot    = fromRoot "DescribeNetworkAclsResult"

instance AWSRequest DescribeNetworkAcls where
    type Sv DescribeNetworkAcls = EC2
    type Rs DescribeNetworkAcls = DescribeNetworkAclsResult

    request  = post "DescribeNetworkAcls"
    response = xmlResponse $ \h x -> DescribeNetworkAclsResult
        <$> x %| "networkAclSet"
