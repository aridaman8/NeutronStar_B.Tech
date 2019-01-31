module NeutronStar

struct ModelParams
    dMoverM::Float64
    SFtype_n::String
    SFtype_p::String
    gapmodel_n::String
    gapmodel_p::String
    rotochemical::Bool
    Pnow::Float64
    Pdotnow::Float64
    P0::Float64
    Znpe::Float64
    Znpmu::Float64
    Znp::Float64
    Wnpe::Float64
    Wnpmu::Float64
end

struct StarCoreParams
    r_core::Array{Float64,1}
    ephi::Array{Float64,1}
    nB::Array{Float64,1}
    Yn::Array{Float64,1}
    Yp::Array{Float64,1}
    Ye::Array{Float64,1}
    Ymu::Array{Float64,1}
    mstn::Array{Float64,1}
    mstp::Array{Float64,1}
    mste::Array{Float64,1}
    mstmu::Array{Float64,1}
    kFn::Array{Float64,1}
    kFp::Array{Float64,1}
    kFe::Array{Float64,1}
    kFmu::Array{Float64,1}
    nn::Array{Float64,1}
    np::Array{Float64,1}
    ne::Array{Float64,1}
    nmu::Array{Float64,1}
    Tcn::Array{Float64,1}
    Tcp::Array{Float64,1}
end

mutable struct StarVariables
    Tlocal::Array{Float64,1} #[K}
    vn::Array{Float64,1}
    vp::Array{Float64,1}
    Tinf::Float64
    eta_e_inf::Float64 #[erg]
    eta_mu_inf::Float64 #[erg]
    t::Float64 #[yr]
    Omega::Float64 #[1/s]
    Omega_dot::Float64 #[1/s^2]
    Cn::Float64
    Cp::Float64
    Ce::Float64
    Cmu::Float64
    Ldurca_e::Float64
    Ldurca_mu::Float64
    Lmurca_n_e::Float64
    Lmurca_n_mu::Float64
    Lmurca_p_e::Float64
    Lmurca_p_mu::Float64
    LPBF_n::Float64
    LPBF_p::Float64
    Lphoton::Float64
end

end
