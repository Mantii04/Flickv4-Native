.class public final Lj0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lj0/b;


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public static getInstance(Landroid/content/Context;)Lj0/b;
    .locals 9

    .line 1
    sget-object v0, Lj0/b;->c:Lj0/b;

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    new-instance v0, Lj0/b;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Landroid/content/Intent;

    .line 15
    .line 16
    const-string v3, "android.support.v17.leanback.action.PARTNER_CUSTOMIZATION"

    .line 17
    .line 18
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v4, 0x0

    .line 31
    move-object v5, v4

    .line 32
    move-object v6, v5

    .line 33
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    const/4 v8, 0x1

    .line 38
    if-eqz v7, :cond_2

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 45
    .line 46
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 47
    .line 48
    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v7, :cond_0

    .line 51
    .line 52
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 53
    .line 54
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 55
    .line 56
    and-int/2addr v6, v8

    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    :try_start_0
    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :catch_0
    :cond_0
    if-eqz v5, :cond_1

    .line 64
    .line 65
    move-object v6, v7

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move-object v6, v7

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    :goto_1
    if-nez v5, :cond_3

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    new-instance v4, Lj0/a;

    .line 73
    .line 74
    invoke-direct {v4, v5, v6}, Lj0/a;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_2
    invoke-static {}, Landroidx/leanback/widget/j1;->supportsDynamicShadow()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    iput-boolean v3, v0, Lj0/b;->a:Z

    .line 84
    .line 85
    if-eqz v4, :cond_5

    .line 86
    .line 87
    const-string v1, "leanback_prefer_static_shadows"

    .line 88
    .line 89
    invoke-virtual {v4, v1, v3}, Lj0/a;->getBoolean(Ljava/lang/String;Z)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    iput-boolean v1, v0, Lj0/b;->a:Z

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    iput-boolean v8, v0, Lj0/b;->a:Z

    .line 97
    .line 98
    :cond_5
    :goto_3
    const-string v1, "activity"

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Landroid/app/ActivityManager;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    iput-boolean p0, v0, Lj0/b;->b:Z

    .line 111
    .line 112
    if-eqz v4, :cond_6

    .line 113
    .line 114
    const-string v1, "leanback_outline_clipping_disabled"

    .line 115
    .line 116
    invoke-virtual {v4, v1, p0}, Lj0/a;->getBoolean(Ljava/lang/String;Z)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    iput-boolean p0, v0, Lj0/b;->b:Z

    .line 121
    .line 122
    :cond_6
    sput-object v0, Lj0/b;->c:Lj0/b;

    .line 123
    .line 124
    :cond_7
    sget-object p0, Lj0/b;->c:Lj0/b;

    .line 125
    .line 126
    return-object p0
.end method


# virtual methods
.method public isOutlineClippingDisabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj0/b;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public preferStaticShadows()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj0/b;->a:Z

    .line 2
    .line 3
    return v0
.end method
