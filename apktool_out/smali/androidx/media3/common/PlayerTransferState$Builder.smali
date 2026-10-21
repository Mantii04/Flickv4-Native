.class public final Landroidx/media3/common/PlayerTransferState$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/PlayerTransferState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private currentMediaItemIndex:I

.field private currentPosition:J

.field private mediaItems:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private playWhenReady:Z

.field private playbackParameters:Landroidx/media3/common/PlaybackParameters;

.field private repeatMode:I

.field private shuffleModeEnabled:Z

.field private trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playWhenReady:Z

    .line 4
    iput v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->repeatMode:I

    .line 5
    iput-boolean v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->shuffleModeEnabled:Z

    .line 6
    iput v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentMediaItemIndex:I

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentPosition:J

    .line 8
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 9
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 10
    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT:Landroidx/media3/common/TrackSelectionParameters;

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/PlayerTransferState;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$000(Landroidx/media3/common/PlayerTransferState;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playWhenReady:Z

    .line 13
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$100(Landroidx/media3/common/PlayerTransferState;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->repeatMode:I

    .line 14
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$200(Landroidx/media3/common/PlayerTransferState;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->shuffleModeEnabled:Z

    .line 15
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$300(Landroidx/media3/common/PlayerTransferState;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentMediaItemIndex:I

    .line 16
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$400(Landroidx/media3/common/PlayerTransferState;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentPosition:J

    .line 17
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$500(Landroidx/media3/common/PlayerTransferState;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 18
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$600(Landroidx/media3/common/PlayerTransferState;)Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 19
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$700(Landroidx/media3/common/PlayerTransferState;)Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/PlayerTransferState$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/PlayerTransferState;Landroidx/media3/common/PlayerTransferState$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/PlayerTransferState$Builder;-><init>(Landroidx/media3/common/PlayerTransferState;)V

    return-void
.end method

.method public static synthetic access$1000(Landroidx/media3/common/PlayerTransferState$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->repeatMode:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1100(Landroidx/media3/common/PlayerTransferState$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->shuffleModeEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1200(Landroidx/media3/common/PlayerTransferState$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentMediaItemIndex:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1300(Landroidx/media3/common/PlayerTransferState$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentPosition:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$1400(Landroidx/media3/common/PlayerTransferState$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Landroidx/media3/common/PlayerTransferState$Builder;)Landroidx/media3/common/PlaybackParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1600(Landroidx/media3/common/PlayerTransferState$Builder;)Landroidx/media3/common/TrackSelectionParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Landroidx/media3/common/PlayerTransferState$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playWhenReady:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public build()Landroidx/media3/common/PlayerTransferState;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/common/PlayerTransferState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/media3/common/PlayerTransferState;-><init>(Landroidx/media3/common/PlayerTransferState$Builder;Landroidx/media3/common/PlayerTransferState$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setCurrentMediaItemIndex(I)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentMediaItemIndex:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setCurrentPosition(J)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentPosition:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setMediaItems(Ljava/util/List;)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)",
            "Landroidx/media3/common/PlayerTransferState$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/media3/common/PlayerTransferState$Builder;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    return-object p0
.end method

.method public setPlayWhenReady(Z)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playWhenReady:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 5
    .line 6
    return-object p0
.end method

.method public setRepeatMode(I)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/PlayerTransferState$Builder;->repeatMode:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setShuffleModeEnabled(Z)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/common/PlayerTransferState$Builder;->shuffleModeEnabled:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/PlayerTransferState$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 5
    .line 6
    return-object p0
.end method
