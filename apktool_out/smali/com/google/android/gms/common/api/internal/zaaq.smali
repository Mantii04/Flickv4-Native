.class final Lcom/google/android/gms/common/api/internal/zaaq;
.super Lcom/google/android/gms/common/api/internal/zabg;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zaaw;

.field public final synthetic c:Lcom/google/android/gms/signin/internal/zak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaq;->b:Lcom/google/android/gms/common/api/internal/zaaw;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zaaq;->c:Lcom/google/android/gms/signin/internal/zak;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabg;-><init>(Lcom/google/android/gms/common/api/internal/zabf;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaq;->b:Lcom/google/android/gms/common/api/internal/zaaw;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zaaw;->e(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaq;->c:Lcom/google/android/gms/signin/internal/zak;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/signin/internal/zak;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/signin/internal/zak;->zab()Lcom/google/android/gms/common/internal/zav;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/google/android/gms/common/internal/zav;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zav;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v3, Ljava/lang/Exception;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v4, "Sign-in succeeded with resolve account failure: "

    .line 53
    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v4, "GACConnecting"

    .line 59
    .line 60
    invoke-static {v4, v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/zaaw;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    const/4 v2, 0x1

    .line 68
    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/zaaw;->h:Z

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zav;->zab()Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 79
    .line 80
    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaaw;->i:Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zav;->zac()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/zaaw;->j:Z

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zav;->zad()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/zaaw;->k:Z

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->d()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    iget-boolean v1, v0, Lcom/google/android/gms/common/api/internal/zaaw;->f:Z

    .line 99
    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    const/4 v1, 0x0

    .line 110
    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/zaaw;->g:Z

    .line 111
    .line 112
    const/4 v0, 0x0

    .line 113
    throw v0

    .line 114
    :cond_4
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/zaaw;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method
