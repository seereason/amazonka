{-# OPTIONS_GHC -fno-warn-orphans #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.DirectConnect
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.DirectConnect where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.DirectConnect
import Test.AWS.DirectConnect.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ testDescribeInterconnects $
--             describeInterconnects
--
--         , testDeleteConnection $
--             deleteConnection
--
--         , testCreateConnection $
--             createConnection
--
--         , testDescribeConnections $
--             describeConnections
--
--         , testDeleteInterconnect $
--             deleteInterconnect
--
--         , testConfirmPrivateVirtualInterface $
--             confirmPrivateVirtualInterface
--
--         , testDescribeConnectionsOnInterconnect $
--             describeConnectionsOnInterconnect
--
--         , testDescribeLocations $
--             describeLocations
--
--         , testCreatePublicVirtualInterface $
--             createPublicVirtualInterface
--
--         , testAllocatePrivateVirtualInterface $
--             allocatePrivateVirtualInterface
--
--         , testConfirmConnection $
--             confirmConnection
--
--         , testDescribeVirtualGateways $
--             describeVirtualGateways
--
--         , testConfirmPublicVirtualInterface $
--             confirmPublicVirtualInterface
--
--         , testDescribeVirtualInterfaces $
--             describeVirtualInterfaces
--
--         , testCreatePrivateVirtualInterface $
--             createPrivateVirtualInterface
--
--         , testDeleteVirtualInterface $
--             deleteVirtualInterface
--
--         , testAllocatePublicVirtualInterface $
--             allocatePublicVirtualInterface
--
--         , testAllocateConnectionOnInterconnect $
--             allocateConnectionOnInterconnect
--
--         , testCreateInterconnect $
--             createInterconnect
--
--           ]

--     , testGroup "response"
--         [ testDescribeInterconnectsResponse $
--             describeInterconnectsResponse
--
--         , testDeleteConnectionResponse $
--             connection
--
--         , testCreateConnectionResponse $
--             connection
--
--         , testDescribeConnectionsResponse $
--             connections
--
--         , testDeleteInterconnectResponse $
--             deleteInterconnectResponse
--
--         , testConfirmPrivateVirtualInterfaceResponse $
--             confirmPrivateVirtualInterfaceResponse
--
--         , testDescribeConnectionsOnInterconnectResponse $
--             connections
--
--         , testDescribeLocationsResponse $
--             describeLocationsResponse
--
--         , testCreatePublicVirtualInterfaceResponse $
--             virtualInterface
--
--         , testAllocatePrivateVirtualInterfaceResponse $
--             virtualInterface
--
--         , testConfirmConnectionResponse $
--             confirmConnectionResponse
--
--         , testDescribeVirtualGatewaysResponse $
--             describeVirtualGatewaysResponse
--
--         , testConfirmPublicVirtualInterfaceResponse $
--             confirmPublicVirtualInterfaceResponse
--
--         , testDescribeVirtualInterfacesResponse $
--             describeVirtualInterfacesResponse
--
--         , testCreatePrivateVirtualInterfaceResponse $
--             virtualInterface
--
--         , testDeleteVirtualInterfaceResponse $
--             deleteVirtualInterfaceResponse
--
--         , testAllocatePublicVirtualInterfaceResponse $
--             virtualInterface
--
--         , testAllocateConnectionOnInterconnectResponse $
--             connection
--
--         , testCreateInterconnectResponse $
--             interconnect
--
--           ]
--     ]

-- Requests

testDescribeInterconnects :: DescribeInterconnects -> TestTree
testDescribeInterconnects = req
    "DescribeInterconnects"
    "fixture/DescribeInterconnects"

testDeleteConnection :: DeleteConnection -> TestTree
testDeleteConnection = req
    "DeleteConnection"
    "fixture/DeleteConnection"

testCreateConnection :: CreateConnection -> TestTree
testCreateConnection = req
    "CreateConnection"
    "fixture/CreateConnection"

testDescribeConnections :: DescribeConnections -> TestTree
testDescribeConnections = req
    "DescribeConnections"
    "fixture/DescribeConnections"

testDeleteInterconnect :: DeleteInterconnect -> TestTree
testDeleteInterconnect = req
    "DeleteInterconnect"
    "fixture/DeleteInterconnect"

testConfirmPrivateVirtualInterface :: ConfirmPrivateVirtualInterface -> TestTree
testConfirmPrivateVirtualInterface = req
    "ConfirmPrivateVirtualInterface"
    "fixture/ConfirmPrivateVirtualInterface"

testDescribeConnectionsOnInterconnect :: DescribeConnectionsOnInterconnect -> TestTree
testDescribeConnectionsOnInterconnect = req
    "DescribeConnectionsOnInterconnect"
    "fixture/DescribeConnectionsOnInterconnect"

testDescribeLocations :: DescribeLocations -> TestTree
testDescribeLocations = req
    "DescribeLocations"
    "fixture/DescribeLocations"

