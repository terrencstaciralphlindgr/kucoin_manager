from pydantic import BaseModel


class AccountModelDTO(BaseModel):
    """
    DTO for dummy models.

    It returned when accessing dummy models from the API.
    """

    id: int
    name: str
    api_key: str
    api_secret: str
    api_passphrase: str

    class Config:
        orm_mode = True


class AccountModelInputDTO(BaseModel):
    """DTO for creating new dummy model."""

    name: str
    api_key: str
    api_secret: str
    api_passphrase: str
