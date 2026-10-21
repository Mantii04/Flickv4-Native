.class public Lcom/google/android/gms/cast/MediaInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaInfo$Writer;,
        Lcom/google/android/gms/cast/MediaInfo$Builder;
    }
.end annotation


# static fields
.field public static final B:J

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Lorg/json/JSONObject;

.field public final b:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final j:Lcom/google/android/gms/cast/MediaMetadata;

.field public final m:J

.field public final n:Ljava/util/ArrayList;

.field public final p:Lcom/google/android/gms/cast/TextTrackStyle;

.field public q:Ljava/lang/String;

.field public r:Ljava/util/List;

.field public s:Ljava/util/ArrayList;

.field public final t:Ljava/lang/String;

.field public final u:Lcom/google/android/gms/cast/VastAdsRequest;

.field public final v:J

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Lcom/google/android/gms/cast/MediaInfo;->B:J

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/cast/zzby;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/cast/zzby;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/cast/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/ArrayList;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object/from16 v0, p17

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    new-instance v1, Lcom/google/android/gms/cast/MediaInfo$Writer;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/MediaInfo$Writer;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->b:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/cast/MediaInfo;->e:I

    iput-object p3, p0, Lcom/google/android/gms/cast/MediaInfo;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/cast/MediaInfo;->j:Lcom/google/android/gms/cast/MediaMetadata;

    iput-wide p5, p0, Lcom/google/android/gms/cast/MediaInfo;->m:J

    iput-object p7, p0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/google/android/gms/cast/MediaInfo;->p:Lcom/google/android/gms/cast/TextTrackStyle;

    iput-object p9, p0, Lcom/google/android/gms/cast/MediaInfo;->q:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p9, :cond_0

    .line 2
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/cast/MediaInfo;->q:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaInfo;->A:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->A:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->q:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->A:Lorg/json/JSONObject;

    .line 4
    :goto_0
    iput-object p10, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/cast/MediaInfo;->s:Ljava/util/ArrayList;

    iput-object p12, p0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    move-object p1, p13

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/google/android/gms/cast/VastAdsRequest;

    move-wide/from16 p1, p14

    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaInfo;->v:J

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->x:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->b:Ljava/lang/String;

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz p12, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Either contentID or contentUrl or entity should be set"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 26

    move-object/from16 v0, p1

    .line 6
    const-string v1, "contentId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    .line 7
    invoke-direct/range {v0 .. v19}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/ArrayList;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v1, "streamType"

    const-string v2, "NONE"

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    iput v7, v0, Lcom/google/android/gms/cast/MediaInfo;->e:I

    goto :goto_0

    .line 10
    :cond_0
    const-string v2, "BUFFERED"

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v6, v0, Lcom/google/android/gms/cast/MediaInfo;->e:I

    goto :goto_0

    :cond_1
    const-string v2, "LIVE"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v5, v0, Lcom/google/android/gms/cast/MediaInfo;->e:I

    goto :goto_0

    :cond_2
    iput v4, v0, Lcom/google/android/gms/cast/MediaInfo;->e:I

    .line 13
    :goto_0
    const-string v1, "contentType"

    .line 14
    invoke-static {v3, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->f:Ljava/lang/String;

    .line 15
    const-string v1, "metadata"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "metadataType"

    .line 17
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 18
    new-instance v8, Lcom/google/android/gms/cast/MediaMetadata;

    invoke-direct {v8, v2}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    iput-object v8, v0, Lcom/google/android/gms/cast/MediaInfo;->j:Lcom/google/android/gms/cast/MediaMetadata;

    .line 19
    invoke-virtual {v8, v1}, Lcom/google/android/gms/cast/MediaMetadata;->zzc(Lorg/json/JSONObject;)V

    :cond_3
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/google/android/gms/cast/MediaInfo;->m:J

    iget v1, v0, Lcom/google/android/gms/cast/MediaInfo;->e:I

    const-wide/16 v8, 0x0

    if-eq v1, v5, :cond_4

    .line 20
    const-string v1, "duration"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 21
    invoke-virtual {v3, v1, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v10

    if-nez v10, :cond_4

    cmpl-double v10, v1, v8

    if-ltz v10, :cond_4

    invoke-static {v1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(D)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/cast/MediaInfo;->m:J

    .line 23
    :cond_4
    const-string v1, "tracks"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v10, "customData"

    const/4 v11, 0x0

    if-eqz v2, :cond_11

    new-instance v2, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v12, v7

    .line 26
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_10

    .line 27
    invoke-virtual {v1, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 28
    sget-object v14, Lcom/google/android/gms/cast/MediaTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v14, "trackId"

    .line 29
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v14, "type"

    .line 30
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "TEXT"

    .line 31
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/16 v18, 0x3

    if-eqz v15, :cond_5

    move/from16 v14, v18

    move/from16 v18, v6

    goto :goto_2

    .line 32
    :cond_5
    const-string v15, "AUDIO"

    .line 33
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    move/from16 v14, v18

    move/from16 v18, v5

    goto :goto_2

    :cond_6
    const-string v15, "VIDEO"

    .line 34
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    move/from16 v14, v18

    goto :goto_2

    :cond_7
    move/from16 v14, v18

    move/from16 v18, v7

    .line 35
    :goto_2
    const-string v15, "trackContentId"

    .line 36
    invoke-static {v13, v15}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v15, "trackContentType"

    .line 37
    invoke-static {v13, v15}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v15, "name"

    .line 38
    invoke-static {v13, v15}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v15, "language"

    .line 39
    invoke-static {v13, v15}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 40
    const-string v15, "subtype"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 41
    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "SUBTITLES"

    .line 42
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move/from16 v23, v6

    goto :goto_4

    .line 43
    :cond_8
    const-string v4, "CAPTIONS"

    .line 44
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move/from16 v23, v5

    goto :goto_4

    :cond_9
    const-string v4, "DESCRIPTIONS"

    .line 45
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move/from16 v23, v14

    goto :goto_4

    :cond_a
    const-string v4, "CHAPTERS"

    .line 46
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x4

    :goto_3
    move/from16 v23, v4

    goto :goto_4

    :cond_b
    const-string v4, "METADATA"

    .line 47
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x5

    goto :goto_3

    :cond_c
    const/16 v23, -0x1

    goto :goto_4

    :cond_d
    move/from16 v23, v7

    .line 48
    :goto_4
    const-string v4, "roles"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 49
    new-instance v14, Lcom/google/android/gms/internal/cast/zzfn;

    invoke-direct {v14}, Lcom/google/android/gms/internal/cast/zzfn;-><init>()V

    .line 50
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v15, v7

    .line 51
    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v15, v5, :cond_e

    .line 52
    invoke-virtual {v4, v15}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/cast/zzfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zzfn;

    add-int/2addr v15, v6

    goto :goto_5

    .line 53
    :cond_e
    invoke-virtual {v14}, Lcom/google/android/gms/internal/cast/zzfn;->zzc()Lcom/google/android/gms/internal/cast/zzfq;

    move-result-object v4

    move-object/from16 v24, v4

    goto :goto_6

    :cond_f
    move-object/from16 v24, v11

    .line 54
    :goto_6
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    new-instance v15, Lcom/google/android/gms/cast/MediaTrack;

    .line 55
    invoke-direct/range {v15 .. v25}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lorg/json/JSONObject;)V

    .line 56
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v12, v6

    const/4 v4, -0x1

    const/4 v5, 0x2

    goto/16 :goto_1

    .line 57
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/ArrayList;

    goto :goto_7

    .line 59
    :cond_11
    iput-object v11, v0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/ArrayList;

    .line 60
    :goto_7
    const-string v1, "textTrackStyle"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 61
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    new-instance v2, Lcom/google/android/gms/cast/TextTrackStyle;

    invoke-direct {v2}, Lcom/google/android/gms/cast/TextTrackStyle;-><init>()V

    .line 63
    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/TextTrackStyle;->fromJson(Lorg/json/JSONObject;)V

    iput-object v2, v0, Lcom/google/android/gms/cast/MediaInfo;->p:Lcom/google/android/gms/cast/TextTrackStyle;

    goto :goto_8

    .line 64
    :cond_12
    iput-object v11, v0, Lcom/google/android/gms/cast/MediaInfo;->p:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 65
    :goto_8
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/cast/MediaInfo;->a(Lorg/json/JSONObject;)V

    .line 66
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->A:Lorg/json/JSONObject;

    const-string v1, "entity"

    .line 67
    invoke-static {v3, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    const-string v1, "atvEntity"

    .line 68
    invoke-static {v3, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/lang/String;

    const-string v1, "vmapAdsRequest"

    .line 69
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/cast/VastAdsRequest;->fromJson(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/VastAdsRequest;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 70
    const-string v1, "startAbsoluteTime"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 71
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 72
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 73
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-nez v4, :cond_13

    cmpl-double v4, v1, v8

    if-ltz v4, :cond_13

    invoke-static {v1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(D)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/cast/MediaInfo;->v:J

    .line 74
    :cond_13
    const-string v1, "contentUrl"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 75
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->x:Ljava/lang/String;

    :cond_14
    const-string v1, "hlsSegmentFormat"

    .line 76
    invoke-static {v3, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    const-string v1, "hlsVideoSegmentFormat"

    .line 77
    invoke-static {v3, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "whenSkippable"

    .line 6
    .line 7
    const-string v0, "breaks"

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const-string v5, "duration"

    .line 14
    .line 15
    const-string v6, "id"

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    if-eqz v4, :cond_6

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    new-instance v9, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    move v10, v7

    .line 34
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ge v10, v0, :cond_5

    .line 39
    .line 40
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v11, Lcom/google/android/gms/cast/AdBreakInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    :cond_0
    :goto_1
    const/4 v13, 0x0

    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    if-eqz v11, :cond_0

    .line 56
    .line 57
    const-string v11, "position"

    .line 58
    .line 59
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    if-nez v12, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :try_start_0
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v16

    .line 70
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v11

    .line 74
    invoke-static {v11, v12}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v14

    .line 78
    const-string v11, "isWatched"

    .line 79
    .line 80
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v19

    .line 84
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v11

    .line 88
    invoke-static {v11, v12}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(J)J

    .line 89
    .line 90
    .line 91
    move-result-wide v17

    .line 92
    const-string v11, "breakClipIds"

    .line 93
    .line 94
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    new-array v12, v7, [Ljava/lang/String;

    .line 99
    .line 100
    if-eqz v11, :cond_3

    .line 101
    .line 102
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    new-array v12, v12, [Ljava/lang/String;

    .line 107
    .line 108
    move v13, v7

    .line 109
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-ge v13, v7, :cond_3

    .line 114
    .line 115
    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    aput-object v7, v12, v13

    .line 120
    .line 121
    add-int/lit8 v13, v13, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catch_0
    move-exception v0

    .line 125
    goto :goto_3

    .line 126
    :cond_3
    move-object/from16 v20, v12

    .line 127
    .line 128
    const-string v7, "isEmbedded"

    .line 129
    .line 130
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v21

    .line 134
    const-string v7, "expanded"

    .line 135
    .line 136
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v22

    .line 140
    new-instance v13, Lcom/google/android/gms/cast/AdBreakInfo;

    .line 141
    .line 142
    invoke-direct/range {v13 .. v22}, Lcom/google/android/gms/cast/AdBreakInfo;-><init>(JLjava/lang/String;JZ[Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 151
    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v11, "Error while creating an AdBreakInfo from JSON: "

    .line 155
    .line 156
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const-string v7, "AdBreakInfo"

    .line 167
    .line 168
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :goto_4
    if-eqz v13, :cond_4

    .line 173
    .line 174
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    add-int/lit8 v10, v10, 0x1

    .line 178
    .line 179
    const/4 v7, 0x0

    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 183
    .line 184
    .line 185
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 188
    .line 189
    .line 190
    iput-object v0, v1, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/util/List;

    .line 191
    .line 192
    :cond_6
    const-string v0, "breakClips"

    .line 193
    .line 194
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-eqz v4, :cond_f

    .line 199
    .line 200
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    new-instance v4, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    .line 212
    .line 213
    const/4 v7, 0x0

    .line 214
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-ge v7, v0, :cond_e

    .line 219
    .line 220
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    sget-object v9, Lcom/google/android/gms/cast/AdBreakClipInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 225
    .line 226
    if-nez v0, :cond_7

    .line 227
    .line 228
    :goto_6
    const/4 v10, 0x0

    .line 229
    goto/16 :goto_c

    .line 230
    .line 231
    :cond_7
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    if-nez v9, :cond_8

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_8
    :try_start_1
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 243
    .line 244
    .line 245
    move-result-wide v9

    .line 246
    invoke-static {v9, v10}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(J)J

    .line 247
    .line 248
    .line 249
    move-result-wide v13

    .line 250
    const-string v9, "clickThroughUrl"

    .line 251
    .line 252
    invoke-static {v0, v9}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v17

    .line 256
    const-string v9, "contentUrl"

    .line 257
    .line 258
    invoke-static {v0, v9}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v15

    .line 262
    const-string v9, "mimeType"

    .line 263
    .line 264
    invoke-static {v0, v9}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    if-nez v9, :cond_9

    .line 269
    .line 270
    const-string v9, "contentType"

    .line 271
    .line 272
    invoke-static {v0, v9}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    :cond_9
    move-object/from16 v16, v9

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :catch_1
    move-exception v0

    .line 280
    goto :goto_b

    .line 281
    :goto_7
    const-string v9, "title"

    .line 282
    .line 283
    invoke-static {v0, v9}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    const-string v9, "customData"

    .line 288
    .line 289
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    const-string v10, "contentId"

    .line 294
    .line 295
    invoke-static {v0, v10}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v19

    .line 299
    const-string v10, "posterUrl"

    .line 300
    .line 301
    invoke-static {v0, v10}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v20

    .line 305
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    if-eqz v10, :cond_a

    .line 310
    .line 311
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v10

    .line 315
    check-cast v10, Ljava/lang/Integer;

    .line 316
    .line 317
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 318
    .line 319
    .line 320
    move-result v10

    .line 321
    move-object/from16 p1, v9

    .line 322
    .line 323
    int-to-long v8, v10

    .line 324
    invoke-static {v8, v9}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(J)J

    .line 325
    .line 326
    .line 327
    move-result-wide v8

    .line 328
    :goto_8
    move-wide/from16 v21, v8

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_a
    move-object/from16 p1, v9

    .line 332
    .line 333
    const-wide/16 v8, -0x1

    .line 334
    .line 335
    goto :goto_8

    .line 336
    :goto_9
    const-string v8, "hlsSegmentFormat"

    .line 337
    .line 338
    invoke-static {v0, v8}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v23

    .line 342
    const-string v8, "vastAdsRequest"

    .line 343
    .line 344
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-static {v0}, Lcom/google/android/gms/cast/VastAdsRequest;->fromJson(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/VastAdsRequest;

    .line 349
    .line 350
    .line 351
    move-result-object v24

    .line 352
    new-instance v10, Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 353
    .line 354
    if-eqz p1, :cond_b

    .line 355
    .line 356
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-nez v0, :cond_c

    .line 361
    .line 362
    :cond_b
    const/16 v18, 0x0

    .line 363
    .line 364
    goto :goto_a

    .line 365
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    move-object/from16 v18, v0

    .line 370
    .line 371
    :goto_a
    invoke-direct/range {v10 .. v24}, Lcom/google/android/gms/cast/AdBreakClipInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    .line 373
    .line 374
    goto :goto_c

    .line 375
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 380
    .line 381
    new-instance v8, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    const-string v9, "Error while creating an AdBreakClipInfo from JSON: "

    .line 384
    .line 385
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    const-string v8, "AdBreakClipInfo"

    .line 396
    .line 397
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    goto/16 :goto_6

    .line 401
    .line 402
    :goto_c
    if-eqz v10, :cond_d

    .line 403
    .line 404
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    add-int/lit8 v7, v7, 0x1

    .line 408
    .line 409
    goto/16 :goto_5

    .line 410
    .line 411
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 412
    .line 413
    .line 414
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    .line 415
    .line 416
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 417
    .line 418
    .line 419
    iput-object v0, v1, Lcom/google/android/gms/cast/MediaInfo;->s:Ljava/util/ArrayList;

    .line 420
    .line 421
    :cond_f
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
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaInfo;

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
    check-cast p1, Lcom/google/android/gms/cast/MediaInfo;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->A:Lorg/json/JSONObject;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    move v3, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    move v3, v0

    .line 22
    :goto_0
    iget-object v4, p1, Lcom/google/android/gms/cast/MediaInfo;->A:Lorg/json/JSONObject;

    .line 23
    .line 24
    if-eqz v4, :cond_3

    .line 25
    .line 26
    move v5, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    move v5, v0

    .line 29
    :goto_1
    if-eq v3, v5, :cond_4

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_4
    if-eqz v1, :cond_5

    .line 34
    .line 35
    if-eqz v4, :cond_5

    .line 36
    .line 37
    invoke-static {v1, v4}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_6

    .line 42
    .line 43
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->b:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_6

    .line 52
    .line 53
    iget v1, p0, Lcom/google/android/gms/cast/MediaInfo;->e:I

    .line 54
    .line 55
    iget v3, p1, Lcom/google/android/gms/cast/MediaInfo;->e:I

    .line 56
    .line 57
    if-ne v1, v3, :cond_6

    .line 58
    .line 59
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->f:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->f:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_6

    .line 68
    .line 69
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->j:Lcom/google/android/gms/cast/MediaMetadata;

    .line 70
    .line 71
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->j:Lcom/google/android/gms/cast/MediaMetadata;

    .line 72
    .line 73
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaInfo;->m:J

    .line 80
    .line 81
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaInfo;->m:J

    .line 82
    .line 83
    cmp-long v1, v3, v5

    .line 84
    .line 85
    if-nez v1, :cond_6

    .line 86
    .line 87
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/ArrayList;

    .line 88
    .line 89
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->p:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->p:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 100
    .line 101
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/util/List;

    .line 108
    .line 109
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/util/List;

    .line 110
    .line 111
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->s:Ljava/util/ArrayList;

    .line 118
    .line 119
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->s:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_6

    .line 126
    .line 127
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_6

    .line 136
    .line 137
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 138
    .line 139
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 140
    .line 141
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaInfo;->v:J

    .line 148
    .line 149
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaInfo;->v:J

    .line 150
    .line 151
    cmp-long v1, v3, v5

    .line 152
    .line 153
    if-nez v1, :cond_6

    .line 154
    .line 155
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_6

    .line 164
    .line 165
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->x:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->x:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_6

    .line 174
    .line 175
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    .line 176
    .line 177
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_6

    .line 184
    .line 185
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/lang/String;

    .line 186
    .line 187
    iget-object p1, p1, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {v1, p1}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_6

    .line 194
    .line 195
    :goto_2
    return v0

    .line 196
    :cond_6
    :goto_3
    return v2
.end method

.method public getAdBreakClips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakClipInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->s:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getAdBreaks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getHlsSegmentFormat()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/cast/HlsSegmentFormat;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getHlsVideoSegmentFormat()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/cast/HlsVideoSegmentFormat;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/gms/cast/MediaMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->j:Lcom/google/android/gms/cast/MediaMetadata;

    return-object v0
.end method

.method public getStartAbsoluteTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaInfo;->v:J

    return-wide v0
.end method

.method public getStreamDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaInfo;->m:J

    return-wide v0
.end method

.method public getStreamType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaInfo;->e:I

    return v0
.end method

.method public getTextTrackStyle()Lcom/google/android/gms/cast/TextTrackStyle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->p:Lcom/google/android/gms/cast/TextTrackStyle;

    return-object v0
.end method

.method public getVmapAdsRequest()Lcom/google/android/gms/cast/VastAdsRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/google/android/gms/cast/VastAdsRequest;

    return-object v0
.end method

.method public hashCode()I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/cast/MediaInfo;->e:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-wide v2, v0, Lcom/google/android/gms/cast/MediaInfo;->m:J

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaInfo;->A:Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, v0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/util/List;

    .line 22
    .line 23
    iget-object v5, v0, Lcom/google/android/gms/cast/MediaInfo;->s:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-wide v6, v0, Lcom/google/android/gms/cast/MediaInfo;->v:J

    .line 26
    .line 27
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-object v7, v0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v8, v0, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v9, v0, Lcom/google/android/gms/cast/MediaInfo;->b:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v10, v0, Lcom/google/android/gms/cast/MediaInfo;->f:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v11, v0, Lcom/google/android/gms/cast/MediaInfo;->j:Lcom/google/android/gms/cast/MediaMetadata;

    .line 40
    .line 41
    iget-object v12, v0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/ArrayList;

    .line 42
    .line 43
    iget-object v13, v0, Lcom/google/android/gms/cast/MediaInfo;->p:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 44
    .line 45
    iget-object v14, v0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v15, v0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 48
    .line 49
    move-object/from16 v16, v1

    .line 50
    .line 51
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/lang/String;

    .line 52
    .line 53
    const/16 v0, 0x10

    .line 54
    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    .line 57
    const/16 v17, 0x0

    .line 58
    .line 59
    aput-object v9, v0, v17

    .line 60
    .line 61
    const/4 v9, 0x1

    .line 62
    aput-object v16, v0, v9

    .line 63
    .line 64
    const/4 v9, 0x2

    .line 65
    aput-object v10, v0, v9

    .line 66
    .line 67
    const/4 v9, 0x3

    .line 68
    aput-object v11, v0, v9

    .line 69
    .line 70
    const/4 v9, 0x4

    .line 71
    aput-object v2, v0, v9

    .line 72
    .line 73
    const/4 v2, 0x5

    .line 74
    aput-object v3, v0, v2

    .line 75
    .line 76
    const/4 v2, 0x6

    .line 77
    aput-object v12, v0, v2

    .line 78
    .line 79
    const/4 v2, 0x7

    .line 80
    aput-object v13, v0, v2

    .line 81
    .line 82
    const/16 v2, 0x8

    .line 83
    .line 84
    aput-object v4, v0, v2

    .line 85
    .line 86
    const/16 v2, 0x9

    .line 87
    .line 88
    aput-object v5, v0, v2

    .line 89
    .line 90
    const/16 v2, 0xa

    .line 91
    .line 92
    aput-object v14, v0, v2

    .line 93
    .line 94
    const/16 v2, 0xb

    .line 95
    .line 96
    aput-object v15, v0, v2

    .line 97
    .line 98
    const/16 v2, 0xc

    .line 99
    .line 100
    aput-object v6, v0, v2

    .line 101
    .line 102
    const/16 v2, 0xd

    .line 103
    .line 104
    aput-object v1, v0, v2

    .line 105
    .line 106
    const/16 v1, 0xe

    .line 107
    .line 108
    aput-object v7, v0, v1

    .line 109
    .line 110
    const/16 v1, 0xf

    .line 111
    .line 112
    aput-object v8, v0, v1

    .line 113
    .line 114
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->A:Lorg/json/JSONObject;

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
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->q:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getContentId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getContentType()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x5

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x6

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x7

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getMediaTracks()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x8

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getTextTrackStyle()Lcom/google/android/gms/cast/TextTrackStyle;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 73
    .line 74
    .line 75
    const/16 v1, 0x9

    .line 76
    .line 77
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->q:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    const/16 v1, 0xa

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreaks()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 89
    .line 90
    .line 91
    const/16 v1, 0xb

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreakClips()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 98
    .line 99
    .line 100
    const/16 v1, 0xc

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getEntity()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    const/16 v1, 0xd

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getVmapAdsRequest()Lcom/google/android/gms/cast/VastAdsRequest;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 116
    .line 117
    .line 118
    const/16 p2, 0xe

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getStartAbsoluteTime()J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 125
    .line 126
    .line 127
    const/16 p2, 0xf

    .line 128
    .line 129
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    const/16 p2, 0x10

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getContentUrl()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 141
    .line 142
    .line 143
    const/16 p2, 0x11

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getHlsSegmentFormat()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 150
    .line 151
    .line 152
    const/16 p2, 0x12

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getHlsVideoSegmentFormat()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public final zza()Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "contentId"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "contentUrl"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->x:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/google/android/gms/cast/MediaInfo;->e:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eq v1, v2, :cond_0

    .line 27
    .line 28
    const-string v1, "NONE"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v1, "LIVE"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v1, "BUFFERED"

    .line 35
    .line 36
    :goto_0
    const-string v2, "streamType"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->f:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const-string v2, "contentType"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->j:Lcom/google/android/gms/cast/MediaMetadata;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    const-string v2, "metadata"

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaMetadata;->zza()Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->m:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    const-wide/16 v3, -0x1

    .line 66
    .line 67
    cmp-long v5, v1, v3

    .line 68
    .line 69
    const-string v6, "duration"

    .line 70
    .line 71
    if-gtz v5, :cond_4

    .line 72
    .line 73
    :try_start_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 74
    .line 75
    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-static {v1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->millisecToSec(J)D

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    invoke-virtual {v0, v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .line 85
    .line 86
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/ArrayList;

    .line 87
    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    .line 91
    .line 92
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_5

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Lcom/google/android/gms/cast/MediaTrack;

    .line 110
    .line 111
    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaTrack;->zza()Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    const-string v1, "tracks"

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    .line 123
    .line 124
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->p:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 125
    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    const-string v2, "textTrackStyle"

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/cast/TextTrackStyle;->zza()Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->A:Lorg/json/JSONObject;

    .line 138
    .line 139
    if-eqz v1, :cond_8

    .line 140
    .line 141
    const-string v2, "customData"

    .line 142
    .line 143
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    .line 147
    .line 148
    if-eqz v1, :cond_9

    .line 149
    .line 150
    const-string v2, "entity"

    .line 151
    .line 152
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/util/List;

    .line 156
    .line 157
    if-eqz v1, :cond_b

    .line 158
    .line 159
    new-instance v1, Lorg/json/JSONArray;

    .line 160
    .line 161
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    if-eqz v5, :cond_a

    .line 175
    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    check-cast v5, Lcom/google/android/gms/cast/AdBreakInfo;

    .line 181
    .line 182
    invoke-virtual {v5}, Lcom/google/android/gms/cast/AdBreakInfo;->zza()Lorg/json/JSONObject;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_a
    const-string v2, "breaks"

    .line 191
    .line 192
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    .line 194
    .line 195
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->s:Ljava/util/ArrayList;

    .line 196
    .line 197
    if-eqz v1, :cond_d

    .line 198
    .line 199
    new-instance v1, Lorg/json/JSONArray;

    .line 200
    .line 201
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 202
    .line 203
    .line 204
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->s:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-eqz v5, :cond_c

    .line 215
    .line 216
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    check-cast v5, Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 221
    .line 222
    invoke-virtual {v5}, Lcom/google/android/gms/cast/AdBreakClipInfo;->zza()Lorg/json/JSONObject;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_c
    const-string v2, "breakClips"

    .line 231
    .line 232
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    .line 234
    .line 235
    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 236
    .line 237
    if-eqz v1, :cond_e

    .line 238
    .line 239
    const-string v2, "vmapAdsRequest"

    .line 240
    .line 241
    invoke-virtual {v1}, Lcom/google/android/gms/cast/VastAdsRequest;->zza()Lorg/json/JSONObject;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    .line 247
    .line 248
    :cond_e
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->v:J

    .line 249
    .line 250
    cmp-long v3, v1, v3

    .line 251
    .line 252
    if-eqz v3, :cond_f

    .line 253
    .line 254
    const-string v3, "startAbsoluteTime"

    .line 255
    .line 256
    invoke-static {v1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->millisecToSec(J)D

    .line 257
    .line 258
    .line 259
    move-result-wide v1

    .line 260
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 261
    .line 262
    .line 263
    :cond_f
    const-string v1, "atvEntity"

    .line 264
    .line 265
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    .line 269
    .line 270
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    .line 271
    .line 272
    if-eqz v1, :cond_10

    .line 273
    .line 274
    const-string v2, "hlsSegmentFormat"

    .line 275
    .line 276
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    .line 278
    .line 279
    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/lang/String;

    .line 280
    .line 281
    if-eqz v1, :cond_11

    .line 282
    .line 283
    const-string v2, "hlsVideoSegmentFormat"

    .line 284
    .line 285
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 286
    .line 287
    .line 288
    :catch_0
    :cond_11
    return-object v0
.end method
