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

-- Module      : Network.AWS.S3.DeleteBucketCors
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Deletes the cors configuration information set for the bucket.
module Network.AWS.S3.DeleteBucketCors
    (
    -- * Request
      DeleteBucketCors
    -- ** Request constructor
    , deleteBucketCors
    -- ** Request lenses
    , dbcBucket

    -- * Response
    , DeleteBucketCorsResponse
    -- ** Response constructor
    , deleteBucketCorsResponse
    ) where

import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.S3.Types

newtype DeleteBucketCors = DeleteBucketCors
    { _dbcBucket :: Text
    } deriving (Eq, Ord, Show, Generic, Monoid, IsString)

-- | 'DeleteBucketCors' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dbcBucket' @::@ 'Text'
--
deleteBucketCors :: Text -- ^ 'dbcBucket'
                 -> DeleteBucketCors
deleteBucketCors p1 = DeleteBucketCors
    { _dbcBucket = p1
    }

dbcBucket :: Lens' DeleteBucketCors Text
dbcBucket = lens _dbcBucket (\s a -> s { _dbcBucket = a })

instance ToPath DeleteBucketCors where
    toPath DeleteBucketCors{..} = mconcat
        [ "/"
        , toText _dbcBucket
        ]

instance ToQuery DeleteBucketCors where
    toQuery = const "cors"

instance ToHeaders DeleteBucketCors

data DeleteBucketCorsResponse = DeleteBucketCorsResponse
    deriving (Eq, Ord, Show, Generic)

-- | 'DeleteBucketCorsResponse' constructor.
deleteBucketCorsResponse :: DeleteBucketCorsResponse
deleteBucketCorsResponse = DeleteBucketCorsResponse

instance FromXML DeleteBucketCorsResponse where
    fromXMLOptions = xmlOptions
    fromXMLRoot    = fromRoot "DeleteBucketCorsResponse"
instance AWSRequest DeleteBucketCors where
    type Sv DeleteBucketCors = S3
    type Rs DeleteBucketCors = DeleteBucketCorsResponse

    request  = delete
    response = nullaryResponse DeleteBucketCorsResponse
