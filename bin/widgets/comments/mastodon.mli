(** Partial Bininding of Mastodon API for Comments handling using Context of a
    thread *)

module Account : sig
  type t = {
      id : string
    ; username : string
    ; acct : string
    ; url : string
    ; display_name : string
    ; note : string
    ; avatar : string
    ; bot : bool
  }

  val encoding : t Data_encoding.t
end

module Mention : sig
  type t = { id : string; username : string; url : string; acct : string }

  val encoding : t Data_encoding.t
end

module Tag : sig
  type t = { name : string; url : string }

  val encoding : t Data_encoding.t
end

module Status : sig
  type t = {
      id : string
    ; uri : string
    ; created_at : string
    ; account : Account.t
    ; content : string
    ; mentions : Mention.t list
    ; tags : Tag.t list
    ; reblogs_count : int
    ; favourites_count : int
    ; replies_count : int
  }

  val encoding : t Data_encoding.t
end

module Context : sig
  type t

  val encoding : t Data_encoding.t
end
