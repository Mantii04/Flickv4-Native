.class final Landroidx/media3/common/AudioAttributes$Api29;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api29"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Landroid/media/AudioAttributes$Builder;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/AudioAttributes$Api29;->setHapticChannelsMuted(Landroid/media/AudioAttributes$Builder;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setAllowedCapturePolicy(Landroid/media/AudioAttributes$Builder;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, LI3/v;->o(Landroid/media/AudioAttributes$Builder;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static setHapticChannelsMuted(Landroid/media/AudioAttributes$Builder;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, LI3/v;->p(Landroid/media/AudioAttributes$Builder;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
