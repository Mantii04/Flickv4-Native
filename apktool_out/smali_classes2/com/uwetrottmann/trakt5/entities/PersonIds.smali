.class public Lcom/uwetrottmann/trakt5/entities/PersonIds;
.super Lcom/uwetrottmann/trakt5/entities/BaseIds;
.source "SourceFile"


# instance fields
.field public slug:Ljava/lang/String;

.field public tvrage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/uwetrottmann/trakt5/entities/BaseIds;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static imdb(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/entities/PersonIds;
    .locals 1

    .line 1
    new-instance v0, Lcom/uwetrottmann/trakt5/entities/PersonIds;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/uwetrottmann/trakt5/entities/PersonIds;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/uwetrottmann/trakt5/entities/BaseIds;->imdb:Ljava/lang/String;

    .line 7
    .line 8
    return-object v0
.end method

.method public static slug(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/entities/PersonIds;
    .locals 1

    .line 1
    new-instance v0, Lcom/uwetrottmann/trakt5/entities/PersonIds;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/uwetrottmann/trakt5/entities/PersonIds;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/uwetrottmann/trakt5/entities/PersonIds;->slug:Ljava/lang/String;

    .line 7
    .line 8
    return-object v0
.end method

.method public static tmdb(I)Lcom/uwetrottmann/trakt5/entities/PersonIds;
    .locals 1

    .line 1
    new-instance v0, Lcom/uwetrottmann/trakt5/entities/PersonIds;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/uwetrottmann/trakt5/entities/PersonIds;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/uwetrottmann/trakt5/entities/BaseIds;->tmdb:Ljava/lang/Integer;

    .line 11
    .line 12
    return-object v0
.end method

.method public static trakt(I)Lcom/uwetrottmann/trakt5/entities/PersonIds;
    .locals 1

    .line 1
    new-instance v0, Lcom/uwetrottmann/trakt5/entities/PersonIds;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/uwetrottmann/trakt5/entities/PersonIds;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/uwetrottmann/trakt5/entities/BaseIds;->trakt:Ljava/lang/Integer;

    .line 11
    .line 12
    return-object v0
.end method
