{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}

module Main where

import Control.Lens
import Data.Generics.Product.Fields (HasField (field))
import qualified Data.Map as M
import qualified Data.Set as S
import qualified Data.Text as T
import GHC.Generics (Generic)

data Ship = Ship
  { _name :: String,
    _numCrew :: Int
  }
  deriving (Generic, Show)

main :: IO ()
main = do
  putStrLn $ view (field @"_name") (Ship "El Pepino Marino" 300)
