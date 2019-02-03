module NeutronStar

export ModelParams, StarCoreParams, StarVariables, EnvelopeParams, set_Tlocal

struct ModelParams
    # Neutron star model parameter
    EOS::String
    TOV::String
    dMoverM::Float64
    del_slice::Float64
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
    # output
    output_dir::String
end

struct EnvelopeParams
    ephi_surface::Float64
    g_surface::Float64
    R::Float64
end

struct StarCoreParams
    r_core::Array{Float64,1}
    ephi::Array{Float64,1}
    volume_elm::Array{Float64,1}
    nB::Array{Float64,1}
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
    Tc_n::Array{Float64,1}
    Tc_p::Array{Float64,1}
end

mutable struct StarVariables
    t::Float64 #[yr]
    Tinf::Float64
    eta_e_inf::Float64 #[erg]
    eta_mu_inf::Float64 #[erg]
    # The params below are not initialized by constructor
    Tlocal::Array{Float64,1} #[K}
    vn::Array{Float64,1}
    vp::Array{Float64,1}
    Omega::Float64 #[1/s]
    Omega_dot::Float64 #[1/s^2]
    StarVariables(t, Tinf, eta_e_inf, eta_mu_inf) = new(t, Tinf, eta_e_inf, eta_mu_inf)
end

function set_Tlocal(core::StarCoreParams, var::StarVariables)
    var.Tlocal = var.Tinf ./ core.ephi
end

end
