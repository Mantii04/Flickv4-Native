.class public final synthetic Landroidx/media3/common/audio/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP3/p;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(JJLandroidx/media3/common/audio/DefaultGainProvider$FadeProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/common/audio/f;->a:J

    iput-object p5, p0, Landroidx/media3/common/audio/f;->b:Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;

    iput-wide p3, p0, Landroidx/media3/common/audio/f;->c:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v5, p1

    check-cast v5, Landroid/util/Pair;

    iget-wide v0, p0, Landroidx/media3/common/audio/f;->a:J

    iget-object v2, p0, Landroidx/media3/common/audio/f;->b:Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;

    iget-wide v3, p0, Landroidx/media3/common/audio/f;->c:J

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/audio/DefaultGainProvider$Builder;->a(JLandroidx/media3/common/audio/DefaultGainProvider$FadeProvider;JLandroid/util/Pair;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
