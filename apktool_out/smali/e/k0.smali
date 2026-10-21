.class public final Le/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Le/p0;


# direct methods
.method public constructor <init>(Le/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le/k0;->b:Le/p0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/k0;->b:Le/p0;

    .line 2
    .line 3
    iget-object v1, v0, Le/p0;->b:Landroid/view/Window$Callback;

    .line 4
    .line 5
    iget-boolean v2, v0, Le/p0;->e:Z

    .line 6
    .line 7
    iget-object v3, v0, Le/p0;->a:Ll/r2;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    new-instance v2, Le/m0;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Le/m0;-><init>(Le/p0;)V

    .line 14
    .line 15
    .line 16
    new-instance v4, Le/n0;

    .line 17
    .line 18
    invoke-direct {v4, v0}, Le/n0;-><init>(Le/p0;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v3, v2, v4}, Ll/M0;->setMenuCallbacks(Lk/D;Lk/n;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    iput-boolean v2, v0, Le/p0;->e:Z

    .line 26
    .line 27
    :cond_0
    invoke-interface {v3}, Ll/M0;->getMenu()Landroid/view/Menu;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    instance-of v2, v0, Lk/p;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    move-object v2, v0

    .line 37
    check-cast v2, Lk/p;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v2, v3

    .line 41
    :goto_0
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2}, Lk/p;->stopDispatchingItemsChanged()V

    .line 44
    .line 45
    .line 46
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 47
    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-interface {v1, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    invoke-interface {v1, v4, v3, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    :goto_1
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :cond_4
    if-eqz v2, :cond_5

    .line 69
    .line 70
    invoke-virtual {v2}, Lk/p;->startDispatchingItemsChanged()V

    .line 71
    .line 72
    .line 73
    :cond_5
    return-void

    .line 74
    :goto_2
    if-eqz v2, :cond_6

    .line 75
    .line 76
    invoke-virtual {v2}, Lk/p;->startDispatchingItemsChanged()V

    .line 77
    .line 78
    .line 79
    :cond_6
    throw v0
.end method
