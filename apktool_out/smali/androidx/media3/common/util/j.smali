.class public final synthetic Landroidx/media3/common/util/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;ZZ)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/util/j;->b:I

    iput-object p2, p0, Landroidx/media3/common/util/j;->j:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/media3/common/util/j;->e:Z

    iput-boolean p4, p0, Landroidx/media3/common/util/j;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/common/util/j;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/common/util/j;->j:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/WifiLockManager;

    iget-boolean v1, p0, Landroidx/media3/common/util/j;->e:Z

    iget-boolean v2, p0, Landroidx/media3/common/util/j;->f:Z

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/WifiLockManager;->c(Landroidx/media3/common/util/WifiLockManager;ZZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/common/util/j;->j:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/WakeLockManager;

    iget-boolean v1, p0, Landroidx/media3/common/util/j;->e:Z

    iget-boolean v2, p0, Landroidx/media3/common/util/j;->f:Z

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/WakeLockManager;->c(Landroidx/media3/common/util/WakeLockManager;ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
