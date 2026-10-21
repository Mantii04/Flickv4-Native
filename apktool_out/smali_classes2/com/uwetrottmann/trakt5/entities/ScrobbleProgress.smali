.class public Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;
.super Lcom/uwetrottmann/trakt5/entities/GenericProgress;
.source "SourceFile"


# instance fields
.field public app_date:Ljava/lang/String;

.field public app_version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/uwetrottmann/trakt5/entities/SyncEpisode;DLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p4, p5}, Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/GenericProgress;->episode:Lcom/uwetrottmann/trakt5/entities/SyncEpisode;

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/GenericProgress;->progress:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(Lcom/uwetrottmann/trakt5/entities/SyncMovie;DLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p4, p5}, Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/GenericProgress;->movie:Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 9
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/GenericProgress;->progress:Ljava/lang/Double;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/uwetrottmann/trakt5/entities/GenericProgress;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;->app_version:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;->app_date:Ljava/lang/String;

    return-void
.end method
