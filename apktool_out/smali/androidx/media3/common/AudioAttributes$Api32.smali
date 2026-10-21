.class final Landroidx/media3/common/AudioAttributes$Api32;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api32"
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

.method public static setIsContentSpatialized(Landroid/media/AudioAttributes$Builder;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, LN/f;->g(Landroid/media/AudioAttributes$Builder;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setSpatializationBehavior(Landroid/media/AudioAttributes$Builder;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, LN/f;->f(Landroid/media/AudioAttributes$Builder;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
