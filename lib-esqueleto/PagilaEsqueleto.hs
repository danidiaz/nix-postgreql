{-# LANGUAGE ApplicativeDo #-}
{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE NoFieldSelectors #-}

-- | https://hachyderm.io/@DiazCarrete/113810714496179726
module PagilaEsqueleto () where

import Control.Monad.IO.Class (liftIO)
import Database.Esqueleto.Experimental
import Database.Persist
import Database.Persist.Postgresql
import Database.Persist.TH
import Data.Text
import Data.Time
import Data.Int

$( share
     [mkPersist sqlSettings]
     [persistLowerCase|
        Actor sql=actor
            Id Int64 sql=actor_id
            firstName Text sql=first_name
            lastName Text sql=last_name
            lastUpdate UTCTime sql=last_update
|]
 )
