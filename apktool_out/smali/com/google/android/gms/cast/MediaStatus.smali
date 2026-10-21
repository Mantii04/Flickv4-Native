.class public Lcom/google/android/gms/cast/MediaStatus;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaStatus$Writer;,
        Lcom/google/android/gms/cast/MediaStatus$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Z

.field public B:Lcom/google/android/gms/cast/AdBreakStatus;

.field public C:Lcom/google/android/gms/cast/VideoInfo;

.field public D:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

.field public E:Lcom/google/android/gms/cast/MediaQueueData;

.field public F:Z

.field public final G:Landroid/util/SparseArray;

.field public b:Lcom/google/android/gms/cast/MediaInfo;

.field public e:J

.field public f:I

.field public j:D

.field public m:I

.field public n:I

.field public p:J

.field public q:J

.field public r:D

.field public s:Z

.field public t:[J

.field public u:I

.field public v:I

.field public w:Ljava/lang/String;

.field public x:Lorg/json/JSONObject;

.field public y:I

.field public final z:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "MediaStatus"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/cast/zzcm;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/cast/zzcm;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/cast/MediaStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;Lcom/google/android/gms/cast/MediaLiveSeekableRange;Lcom/google/android/gms/cast/MediaQueueData;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/cast/MediaInfo;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p2    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p5    # D
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p8    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p9    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p11    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p13    # D
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p15    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p16    # [J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p17    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p18    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p20    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p21    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p22    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p23    # Lcom/google/android/gms/cast/AdBreakStatus;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p24    # Lcom/google/android/gms/cast/VideoInfo;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p25    # Lcom/google/android/gms/cast/MediaLiveSeekableRange;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p26    # Lcom/google/android/gms/cast/MediaQueueData;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonSdkVisibleApi"
        }
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    move-object/from16 v0, p19

    move-object/from16 v1, p21

    move-object/from16 v2, p26

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->z:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->G:Landroid/util/SparseArray;

    new-instance v3, Lcom/google/android/gms/cast/MediaStatus$Writer;

    invoke-direct {v3, p0}, Lcom/google/android/gms/cast/MediaStatus$Writer;-><init>(Lcom/google/android/gms/cast/MediaStatus;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->b:Lcom/google/android/gms/cast/MediaInfo;

    iput-wide p2, p0, Lcom/google/android/gms/cast/MediaStatus;->e:J

    iput p4, p0, Lcom/google/android/gms/cast/MediaStatus;->f:I

    iput-wide p5, p0, Lcom/google/android/gms/cast/MediaStatus;->j:D

    iput p7, p0, Lcom/google/android/gms/cast/MediaStatus;->m:I

    iput p8, p0, Lcom/google/android/gms/cast/MediaStatus;->n:I

    iput-wide p9, p0, Lcom/google/android/gms/cast/MediaStatus;->p:J

    move-wide p1, p11

    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaStatus;->q:J

    move-wide/from16 p1, p13

    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaStatus;->r:D

    move/from16 p1, p15

    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaStatus;->s:Z

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->t:[J

    move/from16 p1, p17

    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus;->u:I

    move/from16 p1, p18

    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus;->v:I

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->w:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/cast/MediaStatus;->w:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->x:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move/from16 p1, p20

    goto :goto_1

    .line 5
    :catch_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->x:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->w:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->x:Lorg/json/JSONObject;

    goto :goto_0

    .line 6
    :goto_1
    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus;->y:I

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/MediaStatus;->a(Ljava/util/List;)V

    :cond_1
    move/from16 p1, p22

    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaStatus;->A:Z

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->B:Lcom/google/android/gms/cast/AdBreakStatus;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->C:Lcom/google/android/gms/cast/VideoInfo;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->D:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->E:Lcom/google/android/gms/cast/MediaQueueData;

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaQueueData;->zzk()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    :cond_2
    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaStatus;->F:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 27
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    .line 9
    invoke-direct/range {v0 .. v26}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;Lcom/google/android/gms/cast/MediaLiveSeekableRange;Lcom/google/android/gms/cast/MediaQueueData;)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 10
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->z:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->G:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_0

    .line 17
    .line 18
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    goto/16 :goto_2

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaStatus;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->x:Lorg/json/JSONObject;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    move v1, v0

    .line 22
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->x:Lorg/json/JSONObject;

    .line 23
    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    move v3, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    move v3, v0

    .line 29
    :goto_1
    if-eq v1, v3, :cond_4

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->e:J

    .line 34
    .line 35
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->e:J

    .line 36
    .line 37
    cmp-long v1, v3, v5

    .line 38
    .line 39
    if-nez v1, :cond_6

    .line 40
    .line 41
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 42
    .line 43
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 44
    .line 45
    if-ne v1, v3, :cond_6

    .line 46
    .line 47
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->j:D

    .line 48
    .line 49
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->j:D

    .line 50
    .line 51
    cmpl-double v1, v3, v5

    .line 52
    .line 53
    if-nez v1, :cond_6

    .line 54
    .line 55
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->m:I

    .line 56
    .line 57
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->m:I

    .line 58
    .line 59
    if-ne v1, v3, :cond_6

    .line 60
    .line 61
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->n:I

    .line 62
    .line 63
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->n:I

    .line 64
    .line 65
    if-ne v1, v3, :cond_6

    .line 66
    .line 67
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->p:J

    .line 68
    .line 69
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->p:J

    .line 70
    .line 71
    cmp-long v1, v3, v5

    .line 72
    .line 73
    if-nez v1, :cond_6

    .line 74
    .line 75
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->r:D

    .line 76
    .line 77
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->r:D

    .line 78
    .line 79
    cmpl-double v1, v3, v5

    .line 80
    .line 81
    if-nez v1, :cond_6

    .line 82
    .line 83
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->s:Z

    .line 84
    .line 85
    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaStatus;->s:Z

    .line 86
    .line 87
    if-ne v1, v3, :cond_6

    .line 88
    .line 89
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->u:I

    .line 90
    .line 91
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->u:I

    .line 92
    .line 93
    if-ne v1, v3, :cond_6

    .line 94
    .line 95
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->v:I

    .line 96
    .line 97
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->v:I

    .line 98
    .line 99
    if-ne v1, v3, :cond_6

    .line 100
    .line 101
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->y:I

    .line 102
    .line 103
    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->y:I

    .line 104
    .line 105
    if-ne v1, v3, :cond_6

    .line 106
    .line 107
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->t:[J

    .line 108
    .line 109
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->t:[J

    .line 110
    .line 111
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->q:J

    .line 118
    .line 119
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-wide v3, p1, Lcom/google/android/gms/cast/MediaStatus;->q:J

    .line 124
    .line 125
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_6

    .line 134
    .line 135
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->z:Ljava/util/ArrayList;

    .line 136
    .line 137
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->z:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_6

    .line 144
    .line 145
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->b:Lcom/google/android/gms/cast/MediaInfo;

    .line 146
    .line 147
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->b:Lcom/google/android/gms/cast/MediaInfo;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->x:Lorg/json/JSONObject;

    .line 156
    .line 157
    if-eqz v1, :cond_5

    .line 158
    .line 159
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->x:Lorg/json/JSONObject;

    .line 160
    .line 161
    if-eqz v3, :cond_5

    .line 162
    .line 163
    invoke-static {v1, v3}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_6

    .line 168
    .line 169
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->A:Z

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->isPlayingAd()Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-ne v1, v3, :cond_6

    .line 176
    .line 177
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->B:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 178
    .line 179
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->B:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 180
    .line 181
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_6

    .line 186
    .line 187
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->C:Lcom/google/android/gms/cast/VideoInfo;

    .line 188
    .line 189
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->C:Lcom/google/android/gms/cast/VideoInfo;

    .line 190
    .line 191
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_6

    .line 196
    .line 197
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->D:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 198
    .line 199
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->D:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 200
    .line 201
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_6

    .line 206
    .line 207
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->E:Lcom/google/android/gms/cast/MediaQueueData;

    .line 208
    .line 209
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->E:Lcom/google/android/gms/cast/MediaQueueData;

    .line 210
    .line 211
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_6

    .line 216
    .line 217
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->F:Z

    .line 218
    .line 219
    iget-boolean p1, p1, Lcom/google/android/gms/cast/MediaStatus;->F:Z

    .line 220
    .line 221
    if-ne v1, p1, :cond_6

    .line 222
    .line 223
    :goto_2
    return v0

    .line 224
    :cond_6
    :goto_3
    return v2
.end method

.method public getActiveTrackIds()[J
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->t:[J

    return-object v0
.end method

.method public getAdBreakStatus()Lcom/google/android/gms/cast/AdBreakStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->B:Lcom/google/android/gms/cast/AdBreakStatus;

    return-object v0
.end method

.method public getCurrentAdBreakClip()Lcom/google/android/gms/cast/AdBreakClipInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->B:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakStatus;->getBreakClipId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->b:Lcom/google/android/gms/cast/MediaInfo;

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreakClips()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_5

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_5

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/google/android/gms/cast/AdBreakClipInfo;->getId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    return-object v3

    .line 63
    :cond_5
    :goto_0
    return-object v1
.end method

.method public getCurrentItemId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->f:I

    return v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->x:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getIdleReason()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->n:I

    return v0
.end method

.method public getIndexById(I)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->G:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    return-object p1
.end method

.method public getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->G:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->z:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 24
    .line 25
    return-object p1
.end method

.method public getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->D:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    return-object v0
.end method

.method public getLoadingItemId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->u:I

    return v0
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->b:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public getPlaybackRate()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->j:D

    return-wide v0
.end method

.method public getPlayerState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->m:I

    return v0
.end method

.method public getPreloadedItemId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->v:I

    return v0
.end method

.method public getQueueData()Lcom/google/android/gms/cast/MediaQueueData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->E:Lcom/google/android/gms/cast/MediaQueueData;

    return-object v0
.end method

.method public getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaStatus;->getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getQueueItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->z:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getQueueRepeatMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->y:I

    return v0
.end method

.method public getStreamPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->p:J

    return-wide v0
.end method

.method public getStreamVolume()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->r:D

    return-wide v0
.end method

.method public getVideoInfo()Lcom/google/android/gms/cast/VideoInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->C:Lcom/google/android/gms/cast/VideoInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->b:Lcom/google/android/gms/cast/MediaInfo;

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/google/android/gms/cast/MediaStatus;->e:J

    .line 6
    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget v3, v0, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-wide v4, v0, Lcom/google/android/gms/cast/MediaStatus;->j:D

    .line 18
    .line 19
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget v5, v0, Lcom/google/android/gms/cast/MediaStatus;->m:I

    .line 24
    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget v6, v0, Lcom/google/android/gms/cast/MediaStatus;->n:I

    .line 30
    .line 31
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget-wide v7, v0, Lcom/google/android/gms/cast/MediaStatus;->p:J

    .line 36
    .line 37
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    iget-wide v8, v0, Lcom/google/android/gms/cast/MediaStatus;->q:J

    .line 42
    .line 43
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    iget-wide v9, v0, Lcom/google/android/gms/cast/MediaStatus;->r:D

    .line 48
    .line 49
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    iget-boolean v10, v0, Lcom/google/android/gms/cast/MediaStatus;->s:Z

    .line 54
    .line 55
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    iget-object v11, v0, Lcom/google/android/gms/cast/MediaStatus;->t:[J

    .line 60
    .line 61
    invoke-static {v11}, Ljava/util/Arrays;->hashCode([J)I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    iget v12, v0, Lcom/google/android/gms/cast/MediaStatus;->u:I

    .line 70
    .line 71
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    iget v13, v0, Lcom/google/android/gms/cast/MediaStatus;->v:I

    .line 76
    .line 77
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    iget-object v14, v0, Lcom/google/android/gms/cast/MediaStatus;->x:Lorg/json/JSONObject;

    .line 82
    .line 83
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    iget v15, v0, Lcom/google/android/gms/cast/MediaStatus;->y:I

    .line 88
    .line 89
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    move-object/from16 v16, v1

    .line 94
    .line 95
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->z:Ljava/util/ArrayList;

    .line 96
    .line 97
    move-object/from16 v17, v1

    .line 98
    .line 99
    iget-boolean v1, v0, Lcom/google/android/gms/cast/MediaStatus;->A:Z

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object/from16 v18, v1

    .line 106
    .line 107
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->B:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 108
    .line 109
    move-object/from16 v19, v1

    .line 110
    .line 111
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->C:Lcom/google/android/gms/cast/VideoInfo;

    .line 112
    .line 113
    move-object/from16 v20, v1

    .line 114
    .line 115
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->D:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 116
    .line 117
    move-object/from16 v21, v1

    .line 118
    .line 119
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->E:Lcom/google/android/gms/cast/MediaQueueData;

    .line 120
    .line 121
    const/16 v0, 0x15

    .line 122
    .line 123
    new-array v0, v0, [Ljava/lang/Object;

    .line 124
    .line 125
    const/16 v22, 0x0

    .line 126
    .line 127
    aput-object v16, v0, v22

    .line 128
    .line 129
    const/16 v16, 0x1

    .line 130
    .line 131
    aput-object v2, v0, v16

    .line 132
    .line 133
    const/4 v2, 0x2

    .line 134
    aput-object v3, v0, v2

    .line 135
    .line 136
    const/4 v2, 0x3

    .line 137
    aput-object v4, v0, v2

    .line 138
    .line 139
    const/4 v2, 0x4

    .line 140
    aput-object v5, v0, v2

    .line 141
    .line 142
    const/4 v2, 0x5

    .line 143
    aput-object v6, v0, v2

    .line 144
    .line 145
    const/4 v2, 0x6

    .line 146
    aput-object v7, v0, v2

    .line 147
    .line 148
    const/4 v2, 0x7

    .line 149
    aput-object v8, v0, v2

    .line 150
    .line 151
    const/16 v2, 0x8

    .line 152
    .line 153
    aput-object v9, v0, v2

    .line 154
    .line 155
    const/16 v2, 0x9

    .line 156
    .line 157
    aput-object v10, v0, v2

    .line 158
    .line 159
    const/16 v2, 0xa

    .line 160
    .line 161
    aput-object v11, v0, v2

    .line 162
    .line 163
    const/16 v2, 0xb

    .line 164
    .line 165
    aput-object v12, v0, v2

    .line 166
    .line 167
    const/16 v2, 0xc

    .line 168
    .line 169
    aput-object v13, v0, v2

    .line 170
    .line 171
    const/16 v2, 0xd

    .line 172
    .line 173
    aput-object v14, v0, v2

    .line 174
    .line 175
    const/16 v2, 0xe

    .line 176
    .line 177
    aput-object v15, v0, v2

    .line 178
    .line 179
    const/16 v2, 0xf

    .line 180
    .line 181
    aput-object v17, v0, v2

    .line 182
    .line 183
    const/16 v2, 0x10

    .line 184
    .line 185
    aput-object v18, v0, v2

    .line 186
    .line 187
    const/16 v2, 0x11

    .line 188
    .line 189
    aput-object v19, v0, v2

    .line 190
    .line 191
    const/16 v2, 0x12

    .line 192
    .line 193
    aput-object v20, v0, v2

    .line 194
    .line 195
    const/16 v2, 0x13

    .line 196
    .line 197
    aput-object v21, v0, v2

    .line 198
    .line 199
    const/16 v2, 0x14

    .line 200
    .line 201
    aput-object v1, v0, v2

    .line 202
    .line 203
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    return v0
.end method

.method public isMediaCommandSupported(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->q:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->s:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->A:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->x:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->w:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->e:J

    .line 28
    .line 29
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x5

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x6

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x7

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getIdleReason()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 62
    .line 63
    .line 64
    const/16 v1, 0x8

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 71
    .line 72
    .line 73
    const/16 v1, 0x9

    .line 74
    .line 75
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->q:J

    .line 76
    .line 77
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 78
    .line 79
    .line 80
    const/16 v1, 0xa

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getStreamVolume()D

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 87
    .line 88
    .line 89
    const/16 v1, 0xb

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->isMute()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 96
    .line 97
    .line 98
    const/16 v1, 0xc

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getActiveTrackIds()[J

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongArray(Landroid/os/Parcel;I[JZ)V

    .line 105
    .line 106
    .line 107
    const/16 v1, 0xd

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getLoadingItemId()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 114
    .line 115
    .line 116
    const/16 v1, 0xe

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getPreloadedItemId()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 123
    .line 124
    .line 125
    const/16 v1, 0xf

    .line 126
    .line 127
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->w:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 130
    .line 131
    .line 132
    const/16 v1, 0x10

    .line 133
    .line 134
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->y:I

    .line 135
    .line 136
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->z:Ljava/util/ArrayList;

    .line 140
    .line 141
    const/16 v2, 0x11

    .line 142
    .line 143
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 144
    .line 145
    .line 146
    const/16 v1, 0x12

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->isPlayingAd()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 153
    .line 154
    .line 155
    const/16 v1, 0x13

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getAdBreakStatus()Lcom/google/android/gms/cast/AdBreakStatus;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 162
    .line 163
    .line 164
    const/16 v1, 0x14

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getVideoInfo()Lcom/google/android/gms/cast/VideoInfo;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 171
    .line 172
    .line 173
    const/16 v1, 0x15

    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 180
    .line 181
    .line 182
    const/16 v1, 0x16

    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getQueueData()Lcom/google/android/gms/cast/MediaQueueData;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 189
    .line 190
    .line 191
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public final zza(Lorg/json/JSONObject;I)I
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x2

    .line 8
    const-string v5, "extendedStatus"

    .line 9
    .line 10
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    const/4 v7, 0x0

    .line 15
    if-eqz v6, :cond_2

    .line 16
    .line 17
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v10

    .line 30
    if-eqz v10, :cond_0

    .line 31
    .line 32
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    check-cast v10, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v9, Lorg/json/JSONObject;

    .line 43
    .line 44
    new-array v10, v7, [Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    check-cast v8, [Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {v9, v0, v8}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    if-eqz v10, :cond_1

    .line 64
    .line 65
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    check-cast v10, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catch_0
    :cond_2
    move-object v9, v0

    .line 84
    :goto_2
    const-string v0, "mediaSessionId"

    .line 85
    .line 86
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v5

    .line 90
    iget-wide v10, v1, Lcom/google/android/gms/cast/MediaStatus;->e:J

    .line 91
    .line 92
    cmp-long v0, v5, v10

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    iput-wide v5, v1, Lcom/google/android/gms/cast/MediaStatus;->e:J

    .line 97
    .line 98
    move v0, v3

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    move v0, v7

    .line 101
    :goto_3
    const-string v5, "playerState"

    .line 102
    .line 103
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    const/4 v8, 0x3

    .line 108
    if-eqz v6, :cond_e

    .line 109
    .line 110
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const-string v6, "IDLE"

    .line 115
    .line 116
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_4

    .line 121
    .line 122
    move v5, v3

    .line 123
    goto :goto_4

    .line 124
    :cond_4
    const-string v6, "PLAYING"

    .line 125
    .line 126
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_5

    .line 131
    .line 132
    move v5, v4

    .line 133
    goto :goto_4

    .line 134
    :cond_5
    const-string v6, "PAUSED"

    .line 135
    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-eqz v6, :cond_6

    .line 141
    .line 142
    move v5, v8

    .line 143
    goto :goto_4

    .line 144
    :cond_6
    const-string v6, "BUFFERING"

    .line 145
    .line 146
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-eqz v6, :cond_7

    .line 151
    .line 152
    move v5, v2

    .line 153
    goto :goto_4

    .line 154
    :cond_7
    const-string v6, "LOADING"

    .line 155
    .line 156
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_8

    .line 161
    .line 162
    const/4 v5, 0x5

    .line 163
    goto :goto_4

    .line 164
    :cond_8
    move v5, v7

    .line 165
    :goto_4
    iget v6, v1, Lcom/google/android/gms/cast/MediaStatus;->m:I

    .line 166
    .line 167
    if-eq v5, v6, :cond_9

    .line 168
    .line 169
    iput v5, v1, Lcom/google/android/gms/cast/MediaStatus;->m:I

    .line 170
    .line 171
    or-int/2addr v0, v4

    .line 172
    :cond_9
    if-ne v5, v3, :cond_e

    .line 173
    .line 174
    const-string v5, "idleReason"

    .line 175
    .line 176
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-eqz v6, :cond_e

    .line 181
    .line 182
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    const-string v6, "CANCELLED"

    .line 187
    .line 188
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-eqz v6, :cond_a

    .line 193
    .line 194
    move v5, v4

    .line 195
    goto :goto_5

    .line 196
    :cond_a
    const-string v6, "INTERRUPTED"

    .line 197
    .line 198
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-eqz v6, :cond_b

    .line 203
    .line 204
    move v5, v8

    .line 205
    goto :goto_5

    .line 206
    :cond_b
    const-string v6, "FINISHED"

    .line 207
    .line 208
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    if-eqz v6, :cond_c

    .line 213
    .line 214
    move v5, v3

    .line 215
    goto :goto_5

    .line 216
    :cond_c
    const-string v6, "ERROR"

    .line 217
    .line 218
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    if-eqz v5, :cond_d

    .line 223
    .line 224
    move v5, v2

    .line 225
    goto :goto_5

    .line 226
    :cond_d
    move v5, v7

    .line 227
    :goto_5
    iget v6, v1, Lcom/google/android/gms/cast/MediaStatus;->n:I

    .line 228
    .line 229
    if-eq v5, v6, :cond_e

    .line 230
    .line 231
    iput v5, v1, Lcom/google/android/gms/cast/MediaStatus;->n:I

    .line 232
    .line 233
    or-int/2addr v0, v4

    .line 234
    :cond_e
    const-string v5, "playbackRate"

    .line 235
    .line 236
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-eqz v6, :cond_f

    .line 241
    .line 242
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 243
    .line 244
    .line 245
    move-result-wide v5

    .line 246
    iget-wide v10, v1, Lcom/google/android/gms/cast/MediaStatus;->j:D

    .line 247
    .line 248
    cmpl-double v10, v10, v5

    .line 249
    .line 250
    if-eqz v10, :cond_f

    .line 251
    .line 252
    iput-wide v5, v1, Lcom/google/android/gms/cast/MediaStatus;->j:D

    .line 253
    .line 254
    or-int/2addr v0, v4

    .line 255
    :cond_f
    const-string v5, "currentTime"

    .line 256
    .line 257
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    if-eqz v6, :cond_11

    .line 262
    .line 263
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 264
    .line 265
    .line 266
    move-result-wide v5

    .line 267
    invoke-static {v5, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(D)J

    .line 268
    .line 269
    .line 270
    move-result-wide v5

    .line 271
    iget-wide v10, v1, Lcom/google/android/gms/cast/MediaStatus;->p:J

    .line 272
    .line 273
    cmp-long v10, v5, v10

    .line 274
    .line 275
    if-eqz v10, :cond_10

    .line 276
    .line 277
    iput-wide v5, v1, Lcom/google/android/gms/cast/MediaStatus;->p:J

    .line 278
    .line 279
    or-int/2addr v0, v4

    .line 280
    :cond_10
    or-int/lit16 v0, v0, 0x80

    .line 281
    .line 282
    :cond_11
    const-string v5, "supportedMediaCommands"

    .line 283
    .line 284
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    if-eqz v6, :cond_12

    .line 289
    .line 290
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 291
    .line 292
    .line 293
    move-result-wide v5

    .line 294
    iget-wide v10, v1, Lcom/google/android/gms/cast/MediaStatus;->q:J

    .line 295
    .line 296
    cmp-long v10, v5, v10

    .line 297
    .line 298
    if-eqz v10, :cond_12

    .line 299
    .line 300
    iput-wide v5, v1, Lcom/google/android/gms/cast/MediaStatus;->q:J

    .line 301
    .line 302
    or-int/2addr v0, v4

    .line 303
    :cond_12
    const-string v5, "volume"

    .line 304
    .line 305
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    if-eqz v6, :cond_14

    .line 310
    .line 311
    if-nez p2, :cond_14

    .line 312
    .line 313
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    const-string v6, "level"

    .line 318
    .line 319
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 320
    .line 321
    .line 322
    move-result-wide v10

    .line 323
    iget-wide v12, v1, Lcom/google/android/gms/cast/MediaStatus;->r:D

    .line 324
    .line 325
    cmpl-double v6, v10, v12

    .line 326
    .line 327
    if-eqz v6, :cond_13

    .line 328
    .line 329
    iput-wide v10, v1, Lcom/google/android/gms/cast/MediaStatus;->r:D

    .line 330
    .line 331
    or-int/2addr v0, v4

    .line 332
    :cond_13
    const-string v6, "muted"

    .line 333
    .line 334
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    iget-boolean v6, v1, Lcom/google/android/gms/cast/MediaStatus;->s:Z

    .line 339
    .line 340
    if-eq v5, v6, :cond_14

    .line 341
    .line 342
    iput-boolean v5, v1, Lcom/google/android/gms/cast/MediaStatus;->s:Z

    .line 343
    .line 344
    or-int/2addr v0, v4

    .line 345
    :cond_14
    const-string v5, "activeTrackIds"

    .line 346
    .line 347
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    const/4 v10, 0x0

    .line 352
    if-eqz v6, :cond_15

    .line 353
    .line 354
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    goto :goto_6

    .line 359
    :cond_15
    move-object v5, v10

    .line 360
    :goto_6
    invoke-static {v5}, Lcom/google/android/gms/cast/internal/CastUtils;->zzg(Lorg/json/JSONArray;)[J

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    if-eqz v5, :cond_17

    .line 365
    .line 366
    iget-object v6, v1, Lcom/google/android/gms/cast/MediaStatus;->t:[J

    .line 367
    .line 368
    if-nez v6, :cond_16

    .line 369
    .line 370
    goto :goto_8

    .line 371
    :cond_16
    array-length v11, v5

    .line 372
    array-length v6, v6

    .line 373
    if-ne v6, v11, :cond_18

    .line 374
    .line 375
    move v6, v7

    .line 376
    :goto_7
    array-length v11, v5

    .line 377
    if-ge v6, v11, :cond_19

    .line 378
    .line 379
    iget-object v11, v1, Lcom/google/android/gms/cast/MediaStatus;->t:[J

    .line 380
    .line 381
    aget-wide v12, v11, v6

    .line 382
    .line 383
    aget-wide v14, v5, v6

    .line 384
    .line 385
    cmp-long v11, v12, v14

    .line 386
    .line 387
    if-nez v11, :cond_18

    .line 388
    .line 389
    add-int/2addr v6, v3

    .line 390
    goto :goto_7

    .line 391
    :cond_17
    iget-object v6, v1, Lcom/google/android/gms/cast/MediaStatus;->t:[J

    .line 392
    .line 393
    if-eqz v6, :cond_19

    .line 394
    .line 395
    :cond_18
    :goto_8
    iput-object v5, v1, Lcom/google/android/gms/cast/MediaStatus;->t:[J

    .line 396
    .line 397
    or-int/2addr v0, v4

    .line 398
    :cond_19
    const-string v5, "customData"

    .line 399
    .line 400
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 401
    .line 402
    .line 403
    move-result v6

    .line 404
    if-eqz v6, :cond_1a

    .line 405
    .line 406
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    iput-object v5, v1, Lcom/google/android/gms/cast/MediaStatus;->x:Lorg/json/JSONObject;

    .line 411
    .line 412
    iput-object v10, v1, Lcom/google/android/gms/cast/MediaStatus;->w:Ljava/lang/String;

    .line 413
    .line 414
    or-int/2addr v0, v4

    .line 415
    :cond_1a
    const-string v5, "media"

    .line 416
    .line 417
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    if-eqz v6, :cond_1d

    .line 422
    .line 423
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    new-instance v6, Lcom/google/android/gms/cast/MediaInfo;

    .line 428
    .line 429
    invoke-direct {v6, v5}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    .line 430
    .line 431
    .line 432
    iget-object v11, v1, Lcom/google/android/gms/cast/MediaStatus;->b:Lcom/google/android/gms/cast/MediaInfo;

    .line 433
    .line 434
    if-eqz v11, :cond_1b

    .line 435
    .line 436
    invoke-virtual {v11, v6}, Lcom/google/android/gms/cast/MediaInfo;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v11

    .line 440
    if-nez v11, :cond_1c

    .line 441
    .line 442
    :cond_1b
    iput-object v6, v1, Lcom/google/android/gms/cast/MediaStatus;->b:Lcom/google/android/gms/cast/MediaInfo;

    .line 443
    .line 444
    or-int/2addr v0, v4

    .line 445
    :cond_1c
    const-string v6, "metadata"

    .line 446
    .line 447
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    if-eqz v5, :cond_1d

    .line 452
    .line 453
    or-int/2addr v0, v2

    .line 454
    :cond_1d
    const-string v5, "currentItemId"

    .line 455
    .line 456
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 457
    .line 458
    .line 459
    move-result v6

    .line 460
    if-eqz v6, :cond_1e

    .line 461
    .line 462
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    iget v6, v1, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 467
    .line 468
    if-eq v6, v5, :cond_1e

    .line 469
    .line 470
    iput v5, v1, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 471
    .line 472
    or-int/2addr v0, v4

    .line 473
    :cond_1e
    const-string v5, "preloadedItemId"

    .line 474
    .line 475
    invoke-virtual {v9, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 476
    .line 477
    .line 478
    move-result v5

    .line 479
    iget v6, v1, Lcom/google/android/gms/cast/MediaStatus;->v:I

    .line 480
    .line 481
    if-eq v6, v5, :cond_1f

    .line 482
    .line 483
    iput v5, v1, Lcom/google/android/gms/cast/MediaStatus;->v:I

    .line 484
    .line 485
    or-int/lit8 v0, v0, 0x10

    .line 486
    .line 487
    :cond_1f
    const-string v5, "loadingItemId"

    .line 488
    .line 489
    invoke-virtual {v9, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 490
    .line 491
    .line 492
    move-result v5

    .line 493
    iget v6, v1, Lcom/google/android/gms/cast/MediaStatus;->u:I

    .line 494
    .line 495
    if-eq v6, v5, :cond_20

    .line 496
    .line 497
    iput v5, v1, Lcom/google/android/gms/cast/MediaStatus;->u:I

    .line 498
    .line 499
    or-int/2addr v0, v4

    .line 500
    :cond_20
    iget-object v5, v1, Lcom/google/android/gms/cast/MediaStatus;->b:Lcom/google/android/gms/cast/MediaInfo;

    .line 501
    .line 502
    if-nez v5, :cond_21

    .line 503
    .line 504
    const/4 v5, -0x1

    .line 505
    goto :goto_9

    .line 506
    :cond_21
    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    .line 507
    .line 508
    .line 509
    move-result v5

    .line 510
    :goto_9
    iget v11, v1, Lcom/google/android/gms/cast/MediaStatus;->m:I

    .line 511
    .line 512
    iget v12, v1, Lcom/google/android/gms/cast/MediaStatus;->n:I

    .line 513
    .line 514
    iget v13, v1, Lcom/google/android/gms/cast/MediaStatus;->u:I

    .line 515
    .line 516
    if-eq v11, v3, :cond_23

    .line 517
    .line 518
    :cond_22
    move v5, v7

    .line 519
    goto :goto_b

    .line 520
    :cond_23
    if-eq v12, v3, :cond_25

    .line 521
    .line 522
    if-eq v12, v4, :cond_24

    .line 523
    .line 524
    if-eq v12, v8, :cond_25

    .line 525
    .line 526
    :goto_a
    move v5, v3

    .line 527
    goto :goto_b

    .line 528
    :cond_24
    if-eq v5, v4, :cond_22

    .line 529
    .line 530
    goto :goto_a

    .line 531
    :cond_25
    if-nez v13, :cond_22

    .line 532
    .line 533
    goto :goto_a

    .line 534
    :goto_b
    iget-object v11, v1, Lcom/google/android/gms/cast/MediaStatus;->z:Ljava/util/ArrayList;

    .line 535
    .line 536
    if-nez v5, :cond_30

    .line 537
    .line 538
    const-string v5, "repeatMode"

    .line 539
    .line 540
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 541
    .line 542
    .line 543
    move-result v12

    .line 544
    if-eqz v12, :cond_27

    .line 545
    .line 546
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v5

    .line 550
    invoke-static {v5}, Lcom/google/android/gms/cast/internal/media/MediaCommon;->mediaRepeatModeFromString(Ljava/lang/String;)Ljava/lang/Integer;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    if-nez v5, :cond_26

    .line 555
    .line 556
    iget v5, v1, Lcom/google/android/gms/cast/MediaStatus;->y:I

    .line 557
    .line 558
    goto :goto_c

    .line 559
    :cond_26
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 560
    .line 561
    .line 562
    move-result v5

    .line 563
    :goto_c
    iget v12, v1, Lcom/google/android/gms/cast/MediaStatus;->y:I

    .line 564
    .line 565
    if-eq v12, v5, :cond_27

    .line 566
    .line 567
    iput v5, v1, Lcom/google/android/gms/cast/MediaStatus;->y:I

    .line 568
    .line 569
    move v5, v3

    .line 570
    goto :goto_d

    .line 571
    :cond_27
    move v5, v7

    .line 572
    :goto_d
    const-string v12, "items"

    .line 573
    .line 574
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 575
    .line 576
    .line 577
    move-result v13

    .line 578
    if-eqz v13, :cond_2e

    .line 579
    .line 580
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 581
    .line 582
    .line 583
    move-result-object v12

    .line 584
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    .line 585
    .line 586
    .line 587
    move-result v13

    .line 588
    new-instance v14, Landroid/util/SparseArray;

    .line 589
    .line 590
    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 591
    .line 592
    .line 593
    move v15, v7

    .line 594
    :goto_e
    if-ge v15, v13, :cond_28

    .line 595
    .line 596
    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    const-string v6, "itemId"

    .line 601
    .line 602
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 603
    .line 604
    .line 605
    move-result v2

    .line 606
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    invoke-virtual {v14, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 611
    .line 612
    .line 613
    add-int/2addr v15, v3

    .line 614
    const/4 v2, 0x4

    .line 615
    goto :goto_e

    .line 616
    :cond_28
    new-instance v2, Ljava/util/ArrayList;

    .line 617
    .line 618
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .line 620
    .line 621
    move v6, v7

    .line 622
    :goto_f
    if-ge v6, v13, :cond_2c

    .line 623
    .line 624
    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v15

    .line 628
    check-cast v15, Ljava/lang/Integer;

    .line 629
    .line 630
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 631
    .line 632
    .line 633
    move-result-object v10

    .line 634
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 635
    .line 636
    .line 637
    move-result v8

    .line 638
    invoke-virtual {v1, v8}, Lcom/google/android/gms/cast/MediaStatus;->getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    .line 639
    .line 640
    .line 641
    move-result-object v8

    .line 642
    if-eqz v8, :cond_29

    .line 643
    .line 644
    invoke-virtual {v8, v10}, Lcom/google/android/gms/cast/MediaQueueItem;->fromJson(Lorg/json/JSONObject;)Z

    .line 645
    .line 646
    .line 647
    move-result v10

    .line 648
    or-int/2addr v5, v10

    .line 649
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    .line 651
    .line 652
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 653
    .line 654
    .line 655
    move-result v8

    .line 656
    invoke-virtual {v1, v8}, Lcom/google/android/gms/cast/MediaStatus;->getIndexById(I)Ljava/lang/Integer;

    .line 657
    .line 658
    .line 659
    move-result-object v8

    .line 660
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 661
    .line 662
    .line 663
    move-result v8

    .line 664
    if-eq v6, v8, :cond_2b

    .line 665
    .line 666
    :goto_10
    move v5, v3

    .line 667
    goto :goto_11

    .line 668
    :cond_29
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 669
    .line 670
    .line 671
    move-result v5

    .line 672
    iget v8, v1, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 673
    .line 674
    if-ne v5, v8, :cond_2a

    .line 675
    .line 676
    iget-object v5, v1, Lcom/google/android/gms/cast/MediaStatus;->b:Lcom/google/android/gms/cast/MediaInfo;

    .line 677
    .line 678
    if-eqz v5, :cond_2a

    .line 679
    .line 680
    new-instance v8, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    .line 681
    .line 682
    invoke-direct {v8, v5}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v8}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->build()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 686
    .line 687
    .line 688
    move-result-object v5

    .line 689
    invoke-virtual {v5, v10}, Lcom/google/android/gms/cast/MediaQueueItem;->fromJson(Lorg/json/JSONObject;)Z

    .line 690
    .line 691
    .line 692
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    .line 694
    .line 695
    goto :goto_10

    .line 696
    :cond_2a
    new-instance v5, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 697
    .line 698
    invoke-direct {v5, v10}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    goto :goto_10

    .line 705
    :cond_2b
    :goto_11
    add-int/2addr v6, v3

    .line 706
    const/4 v8, 0x3

    .line 707
    const/4 v10, 0x0

    .line 708
    goto :goto_f

    .line 709
    :cond_2c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 710
    .line 711
    .line 712
    move-result v6

    .line 713
    if-eq v6, v13, :cond_2d

    .line 714
    .line 715
    move v6, v7

    .line 716
    goto :goto_12

    .line 717
    :cond_2d
    move v6, v3

    .line 718
    :goto_12
    xor-int/2addr v6, v3

    .line 719
    or-int/2addr v5, v6

    .line 720
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/MediaStatus;->a(Ljava/util/List;)V

    .line 721
    .line 722
    .line 723
    :cond_2e
    if-eqz v5, :cond_2f

    .line 724
    .line 725
    or-int/lit8 v0, v0, 0x8

    .line 726
    .line 727
    :cond_2f
    :goto_13
    move v2, v0

    .line 728
    goto :goto_14

    .line 729
    :cond_30
    iput v7, v1, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 730
    .line 731
    iput v7, v1, Lcom/google/android/gms/cast/MediaStatus;->u:I

    .line 732
    .line 733
    iput v7, v1, Lcom/google/android/gms/cast/MediaStatus;->v:I

    .line 734
    .line 735
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    if-nez v2, :cond_2f

    .line 740
    .line 741
    or-int/lit8 v0, v0, 0x8

    .line 742
    .line 743
    iput v7, v1, Lcom/google/android/gms/cast/MediaStatus;->y:I

    .line 744
    .line 745
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 746
    .line 747
    .line 748
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaStatus;->G:Landroid/util/SparseArray;

    .line 749
    .line 750
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 751
    .line 752
    .line 753
    goto :goto_13

    .line 754
    :goto_14
    const-string v0, "breakStatus"

    .line 755
    .line 756
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    sget-object v5, Lcom/google/android/gms/cast/AdBreakStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 761
    .line 762
    if-nez v0, :cond_32

    .line 763
    .line 764
    :cond_31
    :goto_15
    const/4 v0, 0x0

    .line 765
    goto :goto_18

    .line 766
    :cond_32
    const-string v5, "currentBreakTime"

    .line 767
    .line 768
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 769
    .line 770
    .line 771
    move-result v6

    .line 772
    if-eqz v6, :cond_31

    .line 773
    .line 774
    const-string v6, "currentBreakClipTime"

    .line 775
    .line 776
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 777
    .line 778
    .line 779
    move-result v8

    .line 780
    if-nez v8, :cond_33

    .line 781
    .line 782
    goto :goto_15

    .line 783
    :cond_33
    :try_start_1
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 784
    .line 785
    .line 786
    move-result-wide v10

    .line 787
    invoke-static {v10, v11}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(J)J

    .line 788
    .line 789
    .line 790
    move-result-wide v17

    .line 791
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 792
    .line 793
    .line 794
    move-result-wide v5

    .line 795
    invoke-static {v5, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(J)J

    .line 796
    .line 797
    .line 798
    move-result-wide v19

    .line 799
    const-string v5, "breakId"

    .line 800
    .line 801
    invoke-static {v0, v5}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v21

    .line 805
    const-string v5, "breakClipId"

    .line 806
    .line 807
    invoke-static {v0, v5}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v22

    .line 811
    const-string v5, "whenSkippable"

    .line 812
    .line 813
    const-wide/16 v10, -0x1

    .line 814
    .line 815
    invoke-virtual {v0, v5, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 816
    .line 817
    .line 818
    move-result-wide v5

    .line 819
    cmp-long v0, v5, v10

    .line 820
    .line 821
    if-eqz v0, :cond_34

    .line 822
    .line 823
    invoke-static {v5, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(J)J

    .line 824
    .line 825
    .line 826
    move-result-wide v5

    .line 827
    :cond_34
    move-wide/from16 v23, v5

    .line 828
    .line 829
    goto :goto_16

    .line 830
    :catch_1
    move-exception v0

    .line 831
    goto :goto_17

    .line 832
    :goto_16
    new-instance v16, Lcom/google/android/gms/cast/AdBreakStatus;

    .line 833
    .line 834
    invoke-direct/range {v16 .. v24}, Lcom/google/android/gms/cast/AdBreakStatus;-><init>(JJLjava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 835
    .line 836
    .line 837
    move-object/from16 v0, v16

    .line 838
    .line 839
    goto :goto_18

    .line 840
    :goto_17
    sget-object v5, Lcom/google/android/gms/cast/AdBreakStatus;->n:Lcom/google/android/gms/cast/internal/Logger;

    .line 841
    .line 842
    new-array v6, v7, [Ljava/lang/Object;

    .line 843
    .line 844
    const-string v8, "Error while creating an AdBreakClipInfo from JSON"

    .line 845
    .line 846
    invoke-virtual {v5, v0, v8, v6}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    .line 848
    .line 849
    goto :goto_15

    .line 850
    :goto_18
    iget-object v5, v1, Lcom/google/android/gms/cast/MediaStatus;->B:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 851
    .line 852
    if-nez v5, :cond_35

    .line 853
    .line 854
    if-nez v0, :cond_36

    .line 855
    .line 856
    :cond_35
    if-eqz v5, :cond_39

    .line 857
    .line 858
    invoke-virtual {v5, v0}, Lcom/google/android/gms/cast/AdBreakStatus;->equals(Ljava/lang/Object;)Z

    .line 859
    .line 860
    .line 861
    move-result v5

    .line 862
    if-nez v5, :cond_39

    .line 863
    .line 864
    :cond_36
    if-eqz v0, :cond_38

    .line 865
    .line 866
    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakStatus;->getBreakId()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v5

    .line 870
    if-nez v5, :cond_37

    .line 871
    .line 872
    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakStatus;->getBreakClipId()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v5

    .line 876
    if-eqz v5, :cond_38

    .line 877
    .line 878
    :cond_37
    move v5, v3

    .line 879
    goto :goto_19

    .line 880
    :cond_38
    move v5, v7

    .line 881
    :goto_19
    iput-boolean v5, v1, Lcom/google/android/gms/cast/MediaStatus;->A:Z

    .line 882
    .line 883
    iput-object v0, v1, Lcom/google/android/gms/cast/MediaStatus;->B:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 884
    .line 885
    or-int/lit8 v2, v2, 0x20

    .line 886
    .line 887
    :cond_39
    const-string v0, "videoInfo"

    .line 888
    .line 889
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    sget-object v5, Lcom/google/android/gms/cast/VideoInfo;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 894
    .line 895
    if-nez v0, :cond_3a

    .line 896
    .line 897
    :goto_1a
    const/4 v6, 0x0

    .line 898
    goto/16 :goto_1f

    .line 899
    .line 900
    :cond_3a
    :try_start_2
    const-string v6, "hdrType"

    .line 901
    .line 902
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v6

    .line 906
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 907
    .line 908
    .line 909
    move-result v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 910
    const/16 v10, 0xc92

    .line 911
    .line 912
    if-eq v8, v10, :cond_3e

    .line 913
    .line 914
    const v10, 0x192f6

    .line 915
    .line 916
    .line 917
    if-eq v8, v10, :cond_3d

    .line 918
    .line 919
    const v10, 0x1bc41

    .line 920
    .line 921
    .line 922
    if-eq v8, v10, :cond_3c

    .line 923
    .line 924
    const v10, 0x5e8b395

    .line 925
    .line 926
    .line 927
    if-eq v8, v10, :cond_3b

    .line 928
    .line 929
    goto :goto_1b

    .line 930
    :cond_3b
    const-string v8, "hdr10"

    .line 931
    .line 932
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 933
    .line 934
    .line 935
    move-result v8

    .line 936
    if-eqz v8, :cond_3f

    .line 937
    .line 938
    move v8, v3

    .line 939
    goto :goto_1c

    .line 940
    :cond_3c
    const-string v8, "sdr"

    .line 941
    .line 942
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    move-result v8

    .line 946
    if-eqz v8, :cond_3f

    .line 947
    .line 948
    const/4 v8, 0x3

    .line 949
    goto :goto_1c

    .line 950
    :cond_3d
    const-string v8, "hdr"

    .line 951
    .line 952
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 953
    .line 954
    .line 955
    move-result v8

    .line 956
    if-eqz v8, :cond_3f

    .line 957
    .line 958
    move v8, v4

    .line 959
    goto :goto_1c

    .line 960
    :cond_3e
    const-string v8, "dv"

    .line 961
    .line 962
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 963
    .line 964
    .line 965
    move-result v8

    .line 966
    if-eqz v8, :cond_3f

    .line 967
    .line 968
    move v8, v7

    .line 969
    goto :goto_1c

    .line 970
    :cond_3f
    :goto_1b
    const/4 v8, -0x1

    .line 971
    :goto_1c
    if-eqz v8, :cond_42

    .line 972
    .line 973
    if-eq v8, v3, :cond_41

    .line 974
    .line 975
    if-eq v8, v4, :cond_40

    .line 976
    .line 977
    const/4 v10, 0x3

    .line 978
    if-eq v8, v10, :cond_43

    .line 979
    .line 980
    :try_start_3
    const-string v8, "Unknown HDR type: %s"

    .line 981
    .line 982
    new-array v3, v3, [Ljava/lang/Object;

    .line 983
    .line 984
    aput-object v6, v3, v7

    .line 985
    .line 986
    invoke-virtual {v5, v8, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    .line 988
    .line 989
    move v3, v7

    .line 990
    goto :goto_1d

    .line 991
    :catch_2
    move-exception v0

    .line 992
    goto :goto_1e

    .line 993
    :cond_40
    const/4 v3, 0x4

    .line 994
    goto :goto_1d

    .line 995
    :cond_41
    move v3, v4

    .line 996
    goto :goto_1d

    .line 997
    :cond_42
    const/4 v10, 0x3

    .line 998
    move v3, v10

    .line 999
    :cond_43
    :goto_1d
    new-instance v6, Lcom/google/android/gms/cast/VideoInfo;

    .line 1000
    .line 1001
    const-string v8, "width"

    .line 1002
    .line 1003
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 1004
    .line 1005
    .line 1006
    move-result v8

    .line 1007
    const-string v10, "height"

    .line 1008
    .line 1009
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 1010
    .line 1011
    .line 1012
    move-result v0

    .line 1013
    invoke-direct {v6, v8, v0, v3}, Lcom/google/android/gms/cast/VideoInfo;-><init>(III)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1014
    .line 1015
    .line 1016
    goto :goto_1f

    .line 1017
    :goto_1e
    new-array v3, v7, [Ljava/lang/Object;

    .line 1018
    .line 1019
    const-string v6, "Error while creating a VideoInfo instance from JSON"

    .line 1020
    .line 1021
    invoke-virtual {v5, v0, v6, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1022
    .line 1023
    .line 1024
    goto :goto_1a

    .line 1025
    :goto_1f
    iget-object v0, v1, Lcom/google/android/gms/cast/MediaStatus;->C:Lcom/google/android/gms/cast/VideoInfo;

    .line 1026
    .line 1027
    if-nez v0, :cond_44

    .line 1028
    .line 1029
    if-nez v6, :cond_45

    .line 1030
    .line 1031
    :cond_44
    if-eqz v0, :cond_46

    .line 1032
    .line 1033
    invoke-virtual {v0, v6}, Lcom/google/android/gms/cast/VideoInfo;->equals(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    move-result v0

    .line 1037
    if-nez v0, :cond_46

    .line 1038
    .line 1039
    :cond_45
    iput-object v6, v1, Lcom/google/android/gms/cast/MediaStatus;->C:Lcom/google/android/gms/cast/VideoInfo;

    .line 1040
    .line 1041
    or-int/lit8 v2, v2, 0x40

    .line 1042
    .line 1043
    :cond_46
    const-string v0, "breakInfo"

    .line 1044
    .line 1045
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1046
    .line 1047
    .line 1048
    move-result v3

    .line 1049
    if-eqz v3, :cond_47

    .line 1050
    .line 1051
    iget-object v3, v1, Lcom/google/android/gms/cast/MediaStatus;->b:Lcom/google/android/gms/cast/MediaInfo;

    .line 1052
    .line 1053
    if-eqz v3, :cond_47

    .line 1054
    .line 1055
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    invoke-virtual {v3, v0}, Lcom/google/android/gms/cast/MediaInfo;->a(Lorg/json/JSONObject;)V

    .line 1060
    .line 1061
    .line 1062
    or-int/2addr v2, v4

    .line 1063
    :cond_47
    const-string v0, "queueData"

    .line 1064
    .line 1065
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v3

    .line 1069
    if-eqz v3, :cond_48

    .line 1070
    .line 1071
    new-instance v3, Lcom/google/android/gms/cast/MediaQueueData$Builder;

    .line 1072
    .line 1073
    invoke-direct {v3}, Lcom/google/android/gms/cast/MediaQueueData$Builder;-><init>()V

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    invoke-virtual {v3, v0}, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaQueueData$Builder;

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaQueueData$Builder;->build()Lcom/google/android/gms/cast/MediaQueueData;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    iput-object v0, v1, Lcom/google/android/gms/cast/MediaStatus;->E:Lcom/google/android/gms/cast/MediaQueueData;

    .line 1088
    .line 1089
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueData;->zzk()Z

    .line 1090
    .line 1091
    .line 1092
    move-result v0

    .line 1093
    iget-boolean v3, v1, Lcom/google/android/gms/cast/MediaStatus;->F:Z

    .line 1094
    .line 1095
    if-eq v3, v0, :cond_48

    .line 1096
    .line 1097
    iput-boolean v0, v1, Lcom/google/android/gms/cast/MediaStatus;->F:Z

    .line 1098
    .line 1099
    or-int/lit8 v2, v2, 0x8

    .line 1100
    .line 1101
    :cond_48
    const-string v0, "liveSeekableRange"

    .line 1102
    .line 1103
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1104
    .line 1105
    .line 1106
    move-result v3

    .line 1107
    if-eqz v3, :cond_4c

    .line 1108
    .line 1109
    or-int/2addr v2, v4

    .line 1110
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v0

    .line 1114
    sget-object v3, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1115
    .line 1116
    if-nez v0, :cond_4a

    .line 1117
    .line 1118
    :cond_49
    :goto_20
    const/4 v10, 0x0

    .line 1119
    goto :goto_21

    .line 1120
    :cond_4a
    const-string v3, "start"

    .line 1121
    .line 1122
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1123
    .line 1124
    .line 1125
    move-result v4

    .line 1126
    if-eqz v4, :cond_49

    .line 1127
    .line 1128
    const-string v4, "end"

    .line 1129
    .line 1130
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1131
    .line 1132
    .line 1133
    move-result v5

    .line 1134
    if-nez v5, :cond_4b

    .line 1135
    .line 1136
    goto :goto_20

    .line 1137
    :cond_4b
    :try_start_4
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 1138
    .line 1139
    .line 1140
    move-result-wide v5

    .line 1141
    invoke-static {v5, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(D)J

    .line 1142
    .line 1143
    .line 1144
    move-result-wide v9

    .line 1145
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 1146
    .line 1147
    .line 1148
    move-result-wide v3

    .line 1149
    invoke-static {v3, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(D)J

    .line 1150
    .line 1151
    .line 1152
    move-result-wide v11

    .line 1153
    const-string v3, "isMovingWindow"

    .line 1154
    .line 1155
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 1156
    .line 1157
    .line 1158
    move-result v13

    .line 1159
    const-string v3, "isLiveDone"

    .line 1160
    .line 1161
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 1162
    .line 1163
    .line 1164
    move-result v14

    .line 1165
    new-instance v8, Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 1166
    .line 1167
    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;-><init>(JJZZ)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1168
    .line 1169
    .line 1170
    move-object v10, v8

    .line 1171
    goto :goto_21

    .line 1172
    :catch_3
    sget-object v3, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->m:Lcom/google/android/gms/cast/internal/Logger;

    .line 1173
    .line 1174
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v0

    .line 1178
    const-string v4, "Ignoring Malformed MediaLiveSeekableRange: "

    .line 1179
    .line 1180
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v0

    .line 1184
    new-array v4, v7, [Ljava/lang/Object;

    .line 1185
    .line 1186
    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1187
    .line 1188
    .line 1189
    goto :goto_20

    .line 1190
    :goto_21
    iput-object v10, v1, Lcom/google/android/gms/cast/MediaStatus;->D:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 1191
    .line 1192
    goto :goto_22

    .line 1193
    :cond_4c
    iget-object v0, v1, Lcom/google/android/gms/cast/MediaStatus;->D:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 1194
    .line 1195
    if-eqz v0, :cond_4d

    .line 1196
    .line 1197
    or-int/2addr v2, v4

    .line 1198
    :cond_4d
    const/4 v3, 0x0

    .line 1199
    iput-object v3, v1, Lcom/google/android/gms/cast/MediaStatus;->D:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 1200
    .line 1201
    :goto_22
    return v2
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->e:J

    return-wide v0
.end method

.method public final zzd()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->b:Lcom/google/android/gms/cast/MediaInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->m:I

    .line 12
    .line 13
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->n:I

    .line 14
    .line 15
    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->u:I

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-eq v1, v4, :cond_1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    if-eq v2, v4, :cond_3

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v2, v1, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    if-eq v2, v0, :cond_3

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    if-eq v0, v1, :cond_4

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    if-nez v3, :cond_4

    .line 34
    .line 35
    :goto_1
    return v4

    .line 36
    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 37
    return v0
.end method
