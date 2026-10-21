.class public Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uwetrottmann/trakt5/entities/MovieCheckin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected app_date:Ljava/lang/String;

.field protected app_version:Ljava/lang/String;

.field protected message:Ljava/lang/String;

.field private movie:Lcom/uwetrottmann/trakt5/entities/SyncMovie;

.field protected sharing:Lcom/uwetrottmann/trakt5/entities/ShareSettings;

.field protected venue_id:Ljava/lang/String;

.field protected venue_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/uwetrottmann/trakt5/entities/SyncMovie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->movie:Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->app_version:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->app_date:Ljava/lang/String;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string p2, "Movie must not be null"

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method


# virtual methods
.method public build()Lcom/uwetrottmann/trakt5/entities/MovieCheckin;
    .locals 2

    .line 1
    new-instance v0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/uwetrottmann/trakt5/entities/MovieCheckin;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->movie:Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin;->movie:Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->sharing:Lcom/uwetrottmann/trakt5/entities/ShareSettings;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/uwetrottmann/trakt5/entities/BaseCheckin;->sharing:Lcom/uwetrottmann/trakt5/entities/ShareSettings;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->message:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/uwetrottmann/trakt5/entities/BaseCheckin;->message:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->venue_id:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/uwetrottmann/trakt5/entities/BaseCheckin;->venue_id:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->venue_name:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/uwetrottmann/trakt5/entities/BaseCheckin;->venue_name:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->app_date:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/uwetrottmann/trakt5/entities/BaseCheckin;->app_date:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->app_version:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v1, v0, Lcom/uwetrottmann/trakt5/entities/BaseCheckin;->app_version:Ljava/lang/String;

    .line 33
    .line 34
    return-object v0
.end method

.method public message(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public sharing(Lcom/uwetrottmann/trakt5/entities/ShareSettings;)Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->sharing:Lcom/uwetrottmann/trakt5/entities/ShareSettings;

    .line 2
    .line 3
    return-object p0
.end method

.method public venueId(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->venue_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public venueName(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/entities/MovieCheckin$Builder;->venue_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
