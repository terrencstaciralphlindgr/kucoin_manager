from fastapi.routing import APIRouter

from kucoin_manager.web.api import dummy, echo, kucoin, monitoring

api_router = APIRouter()
api_router.include_router(monitoring.router)
api_router.include_router(echo.router, prefix="/echo", tags=["echo"])
api_router.include_router(dummy.router, prefix="/dummy", tags=["dummy"])
api_router.include_router(kucoin.router, prefix="/kucoin", tags=["dummy"])