testCreatePublicVirtualInterface :: CreatePublicVirtualInterface -> TestTree
testCreatePublicVirtualInterface = req
    "CreatePublicVirtualInterface"
    "fixture/CreatePublicVirtualInterface"

testAllocatePrivateVirtualInterface :: AllocatePrivateVirtualInterface -> TestTree
testAllocatePrivateVirtualInterface = req
    "AllocatePrivateVirtualInterface"
    "fixture/AllocatePrivateVirtualInterface"

testConfirmConnection :: ConfirmConnection -> TestTree
testConfirmConnection = req
    "ConfirmConnection"
    "fixture/ConfirmConnection"

testDescribeVirtualGateways :: DescribeVirtualGateways -> TestTree
testDescribeVirtualGateways = req
    "DescribeVirtualGateways"
    "fixture/DescribeVirtualGateways"

testConfirmPublicVirtualInterface :: ConfirmPublicVirtualInterface -> TestTree
testConfirmPublicVirtualInterface = req
    "ConfirmPublicVirtualInterface"
    "fixture/ConfirmPublicVirtualInterface"

testDescribeVirtualInterfaces :: DescribeVirtualInterfaces -> TestTree
testDescribeVirtualInterfaces = req
    "DescribeVirtualInterfaces"
    "fixture/DescribeVirtualInterfaces"

testCreatePrivateVirtualInterface :: CreatePrivateVirtualInterface -> TestTree
testCreatePrivateVirtualInterface = req
    "CreatePrivateVirtualInterface"
    "fixture/CreatePrivateVirtualInterface"

testDeleteVirtualInterface :: DeleteVirtualInterface -> TestTree
testDeleteVirtualInterface = req
    "DeleteVirtualInterface"
    "fixture/DeleteVirtualInterface"

testAllocatePublicVirtualInterface :: AllocatePublicVirtualInterface -> TestTree
testAllocatePublicVirtualInterface = req
    "AllocatePublicVirtualInterface"
    "fixture/AllocatePublicVirtualInterface"

testAllocateConnectionOnInterconnect :: AllocateConnectionOnInterconnect -> TestTree
testAllocateConnectionOnInterconnect = req
    "AllocateConnectionOnInterconnect"
    "fixture/AllocateConnectionOnInterconnect"

testCreateInterconnect :: CreateInterconnect -> TestTree
testCreateInterconnect = req
    "CreateInterconnect"
    "fixture/CreateInterconnect"

-- Responses

testDescribeInterconnectsResponse :: DescribeInterconnectsResponse -> TestTree
testDescribeInterconnectsResponse = res
    "DescribeInterconnectsResponse"
    "fixture/DescribeInterconnectsResponse"
    (Proxy :: Proxy DescribeInterconnects)

testDeleteConnectionResponse :: Connection -> TestTree
testDeleteConnectionResponse = res
    "DeleteConnectionResponse"
    "fixture/DeleteConnectionResponse"
    (Proxy :: Proxy DeleteConnection)

testCreateConnectionResponse :: Connection -> TestTree
testCreateConnectionResponse = res
    "CreateConnectionResponse"
    "fixture/CreateConnectionResponse"
    (Proxy :: Proxy CreateConnection)

testDescribeConnectionsResponse :: Connections -> TestTree
testDescribeConnectionsResponse = res
    "DescribeConnectionsResponse"
    "fixture/DescribeConnectionsResponse"
    (Proxy :: Proxy DescribeConnections)

testDeleteInterconnectResponse :: DeleteInterconnectResponse -> TestTree
testDeleteInterconnectResponse = res
    "DeleteInterconnectResponse"
    "fixture/DeleteInterconnectResponse"
    (Proxy :: Proxy DeleteInterconnect)

testConfirmPrivateVirtualInterfaceResponse :: ConfirmPrivateVirtualInterfaceResponse -> TestTree
testConfirmPrivateVirtualInterfaceResponse = res
    "ConfirmPrivateVirtualInterfaceResponse"
    "fixture/ConfirmPrivateVirtualInterfaceResponse"
    (Proxy :: Proxy ConfirmPrivateVirtualInterface)

testDescribeConnectionsOnInterconnectResponse :: Connections -> TestTree
testDescribeConnectionsOnInterconnectResponse = res
    "DescribeConnectionsOnInterconnectResponse"
    "fixture/DescribeConnectionsOnInterconnectResponse"
    (Proxy :: Proxy DescribeConnectionsOnInterconnect)

testDescribeLocationsResponse :: DescribeLocationsResponse -> TestTree
testDescribeLocationsResponse = res
    "DescribeLocationsResponse"
    "fixture/DescribeLocationsResponse"
    (Proxy :: Proxy DescribeLocations)

testCreatePublicVirtualInterfaceResponse :: VirtualInterface -> TestTree
testCreatePublicVirtualInterfaceResponse = res
    "CreatePublicVirtualInterfaceResponse"
    "fixture/CreatePublicVirtualInterfaceResponse"
    (Proxy :: Proxy CreatePublicVirtualInterface)

