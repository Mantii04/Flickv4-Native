.class public final synthetic Landroidx/media3/common/util/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f:Z

.field public final synthetic j:Z

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;ZZI)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/media3/common/util/k;->b:I

    iput-object p1, p0, Landroidx/media3/common/util/k;->m:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/common/util/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p3, p0, Landroidx/media3/common/util/k;->f:Z

    iput-boolean p4, p0, Landroidx/media3/common/util/k;->j:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/common/util/k;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/common/util/k;->m:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/WifiLockManager;

    iget-object v1, p0, Landroidx/media3/common/util/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v2, p0, Landroidx/media3/common/util/k;->f:Z

    iget-boolean v3, p0, Landroidx/media3/common/util/k;->j:Z

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/common/util/WifiLockManager;->a(Landroidx/media3/common/util/WifiLockManager;Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/common/util/k;->m:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/WakeLockManager;

    iget-object v1, p0, Landroidx/media3/common/util/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v2, p0, Landroidx/media3/common/util/k;->f:Z

    iget-boolean v3, p0, Landroidx/media3/common/util/k;->j:Z

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/common/util/WakeLockManager;->a(Landroidx/media3/common/util/WakeLockManager;Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
