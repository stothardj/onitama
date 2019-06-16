{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE QuasiQuotes #-}
module Handler.Home where

import Import

-- Define our data that will be used for creating the form.
data FileForm = FileForm
    { fileInfo :: FileInfo
    , fileDescription :: Text
    }
    
game :: Widget
game = do
  gameCanvas <- newIdent
  $(widgetFile "game")
  
getHomeR :: Handler Html
getHomeR = do
    defaultLayout $ do
        setTitle "Onitama"
        $(widgetFile "homepage")



