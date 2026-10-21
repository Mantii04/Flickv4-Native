.class public Lcom/uwetrottmann/trakt5/entities/SyncShow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public collected_at:Lorg/threeten/bp/OffsetDateTime;

.field public ids:Lcom/uwetrottmann/trakt5/entities/ShowIds;

.field public rated_at:Lorg/threeten/bp/OffsetDateTime;

.field public rating:Lcom/uwetrottmann/trakt5/enums/Rating;

.field public seasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/SyncSeason;",
            ">;"
        }
    .end annotation
.end field

.field public watched_at:Lorg/threeten/bp/OffsetDateTime;


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


# virtual methods
.method public collectedAt(Lorg/threeten/bp/OffsetDateTime;)Lcom/uwetrottmann/trakt5/entities/SyncShow;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncShow;->collected_at:Lorg/threeten/bp/OffsetDateTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public id(Lcom/uwetrottmann/trakt5/entities/ShowIds;)Lcom/uwetrottmann/trakt5/entities/SyncShow;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncShow;->ids:Lcom/uwetrottmann/trakt5/entities/ShowIds;

    .line 2
    .line 3
    return-object p0
.end method

.method public ratedAt(Lorg/threeten/bp/OffsetDateTime;)Lcom/uwetrottmann/trakt5/entities/SyncShow;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncShow;->rated_at:Lorg/threeten/bp/OffsetDateTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public rating(Lcom/uwetrottmann/trakt5/enums/Rating;)Lcom/uwetrottmann/trakt5/entities/SyncShow;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncShow;->rating:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 2
    .line 3
    return-object p0
.end method

.method public seasons(Lcom/uwetrottmann/trakt5/entities/SyncSeason;)Lcom/uwetrottmann/trakt5/entities/SyncShow;
    .locals 2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, v0}, Lcom/uwetrottmann/trakt5/entities/SyncShow;->seasons(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncShow;

    move-result-object p1

    return-object p1
.end method

.method public seasons(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncShow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/SyncSeason;",
            ">;)",
            "Lcom/uwetrottmann/trakt5/entities/SyncShow;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncShow;->seasons:Ljava/util/List;

    return-object p0
.end method

.method public watchedAt(Lorg/threeten/bp/OffsetDateTime;)Lcom/uwetrottmann/trakt5/entities/SyncShow;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncShow;->watched_at:Lorg/threeten/bp/OffsetDateTime;

    .line 2
    .line 3
    return-object p0
.end method
