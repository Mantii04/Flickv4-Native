.class public interface abstract Lcom/uwetrottmann/trakt5/services/Genres;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract movies()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/Genre;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "genres/movies"
    .end annotation
.end method

.method public abstract shows()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/Genre;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "genres/shows"
    .end annotation
.end method
