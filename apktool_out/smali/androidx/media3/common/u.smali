.class public final synthetic Landroidx/media3/common/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP3/C;


# instance fields
.field public final synthetic b:Landroidx/media3/common/SimpleBasePlayer;

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/media3/common/SimpleBasePlayer$State;

.field public final synthetic j:I

.field public final synthetic m:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;ZLandroidx/media3/common/SimpleBasePlayer$State;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/u;->b:Landroidx/media3/common/SimpleBasePlayer;

    iput-boolean p2, p0, Landroidx/media3/common/u;->e:Z

    iput-object p3, p0, Landroidx/media3/common/u;->f:Landroidx/media3/common/SimpleBasePlayer$State;

    iput p4, p0, Landroidx/media3/common/u;->j:I

    iput-wide p5, p0, Landroidx/media3/common/u;->m:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/common/u;->b:Landroidx/media3/common/SimpleBasePlayer;

    iget-boolean v1, p0, Landroidx/media3/common/u;->e:Z

    iget-object v2, p0, Landroidx/media3/common/u;->f:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v3, p0, Landroidx/media3/common/u;->j:I

    iget-wide v4, p0, Landroidx/media3/common/u;->m:J

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/SimpleBasePlayer;->h(Landroidx/media3/common/SimpleBasePlayer;ZLandroidx/media3/common/SimpleBasePlayer$State;IJ)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method
