.class public Lcom/uwetrottmann/trakt5/entities/EpisodeCheckin;
.super Lcom/uwetrottmann/trakt5/entities/BaseCheckin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uwetrottmann/trakt5/entities/EpisodeCheckin$Builder;
    }
.end annotation


# instance fields
.field public episode:Lcom/uwetrottmann/trakt5/entities/SyncEpisode;

.field public show:Lcom/uwetrottmann/trakt5/entities/Show;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/uwetrottmann/trakt5/entities/BaseCheckin;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
