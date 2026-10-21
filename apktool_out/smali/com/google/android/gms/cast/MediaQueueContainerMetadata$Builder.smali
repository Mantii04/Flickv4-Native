.class public Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaQueueContainerMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->b:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->e:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->f:Ljava/util/ArrayList;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->j:Ljava/util/ArrayList;

    .line 18
    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    iput-wide v1, v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->m:D

    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;->a:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaQueueContainerMetadata;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;->a:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 7
    .line 8
    iget v2, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->b:I

    .line 9
    .line 10
    iput v2, v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->b:I

    .line 11
    .line 12
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->e:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->f:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->f:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->j:Ljava/util/ArrayList;

    .line 21
    .line 22
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->j:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-wide v1, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->m:D

    .line 25
    .line 26
    iput-wide v1, v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->m:D

    .line 27
    .line 28
    return-object v0
.end method

.method public final zza(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;->a:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput v2, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->b:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->e:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v3, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->f:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object v3, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->j:Ljava/util/ArrayList;

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    iput-wide v3, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->m:D

    .line 19
    .line 20
    const-string v3, "containerType"

    .line 21
    .line 22
    const-string v4, ""

    .line 23
    .line 24
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const v5, 0x69a7c1

    .line 33
    .line 34
    .line 35
    if-eq v4, v5, :cond_1

    .line 36
    .line 37
    const v5, 0x316473d9

    .line 38
    .line 39
    .line 40
    if-eq v4, v5, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v4, "GENERIC_CONTAINER"

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    move v3, v2

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const-string v4, "AUDIOBOOK_CONTAINER"

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    move v3, v0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    const/4 v3, -0x1

    .line 64
    :goto_1
    if-eqz v3, :cond_4

    .line 65
    .line 66
    if-eq v3, v0, :cond_3

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    iput v0, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->b:I

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    iput v2, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->b:I

    .line 73
    .line 74
    :goto_2
    const-string v3, "title"

    .line 75
    .line 76
    invoke-static {p1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iput-object v3, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->e:Ljava/lang/String;

    .line 81
    .line 82
    const-string v3, "sections"

    .line 83
    .line 84
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_6

    .line 89
    .line 90
    new-instance v4, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v4, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->f:Ljava/util/ArrayList;

    .line 96
    .line 97
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-ge v2, v5, :cond_6

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    if-eqz v5, :cond_5

    .line 108
    .line 109
    new-instance v6, Lcom/google/android/gms/cast/MediaMetadata;

    .line 110
    .line 111
    invoke-direct {v6}, Lcom/google/android/gms/cast/MediaMetadata;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v5}, Lcom/google/android/gms/cast/MediaMetadata;->zzc(Lorg/json/JSONObject;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_5
    add-int/2addr v2, v0

    .line 121
    goto :goto_3

    .line 122
    :cond_6
    const-string v0, "containerImages"

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_7

    .line 129
    .line 130
    new-instance v2, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v2, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->j:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-static {v2, v0}, Lcom/google/android/gms/cast/internal/media/zza;->zzd(Ljava/util/List;Lorg/json/JSONArray;)V

    .line 138
    .line 139
    .line 140
    :cond_7
    iget-wide v2, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->m:D

    .line 141
    .line 142
    const-string v0, "containerDuration"

    .line 143
    .line 144
    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 145
    .line 146
    .line 147
    move-result-wide v2

    .line 148
    iput-wide v2, v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->m:D

    .line 149
    .line 150
    return-object p0
.end method
