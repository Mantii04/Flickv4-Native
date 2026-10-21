.class public Lcom/uwetrottmann/trakt5/entities/SyncItems;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public episodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/SyncEpisode;",
            ">;"
        }
    .end annotation
.end field

.field public ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public movies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/SyncMovie;",
            ">;"
        }
    .end annotation
.end field

.field public people:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/SyncPerson;",
            ">;"
        }
    .end annotation
.end field

.field public shows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/SyncShow;",
            ">;"
        }
    .end annotation
.end field


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
.method public episodes(Lcom/uwetrottmann/trakt5/entities/SyncEpisode;)Lcom/uwetrottmann/trakt5/entities/SyncItems;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/uwetrottmann/trakt5/entities/SyncItems;->episodes(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncItems;

    move-result-object p1

    return-object p1
.end method

.method public episodes(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncItems;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/SyncEpisode;",
            ">;)",
            "Lcom/uwetrottmann/trakt5/entities/SyncItems;"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncItems;->episodes:Ljava/util/List;

    return-object p0
.end method

.method public ids(I)Lcom/uwetrottmann/trakt5/entities/SyncItems;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/uwetrottmann/trakt5/entities/SyncItems;->ids(J)Lcom/uwetrottmann/trakt5/entities/SyncItems;

    move-result-object p1

    return-object p1
.end method

.method public ids(J)Lcom/uwetrottmann/trakt5/entities/SyncItems;
    .locals 2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, v0}, Lcom/uwetrottmann/trakt5/entities/SyncItems;->ids(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncItems;

    move-result-object p1

    return-object p1
.end method

.method public ids(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncItems;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/uwetrottmann/trakt5/entities/SyncItems;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncItems;->ids:Ljava/util/List;

    return-object p0
.end method

.method public movies(Lcom/uwetrottmann/trakt5/entities/SyncMovie;)Lcom/uwetrottmann/trakt5/entities/SyncItems;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/uwetrottmann/trakt5/entities/SyncItems;->movies(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncItems;

    move-result-object p1

    return-object p1
.end method

.method public movies(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncItems;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/SyncMovie;",
            ">;)",
            "Lcom/uwetrottmann/trakt5/entities/SyncItems;"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncItems;->movies:Ljava/util/List;

    return-object p0
.end method

.method public people(Lcom/uwetrottmann/trakt5/entities/SyncPerson;)Lcom/uwetrottmann/trakt5/entities/SyncItems;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/uwetrottmann/trakt5/entities/SyncItems;->people(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncItems;

    move-result-object p1

    return-object p1
.end method

.method public people(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncItems;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/SyncPerson;",
            ">;)",
            "Lcom/uwetrottmann/trakt5/entities/SyncItems;"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncItems;->people:Ljava/util/List;

    return-object p0
.end method

.method public shows(Lcom/uwetrottmann/trakt5/entities/SyncShow;)Lcom/uwetrottmann/trakt5/entities/SyncItems;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/uwetrottmann/trakt5/entities/SyncItems;->shows(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncItems;

    move-result-object p1

    return-object p1
.end method

.method public shows(Ljava/util/List;)Lcom/uwetrottmann/trakt5/entities/SyncItems;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uwetrottmann/trakt5/entities/SyncShow;",
            ">;)",
            "Lcom/uwetrottmann/trakt5/entities/SyncItems;"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/SyncItems;->shows:Ljava/util/List;

    return-object p0
.end method
