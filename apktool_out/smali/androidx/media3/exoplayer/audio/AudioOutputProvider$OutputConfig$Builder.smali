.class public final Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private audioSessionId:I

.field private bufferSize:I

.field private channelMask:I

.field private encoding:I

.field private isOffload:Z

.field private isTunneling:Z

.field private sampleRate:I

.field private useOffloadGapless:Z

.field private usePlaybackParameters:Z

.field private virtualDeviceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioSessionId:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->virtualDeviceId:I

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->encoding:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->encoding:I

    .line 8
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->sampleRate:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->sampleRate:I

    .line 9
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->channelMask:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->channelMask:I

    .line 10
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->isTunneling:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->isTunneling:Z

    .line 11
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->isOffload:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->isOffload:Z

    .line 12
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->bufferSize:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->bufferSize:I

    .line 13
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 14
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->audioSessionId:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioSessionId:I

    .line 15
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->virtualDeviceId:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->virtualDeviceId:I

    .line 16
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->usePlaybackParameters:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->usePlaybackParameters:Z

    .line 17
    iget-boolean p1, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->useOffloadGapless:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->useOffloadGapless:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/exoplayer/audio/AudioOutputProvider$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)V

    return-void
.end method

.method public static synthetic access$1200(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->encoding:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1300(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->sampleRate:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1400(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->channelMask:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1500(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->isTunneling:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1600(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->isOffload:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1700(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->bufferSize:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1800(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)Landroidx/media3/common/AudioAttributes;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioSessionId:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2000(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->virtualDeviceId:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2100(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->usePlaybackParameters:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2200(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->useOffloadGapless:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;Landroidx/media3/exoplayer/audio/AudioOutputProvider$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAudioSessionId(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioSessionId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setBufferSize(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->bufferSize:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setChannelMask(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->channelMask:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setEncoding(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->encoding:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsOffload(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->isOffload:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsTunneling(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->isTunneling:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setSampleRate(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->sampleRate:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setUseOffloadGapless(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->useOffloadGapless:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setUsePlaybackParameters(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->usePlaybackParameters:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setVirtualDeviceId(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->virtualDeviceId:I

    .line 2
    .line 3
    return-object p0
.end method
