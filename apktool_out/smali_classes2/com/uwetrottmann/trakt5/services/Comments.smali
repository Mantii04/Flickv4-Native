.class public interface abstract Lcom/uwetrottmann/trakt5/services/Comments;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract delete(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "comments/{id}"
    .end annotation
.end method

.method public abstract get(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/Comment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "comments/{id}"
    .end annotation
.end method

.method public abstract post(Lcom/uwetrottmann/trakt5/entities/Comment;)Lretrofit2/Call;
    .param p1    # Lcom/uwetrottmann/trakt5/entities/Comment;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uwetrottmann/trakt5/entities/Comment;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/Comment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "comments"
    .end annotation
.end method

.method public abstract postReply(ILcom/uwetrottmann/trakt5/entities/Comment;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/uwetrottmann/trakt5/entities/Comment;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/uwetrottmann/trakt5/entities/Comment;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/Comment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "comments/{id}/replies"
    .end annotation
.end method

.method public abstract replies(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/Comment;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "comments/{id}/replies"
    .end annotation
.end method

.method public abstract update(ILcom/uwetrottmann/trakt5/entities/Comment;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/uwetrottmann/trakt5/entities/Comment;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/uwetrottmann/trakt5/entities/Comment;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/uwetrottmann/trakt5/entities/Comment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "comments/{id}"
    .end annotation
.end method
