{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE QuasiQuotes #-}
module Handler.Greet where


import Import

getGreetR :: Text -> Handler Html
getGreetR name = do
	defaultLayout $ do
		setTitle "Hello world"
		[whamlet|<p>Hello there #{name}!|]
