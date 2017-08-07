class CyphersController < ApplicationController
  require "cypher"
  
  def root
  end

  def encrypt
    @resp = Cypher.encrypt(params["text"].upcase, params["shift_num"].to_i)
    start_time = DateTime.parse(params[:start_time]).to_i
    end_time = DateTime.now.to_i
    @elapsed_time = (start_time.present? and end_time.present?) ? (end_time - start_time) : ""
  end

  def decrypt
    @resp = Cypher.decrypt(params["text"].upcase)
    start_time = DateTime.parse(params[:start_time]).to_i
    end_time = DateTime.now.to_i
    @elapsed_time = (start_time.present? and end_time.present?) ? (end_time - start_time) : ""
  end

  
end