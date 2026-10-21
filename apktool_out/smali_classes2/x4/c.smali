.class public final synthetic Lx4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/App;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/App;I)V
    .locals 0

    .line 1
    iput p2, p0, Lx4/c;->b:I

    iput-object p1, p0, Lx4/c;->e:Lflix/com/vision/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lx4/c;->e:Lflix/com/vision/App;

    .line 2
    .line 3
    iget v1, p0, Lx4/c;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v1, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Lflix/com/vision/App;->cleanTorrentsRealDebrid()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget-object v1, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    :try_start_0
    invoke-virtual {v0}, Lflix/com/vision/App;->d()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lflix/com/vision/App;->b()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lflix/com/vision/App;->fetchReleaseNote()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lflix/com/vision/App;->loadRemoteConfig()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, LV4/a;->fetchTMDBAPI()V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v2}, Lflix/com/vision/App;->initTech(Landroid/app/Activity;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, LT4/a;->getInstance()LT4/a;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2, v0}, LT4/a;->init(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    sput-boolean v1, Lflix/com/vision/App;->N:Z

    .line 44
    .line 45
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v2, LR4/d;

    .line 50
    .line 51
    invoke-direct {v2}, LR4/d;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v2, "AppInit"

    .line 60
    .line 61
    const-string v3, "Background init failed"

    .line 62
    .line 63
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    sput-boolean v1, Lflix/com/vision/App;->N:Z

    .line 67
    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, LR4/d;

    .line 73
    .line 74
    invoke-direct {v1}, LR4/d;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void

    .line 81
    :pswitch_1
    sget-object v1, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v1, "Anime section ready..."

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
