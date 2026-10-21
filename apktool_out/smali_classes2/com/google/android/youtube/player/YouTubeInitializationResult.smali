.class public final enum Lcom/google/android/youtube/player/YouTubeInitializationResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/youtube/player/YouTubeInitializationResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/google/android/youtube/player/YouTubeInitializationResult;

.field public static final enum e:Lcom/google/android/youtube/player/YouTubeInitializationResult;

.field public static final enum f:Lcom/google/android/youtube/player/YouTubeInitializationResult;

.field public static final enum j:Lcom/google/android/youtube/player/YouTubeInitializationResult;

.field public static final enum m:Lcom/google/android/youtube/player/YouTubeInitializationResult;

.field public static final enum n:Lcom/google/android/youtube/player/YouTubeInitializationResult;

.field public static final enum p:Lcom/google/android/youtube/player/YouTubeInitializationResult;

.field public static final enum q:Lcom/google/android/youtube/player/YouTubeInitializationResult;

.field public static final synthetic r:[Lcom/google/android/youtube/player/YouTubeInitializationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    const/4 v4, 0x7

    .line 10
    const/4 v5, 0x6

    .line 11
    const/4 v6, 0x5

    .line 12
    const/4 v7, 0x4

    .line 13
    const/4 v8, 0x3

    .line 14
    const/4 v9, 0x2

    .line 15
    const/4 v10, 0x1

    .line 16
    const/4 v11, 0x0

    .line 17
    new-instance v12, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 18
    .line 19
    const-string v13, "SUCCESS"

    .line 20
    .line 21
    invoke-direct {v12, v13, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    sput-object v12, Lcom/google/android/youtube/player/YouTubeInitializationResult;->b:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 25
    .line 26
    new-instance v13, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 27
    .line 28
    const-string v14, "INTERNAL_ERROR"

    .line 29
    .line 30
    invoke-direct {v13, v14, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    sput-object v13, Lcom/google/android/youtube/player/YouTubeInitializationResult;->e:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 34
    .line 35
    new-instance v14, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 36
    .line 37
    const-string v15, "UNKNOWN_ERROR"

    .line 38
    .line 39
    invoke-direct {v14, v15, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    sput-object v14, Lcom/google/android/youtube/player/YouTubeInitializationResult;->f:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 43
    .line 44
    new-instance v15, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 45
    .line 46
    move/from16 v16, v9

    .line 47
    .line 48
    const-string v9, "SERVICE_MISSING"

    .line 49
    .line 50
    invoke-direct {v15, v9, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    sput-object v15, Lcom/google/android/youtube/player/YouTubeInitializationResult;->j:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 54
    .line 55
    new-instance v9, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 56
    .line 57
    move/from16 v17, v8

    .line 58
    .line 59
    const-string v8, "SERVICE_VERSION_UPDATE_REQUIRED"

    .line 60
    .line 61
    invoke-direct {v9, v8, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    sput-object v9, Lcom/google/android/youtube/player/YouTubeInitializationResult;->m:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 65
    .line 66
    new-instance v8, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 67
    .line 68
    move/from16 v18, v7

    .line 69
    .line 70
    const-string v7, "SERVICE_DISABLED"

    .line 71
    .line 72
    invoke-direct {v8, v7, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    sput-object v8, Lcom/google/android/youtube/player/YouTubeInitializationResult;->n:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 76
    .line 77
    new-instance v7, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 78
    .line 79
    move/from16 v19, v6

    .line 80
    .line 81
    const-string v6, "SERVICE_INVALID"

    .line 82
    .line 83
    invoke-direct {v7, v6, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    sput-object v7, Lcom/google/android/youtube/player/YouTubeInitializationResult;->p:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 87
    .line 88
    new-instance v6, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 89
    .line 90
    move/from16 v20, v5

    .line 91
    .line 92
    const-string v5, "ERROR_CONNECTING_TO_SERVICE"

    .line 93
    .line 94
    invoke-direct {v6, v5, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    sput-object v6, Lcom/google/android/youtube/player/YouTubeInitializationResult;->q:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 98
    .line 99
    new-instance v5, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 100
    .line 101
    move/from16 v21, v4

    .line 102
    .line 103
    const-string v4, "CLIENT_LIBRARY_UPDATE_REQUIRED"

    .line 104
    .line 105
    invoke-direct {v5, v4, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    new-instance v4, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 109
    .line 110
    move/from16 v22, v3

    .line 111
    .line 112
    const-string v3, "NETWORK_ERROR"

    .line 113
    .line 114
    invoke-direct {v4, v3, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    new-instance v3, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 118
    .line 119
    move/from16 v23, v2

    .line 120
    .line 121
    const-string v2, "DEVELOPER_KEY_INVALID"

    .line 122
    .line 123
    invoke-direct {v3, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    new-instance v2, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 127
    .line 128
    move/from16 v24, v1

    .line 129
    .line 130
    const-string v1, "INVALID_APPLICATION_SIGNATURE"

    .line 131
    .line 132
    invoke-direct {v2, v1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    const/16 v1, 0xc

    .line 136
    .line 137
    new-array v1, v1, [Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 138
    .line 139
    aput-object v12, v1, v11

    .line 140
    .line 141
    aput-object v13, v1, v10

    .line 142
    .line 143
    aput-object v14, v1, v16

    .line 144
    .line 145
    aput-object v15, v1, v17

    .line 146
    .line 147
    aput-object v9, v1, v18

    .line 148
    .line 149
    aput-object v8, v1, v19

    .line 150
    .line 151
    aput-object v7, v1, v20

    .line 152
    .line 153
    aput-object v6, v1, v21

    .line 154
    .line 155
    aput-object v5, v1, v22

    .line 156
    .line 157
    aput-object v4, v1, v23

    .line 158
    .line 159
    aput-object v3, v1, v24

    .line 160
    .line 161
    aput-object v2, v1, v0

    .line 162
    .line 163
    sput-object v1, Lcom/google/android/youtube/player/YouTubeInitializationResult;->r:[Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 164
    .line 165
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubeInitializationResult;
    .locals 1

    const-class v0, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/player/YouTubeInitializationResult;
    .locals 1

    sget-object v0, Lcom/google/android/youtube/player/YouTubeInitializationResult;->r:[Lcom/google/android/youtube/player/YouTubeInitializationResult;

    invoke-virtual {v0}, [Lcom/google/android/youtube/player/YouTubeInitializationResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/player/YouTubeInitializationResult;

    return-object v0
.end method