testAllocatePrivateVirtualInterfaceResponse :: VirtualInterface -> TestTree
testAllocatePrivateVirtualInterfaceResponse = res
    "AllocatePrivateVirtualInterfaceResponse"
    "fixture/AllocatePrivateVirtualInterfaceResponse"
    (Proxy :: Proxy AllocatePrivateVirtualInterface)

testConfirmConnectionResponse :: ConfirmConnectionResponse -> TestTree
testConfirmConnectionResponse = res
    "ConfirmConnectionResponse"
    "fixture/ConfirmConnectionResponse"
    (Proxy :: Proxy ConfirmConnection)

testDescribeVirtualGatewaysResponse :: DescribeVirtualGatewaysResponse -> TestTree
testDescribeVirtualGatewaysResponse = res
    "DescribeVirtualGatewaysResponse"
    "fixture/DescribeVirtualGatewaysResponse"
    (Proxy :: Proxy DescribeVirtualGateways)

testConfirmPublicVirtualInterfaceResponse :: ConfirmPublicVirtualInterfaceResponse -> TestTree
testConfirmPublicVirtualInterfaceResponse = res
    "ConfirmPublicVirtualInterfaceResponse"
    "fixture/ConfirmPublicVirtualInterfaceResponse"
    (Proxy :: Proxy ConfirmPublicVirtualInterface)

testDescribeVirtualInterfacesResponse :: DescribeVirtualInterfacesResponse -> TestTree
testDescribeVirtualInterfacesResponse = res
    "DescribeVirtualInterfacesResponse"
    "fixture/DescribeVirtualInterfacesResponse"
    (Proxy :: Proxy DescribeVirtualInterfaces)

testCreatePrivateVirtualInterfaceResponse :: VirtualInterface -> TestTree
testCreatePrivateVirtualInterfaceResponse = res
    "CreatePrivateVirtualInterfaceResponse"
    "fixture/CreatePrivateVirtualInterfaceResponse"
    (Proxy :: Proxy CreatePrivateVirtualInterface)

testDeleteVirtualInterfaceResponse :: DeleteVirtualInterfaceResponse -> TestTree
testDeleteVirtualInterfaceResponse = res
    "DeleteVirtualInterfaceResponse"
    "fixture/DeleteVirtualInterfaceResponse"
    (Proxy :: Proxy DeleteVirtualInterface)

testAllocatePublicVirtualInterfaceResponse :: VirtualInterface -> TestTree
testAllocatePublicVirtualInterfaceResponse = res
    "AllocatePublicVirtualInterfaceResponse"
    "fixture/AllocatePublicVirtualInterfaceResponse"
    (Proxy :: Proxy AllocatePublicVirtualInterface)

testAllocateConnectionOnInterconnectResponse :: Connection -> TestTree
testAllocateConnectionOnInterconnectResponse = res
    "AllocateConnectionOnInterconnectResponse"
    "fixture/AllocateConnectionOnInterconnectResponse"
    (Proxy :: Proxy AllocateConnectionOnInterconnect)

testCreateInterconnectResponse :: Interconnect -> TestTree
testCreateInterconnectResponse = res
    "CreateInterconnectResponse"
    "fixture/CreateInterconnectResponse"
    (Proxy :: Proxy CreateInterconnect)

instance Out AllocateConnectionOnInterconnect
instance Out AllocatePrivateVirtualInterface
instance Out AllocatePublicVirtualInterface
instance Out ConfirmConnection
instance Out ConfirmConnectionResponse
instance Out ConfirmPrivateVirtualInterface
instance Out ConfirmPrivateVirtualInterfaceResponse
instance Out ConfirmPublicVirtualInterface
instance Out ConfirmPublicVirtualInterfaceResponse
instance Out Connection
instance Out ConnectionState
instance Out Connections
instance Out CreateConnection
instance Out CreateInterconnect
instance Out CreatePrivateVirtualInterface
instance Out CreatePublicVirtualInterface
instance Out DeleteConnection
instance Out DeleteInterconnect
instance Out DeleteInterconnectResponse
instance Out DeleteVirtualInterface
instance Out DeleteVirtualInterfaceResponse
instance Out DescribeConnections
instance Out DescribeConnectionsOnInterconnect
instance Out DescribeInterconnects
instance Out DescribeInterconnectsResponse
instance Out DescribeLocations
instance Out DescribeLocationsResponse
instance Out DescribeVirtualGateways
instance Out DescribeVirtualGatewaysResponse
instance Out DescribeVirtualInterfaces
instance Out DescribeVirtualInterfacesResponse
instance Out Interconnect
instance Out InterconnectState
instance Out Location
instance Out NewPrivateVirtualInterface
instance Out NewPrivateVirtualInterfaceAllocation
instance Out NewPublicVirtualInterface
instance Out NewPublicVirtualInterfaceAllocation
instance Out RouteFilterPrefix
instance Out VirtualGateway
instance Out VirtualInterface
instance Out VirtualInterfaceState
