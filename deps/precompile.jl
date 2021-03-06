function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    Base.precompile(Tuple{typeof(PkgServer.get_registries),String})
    Base.precompile(Tuple{typeof(PkgServer.serve_json),HTTP.Streams.Stream{HTTP.Messages.Request,HTTP.ConnectionPool.Transaction{Sockets.TCPSocket}},Dict{String,Any}})
    Base.precompile(Tuple{typeof(PkgServer.stream_file),IOStream,Int64,Int64,Task,Base.PipeEndpoint})
    Base.precompile(Tuple{typeof(PkgServer.verify_registry_hash),String,String})
    Base.precompile(Tuple{typeof(PkgServer.wait_first),Task,Vararg{Task,N} where N})
    Base.precompile(Tuple{typeof(collect),Base.KeySet{String,Dict{String,PkgServer.RegistryMeta}}})
    Base.precompile(Tuple{typeof(getindex),Dict{String,PkgServer.RegistryMeta},String})
    Base.precompile(Tuple{typeof(in),SubString{String},Base.KeySet{String,Dict{String,PkgServer.RegistryMeta}}})
    isdefined(HTTP.Servers, Symbol("#13#14")) && Base.precompile(Tuple{getfield(HTTP.Servers, Symbol("#13#14"))})
    isdefined(HTTP.Servers, Symbol("#8#9")) && Base.precompile(Tuple{getfield(HTTP.Servers, Symbol("#8#9"))})
    isdefined(PkgServer, Symbol("#1#2")) && Base.precompile(Tuple{getfield(PkgServer, Symbol("#1#2"))})
    isdefined(PkgServer, Symbol("#22#26")) && Base.precompile(Tuple{getfield(PkgServer, Symbol("#22#26"))})
    isdefined(PkgServer, Symbol("#30#33")) && Base.precompile(Tuple{getfield(PkgServer, Symbol("#30#33"))})
    isdefined(PkgServer, Symbol("#38#46")) && Base.precompile(Tuple{getfield(PkgServer, Symbol("#38#46")),String})
    isdefined(PkgServer, Symbol("#39#47")) && Base.precompile(Tuple{getfield(PkgServer, Symbol("#39#47"))})
    isdefined(PkgServer, Symbol("#40#48")) && Base.precompile(Tuple{getfield(PkgServer, Symbol("#40#48"))})
    isdefined(PkgServer, Symbol("#41#49")) && Base.precompile(Tuple{getfield(PkgServer, Symbol("#41#49"))})
    isdefined(PkgServer, Symbol("#42#50")) && Base.precompile(Tuple{getfield(PkgServer, Symbol("#42#50"))})
    isdefined(PkgServer, Symbol("#65#68")) && Base.precompile(Tuple{getfield(PkgServer, Symbol("#65#68"))})
    isdefined(PkgServer, Symbol("#ServerConfig#62#63")) && Base.precompile(Tuple{getfield(PkgServer, Symbol("#ServerConfig#62#63")),Sockets.InetAddr{Sockets.IPv4},String,Dict{String,PkgServer.RegistryMeta},Array{String,1},Int64,Type{PkgServer.ServerConfig}})
end
