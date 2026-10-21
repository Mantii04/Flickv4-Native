.class public interface abstract Lcom/uwetrottmann/trakt5/services/Scrobble;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract pauseWatching(Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/PlaybackResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "scrobble/pause"
    .end annotation
.end method

.method public abstract startWatching(Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/PlaybackResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "scrobble/start"
    .end annotation
.end method

.method public abstract stopWatching(Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/PlaybackResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "scrobble/stop"
    .end annotation
.end method
