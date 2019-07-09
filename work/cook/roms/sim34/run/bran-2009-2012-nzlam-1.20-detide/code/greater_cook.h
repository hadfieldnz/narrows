/*
*******************************************************************
** Greater Cook St run nested in Bluelink Reanalysis
*******************************************************************
*/

#define SOLVE3D

#define CURVGRID

#define MASKING

#define AVERAGES

#define AVERAGES_DETIDE

#define SALINITY
#define NONLIN_EOS

#define RADIATION_2D
#define NO_LBC_ATT

#define ANA_BTFLUX
#define ANA_BSFLUX

#define ANA_DQDSST

#define UV_ADV
#define UV_COR
#define UV_LOGDRAG

#define TS_U3HADVECTION
#define TS_SVADVECTION

#define DJ_GRADPS

#define GLS_MIXING

#if defined GLS_MIXING
# define KANTHA_CLAYSON
# define N2S2_HORAVG
#elif defined LMD_MIXING
# define LMD_RIMIX
# define LMD_CONVEC
# define LMD_DDMIX
# define LMD_SKPP
# define LMD_NONLOCAL
# define LMD_BKPP
#endif

#undef BULK_FLUXES

#if defined BULK_FLUXES
# define EMINUSP
# define LONGWAVE
# define ANA_CLOUD
# define ANA_HUMIDITY
# define ANA_RAIN
#else
# define QCORRECTION
#endif

#define SOLAR_SOURCE
#define DIURNAL_SRFLUX

#define SSH_TIDES
#define ADD_FSOBC

#define UV_TIDES
#define ADD_M2OBC

#define RAMP_TIDES


