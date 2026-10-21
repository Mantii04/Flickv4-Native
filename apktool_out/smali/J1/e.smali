.class public final LJ1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Landroid/app/Notification;

.field public final synthetic f:I

.field public final synthetic j:Landroidx/work/impl/foreground/SystemForegroundService;


# direct methods
.method public constructor <init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ1/e;->j:Landroidx/work/impl/foreground/SystemForegroundService;

    .line 5
    .line 6
    iput p2, p0, LJ1/e;->b:I

    .line 7
    .line 8
    iput-object p3, p0, LJ1/e;->e:Landroid/app/Notification;

    .line 9
    .line 10
    iput p4, p0, LJ1/e;->f:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    iget v2, p0, LJ1/e;->f:I

    .line 6
    .line 7
    iget-object v3, p0, LJ1/e;->e:Landroid/app/Notification;

    .line 8
    .line 9
    iget v4, p0, LJ1/e;->b:I

    .line 10
    .line 11
    iget-object v5, p0, LJ1/e;->j:Landroidx/work/impl/foreground/SystemForegroundService;

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {v5, v4, v3, v2}, LJ1/i;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/16 v1, 0x1d

    .line 20
    .line 21
    if-lt v0, v1, :cond_1

    .line 22
    .line 23
    invoke-static {v5, v4, v3, v2}, LJ1/h;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {v5, v4, v3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
