.class public final LE1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LE1/e;->b:Landroid/content/Intent;

    .line 5
    .line 6
    iput-object p2, p0, LE1/e;->e:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, LE1/e;->f:Landroid/content/BroadcastReceiver$PendingResult;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, LE1/e;->f:Landroid/content/BroadcastReceiver$PendingResult;

    .line 2
    .line 3
    iget-object v1, p0, LE1/e;->e:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, LE1/e;->b:Landroid/content/Intent;

    .line 6
    .line 7
    const-string v3, "Updating proxies: (BatteryNotLowProxy ("

    .line 8
    .line 9
    :try_start_0
    const-string v4, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const-string v6, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    .line 17
    .line 18
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    const-string v7, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    .line 23
    .line 24
    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    const-string v8, "KEY_NETWORK_STATE_PROXY_ENABLED"

    .line 29
    .line 30
    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, "), BatteryChargingProxy ("

    .line 43
    .line 44
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, "), StorageNotLowProxy ("

    .line 51
    .line 52
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, "), NetworkStateProxy ("

    .line 59
    .line 60
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v3, "), "

    .line 67
    .line 68
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    sget-object v8, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v5, v8, v3}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-class v3, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryNotLowProxy;

    .line 85
    .line 86
    invoke-static {v1, v3, v4}, LL1/p;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 87
    .line 88
    .line 89
    const-class v3, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;

    .line 90
    .line 91
    invoke-static {v1, v3, v6}, LL1/p;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 92
    .line 93
    .line 94
    const-class v3, Landroidx/work/impl/background/systemalarm/ConstraintProxy$StorageNotLowProxy;

    .line 95
    .line 96
    invoke-static {v1, v3, v7}, LL1/p;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 97
    .line 98
    .line 99
    const-class v3, Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy;

    .line 100
    .line 101
    invoke-static {v1, v3, v2}, LL1/p;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :catchall_0
    move-exception v1

    .line 109
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 110
    .line 111
    .line 112
    throw v1
.end method
