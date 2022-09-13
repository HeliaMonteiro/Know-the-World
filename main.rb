     
require 'sinatra'
require 'httparty'
require 'dotenv/load'
require 'bcrypt'
require './db/db'


enable :sessions

require './controllers/travels_controller'
require './controllers/users_controller'
require './controllers/sessions_controller'

require './helpers/sessions_helper'