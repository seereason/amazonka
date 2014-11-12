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

-- Module      : Network.AWS.IAM.DeleteVirtualMFADevice
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Deletes a virtual MFA device.
module Network.AWS.IAM.DeleteVirtualMFADevice
    (
    -- * Request
      DeleteVirtualMFADevice
    -- ** Request constructor
    , deleteVirtualMFADevice
    -- ** Request lenses
    , dvmfadSerialNumber

    -- * Response
    , DeleteVirtualMFADeviceResponse
    -- ** Response constructor
    , deleteVirtualMFADeviceResponse
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.IAM.Types

newtype DeleteVirtualMFADevice = DeleteVirtualMFADevice
    { _dvmfadSerialNumber :: Text
    } deriving (Eq, Ord, Show, Generic, Monoid, IsString)

-- | 'DeleteVirtualMFADevice' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dvmfadSerialNumber' @::@ 'Text'
--
deleteVirtualMFADevice :: Text -- ^ 'dvmfadSerialNumber'
                       -> DeleteVirtualMFADevice
deleteVirtualMFADevice p1 = DeleteVirtualMFADevice
    { _dvmfadSerialNumber = p1
    }

-- | The serial number that uniquely identifies the MFA device. For virtual
-- MFA devices, the serial number is the same as the ARN.
dvmfadSerialNumber :: Lens' DeleteVirtualMFADevice Text
dvmfadSerialNumber =
    lens _dvmfadSerialNumber (\s a -> s { _dvmfadSerialNumber = a })

instance ToQuery DeleteVirtualMFADevice

instance ToPath DeleteVirtualMFADevice where
    toPath = const "/"

data DeleteVirtualMFADeviceResponse = DeleteVirtualMFADeviceResponse
    deriving (Eq, Ord, Show, Generic)

-- | 'DeleteVirtualMFADeviceResponse' constructor.
deleteVirtualMFADeviceResponse :: DeleteVirtualMFADeviceResponse
deleteVirtualMFADeviceResponse = DeleteVirtualMFADeviceResponse

instance FromXML DeleteVirtualMFADeviceResponse where
    fromXMLOptions = xmlOptions
    fromXMLRoot    = fromRoot "DeleteVirtualMFADeviceResponse"

instance AWSRequest DeleteVirtualMFADevice where
    type Sv DeleteVirtualMFADevice = IAM
    type Rs DeleteVirtualMFADevice = DeleteVirtualMFADeviceResponse

    request  = post "DeleteVirtualMFADevice"
    response = nullaryResponse DeleteVirtualMFADeviceResponse
