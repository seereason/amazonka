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

-- Module      : Network.AWS.SES.ListVerifiedEmailAddresses
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Returns a list containing all of the email addresses that have been
-- verified. The ListVerifiedEmailAddresses action is deprecated as of the May
-- 15, 2012 release of Domain Verification. The ListIdentities action is now
-- preferred. This action is throttled at one request per second.
module Network.AWS.SES.ListVerifiedEmailAddresses
    (
    -- * Request
      ListVerifiedEmailAddresses
    -- ** Request constructor
    , listVerifiedEmailAddresses

    -- * Response
    , ListVerifiedEmailAddressesResponse
    -- ** Response constructor
    , listVerifiedEmailAddressesResponse
    -- ** Response lenses
    , lvearVerifiedEmailAddresses
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.SES.Types

data ListVerifiedEmailAddresses = ListVerifiedEmailAddresses
    deriving (Eq, Ord, Show, Generic)

-- | 'ListVerifiedEmailAddresses' constructor.
listVerifiedEmailAddresses :: ListVerifiedEmailAddresses
listVerifiedEmailAddresses = ListVerifiedEmailAddresses

instance ToQuery ListVerifiedEmailAddresses

instance ToPath ListVerifiedEmailAddresses where
    toPath = const "/"

newtype ListVerifiedEmailAddressesResponse = ListVerifiedEmailAddressesResponse
    { _lvearVerifiedEmailAddresses :: [Text]
    } deriving (Eq, Ord, Show, Generic, Monoid, Semigroup, IsString)

instance IsList ListVerifiedEmailAddressesResponse
    type Item ListVerifiedEmailAddressesResponse = Text

    fromList = ListVerifiedEmailAddressesResponse . fromList
    toList   = toList . _lvearVerifiedEmailAddresses

-- | 'ListVerifiedEmailAddressesResponse' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'lvearVerifiedEmailAddresses' @::@ ['Text']
--
listVerifiedEmailAddressesResponse :: ListVerifiedEmailAddressesResponse
listVerifiedEmailAddressesResponse = ListVerifiedEmailAddressesResponse
    { _lvearVerifiedEmailAddresses = mempty
    }

-- | A list of email addresses that have been verified.
lvearVerifiedEmailAddresses :: Lens' ListVerifiedEmailAddressesResponse [Text]
lvearVerifiedEmailAddresses =
    lens _lvearVerifiedEmailAddresses
        (\s a -> s { _lvearVerifiedEmailAddresses = a })

instance FromXML ListVerifiedEmailAddressesResponse where
    fromXMLOptions = xmlOptions
    fromXMLRoot    = fromRoot "ListVerifiedEmailAddressesResponse"

instance AWSRequest ListVerifiedEmailAddresses where
    type Sv ListVerifiedEmailAddresses = SES
    type Rs ListVerifiedEmailAddresses = ListVerifiedEmailAddressesResponse

    request  = post "ListVerifiedEmailAddresses"
    response = xmlResponse $ \h x -> ListVerifiedEmailAddressesResponse
        <$> x %| "VerifiedEmailAddresses"
