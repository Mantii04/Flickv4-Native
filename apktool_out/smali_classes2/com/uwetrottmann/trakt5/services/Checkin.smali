.class public interface abstract Lcom/uwetrottmann/trakt5/services/Checkin;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract checkin(Lcom/uwetrottmann/trakt5/entities/EpisodeCheckin;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/EpisodeCheckin;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/EpisodeCheckin;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/EpisodeCheckinResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "checkin"
    .end annotation
.end method

.method public abstract checkin(Lcom/uwetrottmann/trakt5/entities/MovieCheckin;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/MovieCheckin;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/MovieCheckin;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/MovieCheckinResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "checkin"
    .end annotation
.end method

.method public abstract deleteActiveCheckin()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "checkin"
    .end annotation
.end method
