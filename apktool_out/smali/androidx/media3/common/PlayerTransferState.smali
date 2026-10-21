.class public final Landroidx/media3/common/PlayerTransferState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/PlayerTransferState$Builder;
    }
.end annotation


# instance fields
.field private final currentMediaItemIndex:I

.field private final currentPosition:J

.field private final mediaItems:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final playWhenReady:Z

.field private final playbackParameters:Landroidx/media3/common/PlaybackParameters;

.field private final repeatMode:I

.field private final shuffleModeEnabled:Z

.field private final trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;


# direct methods
.method private constructor <init>(Landroidx/media3/common/PlayerTransferState$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState$Builder;->access$900(Landroidx/media3/common/PlayerTransferState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/PlayerTransferState;->playWhenReady:Z

    .line 4
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState$Builder;->access$1000(Landroidx/media3/common/PlayerTransferState$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/PlayerTransferState;->repeatMode:I

    .line 5
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState$Builder;->access$1100(Landroidx/media3/common/PlayerTransferState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/PlayerTransferState;->shuffleModeEnabled:Z

    .line 6
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState$Builder;->access$1200(Landroidx/media3/common/PlayerTransferState$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/PlayerTransferState;->currentMediaItemIndex:I

    .line 7
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState$Builder;->access$1300(Landroidx/media3/common/PlayerTransferState$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/common/PlayerTransferState;->currentPosition:J

    .line 8
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState$Builder;->access$1400(Landroidx/media3/common/PlayerTransferState$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 9
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState$Builder;->access$1500(Landroidx/media3/common/PlayerTransferState$Builder;)Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 10
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState$Builder;->access$1600(Landroidx/media3/common/PlayerTransferState$Builder;)Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/PlayerTransferState;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/PlayerTransferState$Builder;Landroidx/media3/common/PlayerTransferState$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/PlayerTransferState;-><init>(Landroidx/media3/common/PlayerTransferState$Builder;)V

    return-void
.end method

.method public static synthetic access$000(Landroidx/media3/common/PlayerTransferState;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/common/PlayerTransferState;->playWhenReady:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$100(Landroidx/media3/common/PlayerTransferState;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/PlayerTransferState;->repeatMode:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$200(Landroidx/media3/common/PlayerTransferState;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/common/PlayerTransferState;->shuffleModeEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$300(Landroidx/media3/common/PlayerTransferState;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/PlayerTransferState;->currentMediaItemIndex:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$400(Landroidx/media3/common/PlayerTransferState;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/common/PlayerTransferState;->currentPosition:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$500(Landroidx/media3/common/PlayerTransferState;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/PlayerTransferState;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Landroidx/media3/common/PlayerTransferState;)Landroidx/media3/common/PlaybackParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/PlayerTransferState;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Landroidx/media3/common/PlayerTransferState;)Landroidx/media3/common/TrackSelectionParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/PlayerTransferState;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 2
    .line 3
    return-object p0
.end method

.method public static builderFromPlayer(Landroidx/media3/common/Player;)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getMediaItemCount()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    invoke-interface {p0, v1}, Landroidx/media3/common/Player;->getMediaItemAt(I)Landroidx/media3/common/MediaItem;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v1, Landroidx/media3/common/PlayerTransferState$Builder;

    .line 27
    .line 28
    invoke-direct {v1}, Landroidx/media3/common/PlayerTransferState$Builder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Landroidx/media3/common/PlayerTransferState$Builder;->setPlayWhenReady(Z)Landroidx/media3/common/PlayerTransferState$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {p0}, Landroidx/media3/common/Player;->getRepeatMode()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, v2}, Landroidx/media3/common/PlayerTransferState$Builder;->setRepeatMode(I)Landroidx/media3/common/PlayerTransferState$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {p0}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Landroidx/media3/common/PlayerTransferState$Builder;->setShuffleModeEnabled(Z)Landroidx/media3/common/PlayerTransferState$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v1, v2}, Landroidx/media3/common/PlayerTransferState$Builder;->setCurrentMediaItemIndex(I)Landroidx/media3/common/PlayerTransferState$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/PlayerTransferState$Builder;->setCurrentPosition(J)Landroidx/media3/common/PlayerTransferState$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Landroidx/media3/common/PlayerTransferState$Builder;->setMediaItems(Ljava/util/List;)Landroidx/media3/common/PlayerTransferState$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroidx/media3/common/PlayerTransferState$Builder;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlayerTransferState$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {p0}, Landroidx/media3/common/Player;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v0, p0}, Landroidx/media3/common/PlayerTransferState$Builder;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/PlayerTransferState$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method public static fromPlayer(Landroidx/media3/common/Player;)Landroidx/media3/common/PlayerTransferState;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/common/PlayerTransferState;->builderFromPlayer(Landroidx/media3/common/Player;)Landroidx/media3/common/PlayerTransferState$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/PlayerTransferState$Builder;->build()Landroidx/media3/common/PlayerTransferState;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/common/PlayerTransferState$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/media3/common/PlayerTransferState$Builder;-><init>(Landroidx/media3/common/PlayerTransferState;Landroidx/media3/common/PlayerTransferState$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-class v2, Landroidx/media3/common/PlayerTransferState;

    .line 9
    .line 10
    if-eq v2, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Landroidx/media3/common/PlayerTransferState;

    .line 14
    .line 15
    iget-boolean v1, p0, Landroidx/media3/common/PlayerTransferState;->playWhenReady:Z

    .line 16
    .line 17
    iget-boolean v2, p1, Landroidx/media3/common/PlayerTransferState;->playWhenReady:Z

    .line 18
    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    iget v1, p0, Landroidx/media3/common/PlayerTransferState;->repeatMode:I

    .line 22
    .line 23
    iget v2, p1, Landroidx/media3/common/PlayerTransferState;->repeatMode:I

    .line 24
    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    iget-boolean v1, p0, Landroidx/media3/common/PlayerTransferState;->shuffleModeEnabled:Z

    .line 28
    .line 29
    iget-boolean v2, p1, Landroidx/media3/common/PlayerTransferState;->shuffleModeEnabled:Z

    .line 30
    .line 31
    if-ne v1, v2, :cond_1

    .line 32
    .line 33
    iget v1, p0, Landroidx/media3/common/PlayerTransferState;->currentMediaItemIndex:I

    .line 34
    .line 35
    iget v2, p1, Landroidx/media3/common/PlayerTransferState;->currentMediaItemIndex:I

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    iget-wide v1, p0, Landroidx/media3/common/PlayerTransferState;->currentPosition:J

    .line 40
    .line 41
    iget-wide v3, p1, Landroidx/media3/common/PlayerTransferState;->currentPosition:J

    .line 42
    .line 43
    cmp-long v1, v1, v3

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/media3/common/PlayerTransferState;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 48
    .line 49
    iget-object v2, p1, Landroidx/media3/common/PlayerTransferState;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 50
    .line 51
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Landroidx/media3/common/PlayerTransferState;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 58
    .line 59
    iget-object v2, p1, Landroidx/media3/common/PlayerTransferState;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 60
    .line 61
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    iget-object v1, p0, Landroidx/media3/common/PlayerTransferState;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 68
    .line 69
    iget-object p1, p1, Landroidx/media3/common/PlayerTransferState;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 70
    .line 71
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    const/4 p1, 0x1

    .line 78
    return p1

    .line 79
    :cond_1
    :goto_0
    return v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/PlayerTransferState;->currentMediaItemIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/common/PlayerTransferState;->currentPosition:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMediaItems()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/common/PlayerTransferState;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/common/PlayerTransferState;->playWhenReady:Z

    .line 2
    .line 3
    return v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/PlayerTransferState;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/PlayerTransferState;->repeatMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/common/PlayerTransferState;->shuffleModeEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/PlayerTransferState;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroidx/media3/common/PlayerTransferState;->playWhenReady:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/media3/common/PlayerTransferState;->repeatMode:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-boolean v2, p0, Landroidx/media3/common/PlayerTransferState;->shuffleModeEnabled:Z

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, p0, Landroidx/media3/common/PlayerTransferState;->currentMediaItemIndex:I

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-wide v4, p0, Landroidx/media3/common/PlayerTransferState;->currentPosition:J

    .line 26
    .line 27
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Landroidx/media3/common/PlayerTransferState;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 32
    .line 33
    iget-object v6, p0, Landroidx/media3/common/PlayerTransferState;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 34
    .line 35
    iget-object v7, p0, Landroidx/media3/common/PlayerTransferState;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 36
    .line 37
    const/16 v8, 0x8

    .line 38
    .line 39
    new-array v8, v8, [Ljava/lang/Object;

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    aput-object v0, v8, v9

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    aput-object v1, v8, v0

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    aput-object v2, v8, v0

    .line 49
    .line 50
    const/4 v0, 0x3

    .line 51
    aput-object v3, v8, v0

    .line 52
    .line 53
    const/4 v0, 0x4

    .line 54
    aput-object v4, v8, v0

    .line 55
    .line 56
    const/4 v0, 0x5

    .line 57
    aput-object v5, v8, v0

    .line 58
    .line 59
    const/4 v0, 0x6

    .line 60
    aput-object v6, v8, v0

    .line 61
    .line 62
    const/4 v0, 0x7

    .line 63
    aput-object v7, v8, v0

    .line 64
    .line 65
    invoke-static {v8}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    return v0
.end method

.method public setToPlayer(Landroidx/media3/common/Player;)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroidx/media3/common/Player;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Landroidx/media3/common/PlayerTransferState;->playWhenReady:Z

    .line 16
    .line 17
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/16 v1, 0xf

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget v0, p0, Landroidx/media3/common/PlayerTransferState;->repeatMode:I

    .line 33
    .line 34
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-interface {p1}, Landroidx/media3/common/Player;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/16 v1, 0xe

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-boolean v0, p0, Landroidx/media3/common/PlayerTransferState;->shuffleModeEnabled:Z

    .line 50
    .line 51
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->setShuffleModeEnabled(Z)V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-interface {p1}, Landroidx/media3/common/Player;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/16 v1, 0x1f

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/media3/common/PlayerTransferState;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 67
    .line 68
    iget v1, p0, Landroidx/media3/common/PlayerTransferState;->currentMediaItemIndex:I

    .line 69
    .line 70
    iget-wide v2, p0, Landroidx/media3/common/PlayerTransferState;->currentPosition:J

    .line 71
    .line 72
    invoke-interface {p1, v0, v1, v2, v3}, Landroidx/media3/common/Player;->setMediaItems(Ljava/util/List;IJ)V

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-interface {p1}, Landroidx/media3/common/Player;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/16 v1, 0xd

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    iget-object v0, p0, Landroidx/media3/common/PlayerTransferState;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 88
    .line 89
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    invoke-interface {p1}, Landroidx/media3/common/Player;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const/16 v1, 0x1d

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    iget-object v0, p0, Landroidx/media3/common/PlayerTransferState;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 105
    .line 106
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    return-void
.end method
