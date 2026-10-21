.class public interface abstract Lcom/uwetrottmann/trakt5/services/Authentication;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract exchangeCodeForAccessToken(Lcom/uwetrottmann/trakt5/entities/AccessTokenRequest;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/AccessTokenRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/AccessTokenRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/AccessToken;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "oauth/token"
    .end annotation
.end method

.method public abstract exchangeDeviceCodeForAccessToken(Lcom/uwetrottmann/trakt5/entities/DeviceCodeAccessTokenRequest;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/DeviceCodeAccessTokenRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/DeviceCodeAccessTokenRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/AccessToken;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "oauth/device/token"
    .end annotation
.end method

.method public abstract generateDeviceCode(Lcom/uwetrottmann/trakt5/entities/ClientId;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/ClientId;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/ClientId;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/DeviceCode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "oauth/device/code"
    .end annotation
.end method

.method public abstract refreshAccessToken(Lcom/uwetrottmann/trakt5/entities/AccessTokenRefreshRequest;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/AccessTokenRefreshRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/AccessTokenRefreshRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/AccessToken;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "oauth/token"
    .end annotation
.end method
