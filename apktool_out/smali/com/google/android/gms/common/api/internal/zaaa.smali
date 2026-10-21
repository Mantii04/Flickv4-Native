.class final Lcom/google/android/gms/common/api/internal/zaaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zaca;


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:Lcom/google/android/gms/common/ConnectionResult;

.field public c:Lcom/google/android/gms/common/ConnectionResult;

.field public d:Z

.field public e:I


# direct methods
.method public static b(Lcom/google/android/gms/common/api/internal/zaaa;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->b:Lcom/google/android/gms/common/ConnectionResult;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    if-eqz v0, :cond_9

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->c:Lcom/google/android/gms/common/ConnectionResult;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    move v0, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v1

    .line 31
    :goto_1
    if-nez v0, :cond_6

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->c:Lcom/google/android/gms/common/ConnectionResult;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v3, 0x4

    .line 42
    if-ne v0, v3, :cond_2

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->c:Lcom/google/android/gms/common/ConnectionResult;

    .line 46
    .line 47
    if-eqz v0, :cond_d

    .line 48
    .line 49
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->e:I

    .line 50
    .line 51
    if-ne v0, v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaa;->a()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->e:I

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    if-eq v0, v1, :cond_5

    .line 61
    .line 62
    const/4 v1, 0x2

    .line 63
    if-eq v0, v1, :cond_4

    .line 64
    .line 65
    new-instance v0, Ljava/lang/Exception;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "CompositeGAC"

    .line 71
    .line 72
    const-string v2, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    .line 73
    .line 74
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    const/4 p0, 0x0

    .line 79
    throw p0

    .line 80
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaa;->a()V

    .line 81
    .line 82
    .line 83
    :goto_2
    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->e:I

    .line 85
    .line 86
    const/4 p0, 0x0

    .line 87
    throw p0

    .line 88
    :cond_6
    :goto_3
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->e:I

    .line 89
    .line 90
    if-eq v0, v2, :cond_8

    .line 91
    .line 92
    const/4 v2, 0x2

    .line 93
    if-eq v0, v2, :cond_7

    .line 94
    .line 95
    new-instance v0, Ljava/lang/AssertionError;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v2, "CompositeGAC"

    .line 101
    .line 102
    const-string v3, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    .line 103
    .line 104
    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_7
    const/4 v0, 0x0

    .line 109
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lcom/google/android/gms/common/api/internal/zabe;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaaa;->a:Landroid/os/Bundle;

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/zabe;->zab(Landroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaa;->a()V

    .line 121
    .line 122
    .line 123
    :goto_4
    iput v1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->e:I

    .line 124
    .line 125
    return-void

    .line 126
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->b:Lcom/google/android/gms/common/ConnectionResult;

    .line 127
    .line 128
    if-eqz v0, :cond_b

    .line 129
    .line 130
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->c:Lcom/google/android/gms/common/ConnectionResult;

    .line 131
    .line 132
    if-eqz v0, :cond_b

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_a

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_a
    const/4 p0, 0x0

    .line 142
    throw p0

    .line 143
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->b:Lcom/google/android/gms/common/ConnectionResult;

    .line 144
    .line 145
    if-eqz v0, :cond_d

    .line 146
    .line 147
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->c:Lcom/google/android/gms/common/ConnectionResult;

    .line 148
    .line 149
    if-nez p0, :cond_c

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_c
    const/4 p0, 0x0

    .line 153
    throw p0

    .line 154
    :cond_d
    :goto_6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
