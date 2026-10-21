.class public final synthetic Landroidx/media3/common/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP3/C;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/q;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/q;->f:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/common/q;->j:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/common/q;->m:Ljava/lang/Object;

    iput p4, p0, Landroidx/media3/common/q;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/dash/offline/DashDownloader;Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/dash/manifest/Representation;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/common/q;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/q;->f:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/common/q;->j:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/common/q;->e:I

    iput-object p4, p0, Landroidx/media3/common/q;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/common/q;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/common/q;->m:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/dash/manifest/Representation;

    iget-object v1, p0, Landroidx/media3/common/q;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/dash/offline/DashDownloader;

    iget-object v2, p0, Landroidx/media3/common/q;->j:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/datasource/DataSource;

    iget v3, p0, Landroidx/media3/common/q;->e:I

    invoke-static {v1, v2, v3, v0}, Landroidx/media3/exoplayer/dash/offline/DashDownloader;->b(Landroidx/media3/exoplayer/dash/offline/DashDownloader;Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/dash/manifest/Representation;)Landroidx/media3/common/util/RunnableFutureTask;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/common/q;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/common/q;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/SimpleBasePlayer;

    iget-object v2, p0, Landroidx/media3/common/q;->j:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/SimpleBasePlayer$State;

    iget v3, p0, Landroidx/media3/common/q;->e:I

    invoke-static {v1, v2, v0, v3}, Landroidx/media3/common/SimpleBasePlayer;->I(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;I)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
