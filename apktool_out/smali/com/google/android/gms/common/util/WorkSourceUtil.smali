.class public Lcom/google/android/gms/common/util/WorkSourceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "add"

    .line 5
    .line 6
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 7
    .line 8
    const-class v5, Landroid/os/WorkSource;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-array v6, v2, [Ljava/lang/Class;

    .line 14
    .line 15
    aput-object v4, v6, v1

    .line 16
    .line 17
    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    const-class v7, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    :try_start_1
    new-array v6, v0, [Ljava/lang/Class;

    .line 29
    .line 30
    aput-object v4, v6, v1

    .line 31
    .line 32
    aput-object v7, v6, v2

    .line 33
    .line 34
    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    .line 36
    .line 37
    :catch_1
    :cond_0
    :try_start_2
    const-string v3, "size"

    .line 38
    .line 39
    new-array v6, v1, [Ljava/lang/Class;

    .line 40
    .line 41
    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 42
    .line 43
    .line 44
    :catch_2
    :try_start_3
    const-string v3, "get"

    .line 45
    .line 46
    new-array v6, v2, [Ljava/lang/Class;

    .line 47
    .line 48
    aput-object v4, v6, v1

    .line 49
    .line 50
    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 51
    .line 52
    .line 53
    :catch_3
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    :try_start_4
    const-string v3, "getName"

    .line 60
    .line 61
    new-array v6, v2, [Ljava/lang/Class;

    .line 62
    .line 63
    aput-object v4, v6, v1

    .line 64
    .line 65
    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 66
    .line 67
    .line 68
    :catch_4
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastP()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const-string v6, "WorkSourceUtil"

    .line 73
    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    :try_start_5
    const-string v3, "createWorkChain"

    .line 77
    .line 78
    new-array v8, v1, [Ljava/lang/Class;

    .line 79
    .line 80
    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_5
    move-exception v3

    .line 85
    const-string v8, "Missing WorkChain API createWorkChain"

    .line 86
    .line 87
    invoke-static {v6, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastP()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    :try_start_6
    const-string v3, "android.os.WorkSource$WorkChain"

    .line 97
    .line 98
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const-string v8, "addNode"

    .line 103
    .line 104
    new-array v0, v0, [Ljava/lang/Class;

    .line 105
    .line 106
    aput-object v4, v0, v1

    .line 107
    .line 108
    aput-object v7, v0, v2

    .line 109
    .line 110
    invoke-virtual {v3, v8, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catch_6
    move-exception v0

    .line 115
    const-string v3, "Missing WorkChain class"

    .line 116
    .line 117
    invoke-static {v6, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .line 119
    .line 120
    :cond_3
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastP()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    :try_start_7
    const-string v0, "isEmpty"

    .line 127
    .line 128
    new-array v1, v1, [Ljava/lang/Class;

    .line 129
    .line 130
    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 135
    .line 136
    .line 137
    :catch_7
    :cond_4
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
