{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoFieldSelectors #-}

module Main where

import Data.Function ((&))
import Database.Esqueleto.Experimental
import PagilaEsqueleto

main :: IO ()
main = do
  selectSomeActors & run >>= print
  selectSomeAddresses & run >>= print
  selectSomeCategories & run >>= print
  selectSomeCities & run >>= print
  selectSomeCountries & run >>= print
  selectSomeCustomers & run >>= print
  selectSomeFilms & run >>= print
  selectSomeFilmActors & run >>= print
  selectSomeFilmCategories & run >>= print
  selectSomeInventories & run >>= print
  selectSomeLanguages & run >>= print
  selectSomePayments & run >>= print
  selectSomeRentals & run >>= print
  selectSomeStores & run >>= print
  selectSomeStaffs & run >>= print
