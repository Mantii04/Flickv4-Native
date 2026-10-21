.class public Lcom/ax/altpop/boot/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.ax.altpop.boot.BootReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string v0, "On Boot "

    .line 2
    .line 3
    :try_start_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Lcom/ax/altpop/boot/BootReceiver;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, LQ1/b;->a(Landroid/content/Context;)LQ1/b;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    sget-object p2, LQ1/c;->u:Ljava/lang/String;

    .line 43
    .line 44
    sget-object v0, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_0

    .line 52
    .line 53
    sget-object p2, LQ1/c;->e:Ljava/lang/String;

    .line 54
    .line 55
    sget-object v0, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 56
    .line 57
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    new-instance v0, Lcom/ax/altpop/AltConfig;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/ax/altpop/AltConfig;-><init>()V

    .line 66
    .line 67
    .line 68
    sget-object v2, LQ1/c;->d:Ljava/lang/String;

    .line 69
    .line 70
    sget-object v3, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Lcom/ax/altpop/AltConfig;->setPublisher(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-object v2, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 81
    .line 82
    invoke-interface {v2, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-virtual {v0, p2}, Lcom/ax/altpop/AltConfig;->setFg(Z)V

    .line 87
    .line 88
    .line 89
    sget-object p2, LQ1/c;->c:Ljava/lang/String;

    .line 90
    .line 91
    sget-object v2, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 92
    .line 93
    invoke-interface {v2, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    invoke-virtual {v0, p2}, Lcom/ax/altpop/AltConfig;->setLoggable(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1, v0}, Lcom/ax/altpop/AltPop;->initialize(Landroid/content/Context;Lcom/ax/altpop/AltConfig;)Lcom/ax/altpop/AltPop;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/ax/altpop/AltPop;->start()Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    :catch_0
    :cond_0
    return-void
.end method
