.class public final synthetic Landroidx/media3/common/util/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/util/g;->b:I

    iput-object p2, p0, Landroidx/media3/common/util/g;->e:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/common/util/g;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/util/g;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/common/util/g;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/WifiLockManager;

    iget-object v1, p0, Landroidx/media3/common/util/g;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1}, Landroidx/media3/common/util/WifiLockManager;->b(Landroidx/media3/common/util/WifiLockManager;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/common/util/g;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/WakeLockManager;

    iget-object v1, p0, Landroidx/media3/common/util/g;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1}, Landroidx/media3/common/util/WakeLockManager;->b(Landroidx/media3/common/util/WakeLockManager;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/common/util/g;->e:Ljava/lang/Object;

    check-cast v0, LV3/M;

    iget-object v1, p0, Landroidx/media3/common/util/g;->f:Ljava/lang/Object;

    check-cast v1, LV3/F;

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->b(LV3/M;LV3/F;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/media3/common/util/g;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/NetworkTypeObserver;

    iget-object v1, p0, Landroidx/media3/common/util/g;->f:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Landroidx/media3/common/util/NetworkTypeObserver;->a(Landroidx/media3/common/util/NetworkTypeObserver;Landroid/content/Context;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Landroidx/media3/common/util/g;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/BackgroundThreadStateHandler;

    iget-object v1, p0, Landroidx/media3/common/util/g;->f:Ljava/lang/Object;

    check-cast v1, LP3/p;

    invoke-static {v0, v1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->a(Landroidx/media3/common/util/BackgroundThreadStateHandler;LP3/p;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Landroidx/media3/common/util/g;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;

    iget-object v1, p0, Landroidx/media3/common/util/g;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1}, Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;->a(Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Landroidx/media3/common/util/g;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    iget-object v1, p0, Landroidx/media3/common/util/g;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1}, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;->a(Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Landroidx/media3/common/util/g;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/NetworkTypeObserver$Receiver;

    iget-object v1, p0, Landroidx/media3/common/util/g;->f:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Landroidx/media3/common/util/NetworkTypeObserver$Receiver;->a(Landroidx/media3/common/util/NetworkTypeObserver$Receiver;Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
