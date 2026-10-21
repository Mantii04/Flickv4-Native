.class public Lcom/uwetrottmann/trakt5/TraktLink;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PATH_EPISODES:Ljava/lang/String; = "/episodes/"

.field private static final PATH_SEASONS:Ljava/lang/String; = "/seasons/"

.field private static final URL_COMMENT:Ljava/lang/String; = "https://trakt.tv/comments/"

.field private static final URL_EPISODE:Ljava/lang/String; = "https://trakt.tv/episodes/"

.field private static final URL_IMDB:Ljava/lang/String; = "https://trakt.tv/search/imdb/"

.field private static final URL_MOVIE:Ljava/lang/String; = "https://trakt.tv/movies/"

.field private static final URL_PERSON:Ljava/lang/String; = "https://trakt.tv/people/"

.field private static final URL_SEASON:Ljava/lang/String; = "https://trakt.tv/seasons/"

.field private static final URL_SHOW:Ljava/lang/String; = "https://trakt.tv/shows/"

.field private static final URL_TMDB:Ljava/lang/String; = "https://trakt.tv/search/tmdb/"

.field private static final URL_TVDB:Ljava/lang/String; = "https://trakt.tv/search/tvdb/"

.field private static final URL_TVRAGE:Ljava/lang/String; = "https://trakt.tv/search/tvrage/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static comment(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://trakt.tv/comments/"

    .line 2
    .line 3
    invoke-static {p0, v0}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static episode(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://trakt.tv/episodes/"

    .line 2
    invoke-static {p0, v0}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static episode(III)Ljava/lang/String;
    .locals 1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uwetrottmann/trakt5/TraktLink;->show(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/seasons/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/episodes/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static imdb(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://trakt.tv/search/imdb/"

    .line 2
    .line 3
    invoke-static {v0, p0}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static movie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://trakt.tv/movies/"

    .line 2
    .line 3
    invoke-static {v0, p0}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static person(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://trakt.tv/people/"

    .line 2
    .line 3
    invoke-static {v0, p0}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static season(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://trakt.tv/seasons/"

    .line 2
    invoke-static {p0, v0}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static season(II)Ljava/lang/String;
    .locals 1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uwetrottmann/trakt5/TraktLink;->show(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/seasons/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static show(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://trakt.tv/shows/"

    .line 2
    .line 3
    invoke-static {v0, p0}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static tmdb(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://trakt.tv/search/tmdb/"

    .line 2
    .line 3
    invoke-static {p0, v0}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static tvdb(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://trakt.tv/search/tvdb/"

    .line 2
    .line 3
    invoke-static {p0, v0}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static tvrage(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://trakt.tv/search/tvrage/"

    .line 2
    .line 3
    invoke-static {p0, v0}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
