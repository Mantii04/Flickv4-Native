.class public interface abstract Landroidx/media3/common/audio/SpeedProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media3/common/audio/SpeedProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/common/audio/SpeedProvider$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/audio/SpeedProvider$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/media3/common/audio/SpeedProvider;->DEFAULT:Landroidx/media3/common/audio/SpeedProvider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract getNextSpeedChangeTimeUs(J)J
.end method

.method public abstract getSpeed(J)F
.end method
