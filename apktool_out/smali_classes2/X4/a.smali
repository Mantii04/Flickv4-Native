.class public final synthetic LX4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;
.implements Lb3/a;
.implements La3/p;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lf1/q0;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LX4/a;->b:I

    iput-object p2, p0, LX4/a;->f:Ljava/lang/Object;

    iput-object p3, p0, LX4/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, La3/r;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 19
    .line 20
    .line 21
    const-string v1, "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x1

    .line 40
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    int-to-long v5, v3

    .line 45
    sget-object v3, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->n:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 46
    .line 47
    invoke-virtual {v0, v5, v6, v3, v4}, La3/r;->recordLogEventDropped(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 52
    .line 53
    .line 54
    const-string v0, "DELETE FROM events WHERE num_attempts >= 16"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public execute()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, LX4/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LZ2/m;

    .line 9
    .line 10
    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    int-to-long v3, v3

    .line 45
    sget-object v5, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->p:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/String;

    .line 52
    .line 53
    iget-object v6, v0, LZ2/m;->i:La3/c;

    .line 54
    .line 55
    check-cast v6, La3/r;

    .line 56
    .line 57
    invoke-virtual {v6, v3, v4, v5, v2}, La3/r;->recordLogEventDropped(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    return-object v0

    .line 63
    :pswitch_0
    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, LZ2/m;

    .line 66
    .line 67
    iget-object v0, v0, LZ2/m;->c:La3/d;

    .line 68
    .line 69
    check-cast v0, La3/r;

    .line 70
    .line 71
    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Ljava/lang/Iterable;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, La3/r;->recordSuccess(Ljava/lang/Iterable;)V

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    return-object v0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, LX4/a;->b:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/text/CueGroup;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->j0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/text/CueGroup;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/VideoSize;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->p(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/DeviceInfo;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->z(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/DeviceInfo;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/drm/KeyRequestInfo;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->e0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/drm/KeyRequestInfo;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Tracks;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->w(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Tracks;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Metadata;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->D(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Metadata;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_6
    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/AudioAttributes;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->g(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/AudioAttributes;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_7
    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Player$Commands;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->c0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$Commands;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_8
    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/TrackSelectionParameters;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->a(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_9
    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/PlaybackParameters;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->H(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackParameters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LX4/a;->b:I

    .line 4
    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, LX4/a;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    move-object/from16 v2, p1

    .line 13
    .line 14
    check-cast v2, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, v1, LX4/a;->f:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Lflix/com/vision/processors/english/m;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-class v4, Lflix/com/vision/activities/MovieDetailActivity;

    .line 24
    .line 25
    const-string v5, ""

    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :try_start_0
    invoke-static {v2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v6, "status"

    .line 40
    .line 41
    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    const-string v7, "success"

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_0

    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_0
    const-string v6, "content"

    .line 60
    .line 61
    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/4 v6, 0x0

    .line 70
    :goto_0
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-ge v6, v7, :cond_4

    .line 75
    .line 76
    invoke-virtual {v2, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 81
    .line 82
    .line 83
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :try_start_1
    const-string v8, "stream_link"

    .line 85
    .line 86
    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    if-eqz v8, :cond_3

    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    const/16 v10, 0xa

    .line 101
    .line 102
    if-le v9, v10, :cond_3

    .line 103
    .line 104
    const-string v9, "size"

    .line 105
    .line 106
    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eqz v7, :cond_1

    .line 115
    .line 116
    const/4 v9, -0x1

    .line 117
    if-eq v7, v9, :cond_1

    .line 118
    .line 119
    int-to-long v9, v7

    .line 120
    invoke-static {v9, v10}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    goto :goto_1

    .line 125
    :cond_1
    move-object v7, v5

    .line 126
    :goto_1
    new-instance v9, Lflix/com/vision/models/VideoSource;

    .line 127
    .line 128
    invoke-direct {v9}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 129
    .line 130
    .line 131
    const/4 v10, 0x1

    .line 132
    iput-boolean v10, v9, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 133
    .line 134
    new-instance v11, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v12, "[PREMIUMIZE.ME] [FAST] ["

    .line 140
    .line 141
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v7, "]"

    .line 148
    .line 149
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    iput-object v7, v9, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 157
    .line 158
    iput-object v8, v9, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v3, v0}, Lflix/com/vision/processors/english/m;->getOriginalName(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    iput-object v7, v9, Lflix/com/vision/models/VideoSource;->originalFileName:Ljava/lang/String;

    .line 165
    .line 166
    iput-boolean v10, v9, Lflix/com/vision/models/VideoSource;->isPremiumize:Z

    .line 167
    .line 168
    iput-boolean v10, v9, Lflix/com/vision/models/VideoSource;->isTorrentMagnet:Z

    .line 169
    .line 170
    invoke-static {v9}, Lflix/com/vision/activities/LinksActivity;->setRDQtyLabel(Lflix/com/vision/models/VideoSource;)V

    .line 171
    .line 172
    .line 173
    iget v7, v9, Lflix/com/vision/models/VideoSource;->quality:I

    .line 174
    .line 175
    if-nez v7, :cond_2

    .line 176
    .line 177
    const/16 v7, 0x12c

    .line 178
    .line 179
    iput v7, v9, Lflix/com/vision/models/VideoSource;->quality:I

    .line 180
    .line 181
    :cond_2
    invoke-virtual {v3, v9}, Lflix/com/vision/processors/english/m;->addLink(Lflix/com/vision/models/VideoSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    .line 183
    .line 184
    :catch_0
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :catch_1
    move-exception v0

    .line 188
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-static {v2, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :catch_2
    move-exception v0

    .line 197
    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-static {v2, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .line 203
    .line 204
    :cond_4
    :goto_2
    return-void

    .line 205
    :sswitch_0
    iget-object v0, v1, LX4/a;->e:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v0, Lflix/com/vision/models/hindi/PlaylistItem;

    .line 208
    .line 209
    move-object/from16 v2, p1

    .line 210
    .line 211
    check-cast v2, Ljava/lang/String;

    .line 212
    .line 213
    iget-object v3, v1, LX4/a;->f:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v3, Ld5/l;

    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    const-string v4, ""

    .line 221
    .line 222
    const-class v5, Lflix/com/vision/activities/MovieDetailActivity;

    .line 223
    .line 224
    const-string v6, "English"

    .line 225
    .line 226
    const-string v7, "1080p - [FVSTREAM] - [DIRECT] - "

    .line 227
    .line 228
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    :try_start_3
    new-instance v8, Lflix/com/vision/models/VideoSource;

    .line 233
    .line 234
    invoke-direct {v8}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 235
    .line 236
    .line 237
    iput-object v2, v8, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 238
    .line 239
    const/4 v2, 0x1

    .line 240
    iput-boolean v2, v8, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 241
    .line 242
    const/16 v9, 0x438

    .line 243
    .line 244
    iput v9, v8, Lflix/com/vision/models/VideoSource;->quality:I

    .line 245
    .line 246
    iget-object v9, v3, Ld5/l;->b:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {v9}, Lh5/n;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    iput-object v9, v8, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 253
    .line 254
    iget-object v9, v0, Lflix/com/vision/models/hindi/PlaylistItem;->language:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    if-nez v9, :cond_5

    .line 261
    .line 262
    iput-boolean v2, v8, Lflix/com/vision/models/VideoSource;->isHindiDirect:Z

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :catch_3
    move-exception v0

    .line 266
    goto :goto_4

    .line 267
    :cond_5
    iput-boolean v2, v8, Lflix/com/vision/models/VideoSource;->isFvDirectStream:Z

    .line 268
    .line 269
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object v7, v0, Lflix/com/vision/models/hindi/PlaylistItem;->language:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    iput-object v2, v8, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 284
    .line 285
    iget-object v2, v0, Lflix/com/vision/models/hindi/PlaylistItem;->language:Ljava/lang/String;

    .line 286
    .line 287
    iput-object v2, v8, Lflix/com/vision/models/VideoSource;->language:Ljava/lang/String;

    .line 288
    .line 289
    iget-object v2, v3, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 290
    .line 291
    invoke-interface {v2, v8}, LU4/f;->OnSuccess(Lflix/com/vision/models/VideoSource;)V

    .line 292
    .line 293
    .line 294
    iget-object v0, v0, Lflix/com/vision/models/hindi/PlaylistItem;->language:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_6

    .line 301
    .line 302
    new-instance v0, LY4/c;

    .line 303
    .line 304
    iget-object v2, v3, Ld5/l;->a:Landroid/content/Context;

    .line 305
    .line 306
    iget-object v3, v3, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 307
    .line 308
    invoke-direct {v0, v2, v3}, LY4/c;-><init>(Landroid/content/Context;LU4/f;)V

    .line 309
    .line 310
    .line 311
    iget-object v2, v8, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v0, v8, v2}, LY4/c;->process(Lflix/com/vision/models/VideoSource;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 314
    .line 315
    .line 316
    goto :goto_5

    .line 317
    :goto_4
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 322
    .line 323
    .line 324
    goto :goto_5

    .line 325
    :catch_4
    move-exception v0

    .line 326
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    .line 332
    .line 333
    :cond_6
    :goto_5
    return-void

    .line 334
    :sswitch_1
    iget-object v0, v1, LX4/a;->e:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v0, Lflix/com/vision/models/hindi/PlaylistItem;

    .line 337
    .line 338
    move-object/from16 v2, p1

    .line 339
    .line 340
    check-cast v2, Ljava/lang/String;

    .line 341
    .line 342
    iget-object v3, v1, LX4/a;->f:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v3, Ld5/f;

    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    const-string v4, ""

    .line 350
    .line 351
    const-class v5, Lflix/com/vision/activities/MovieDetailActivity;

    .line 352
    .line 353
    const-string v6, "English"

    .line 354
    .line 355
    const-string v7, "1080p - [FVSTREAM] - [DIRECT] - "

    .line 356
    .line 357
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    :try_start_5
    new-instance v8, Lflix/com/vision/models/VideoSource;

    .line 362
    .line 363
    invoke-direct {v8}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 364
    .line 365
    .line 366
    iput-object v2, v8, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 367
    .line 368
    const/4 v2, 0x1

    .line 369
    iput-boolean v2, v8, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 370
    .line 371
    const/16 v9, 0x438

    .line 372
    .line 373
    iput v9, v8, Lflix/com/vision/models/VideoSource;->quality:I

    .line 374
    .line 375
    iget-object v9, v3, Ld5/f;->b:Ljava/lang/String;

    .line 376
    .line 377
    invoke-static {v9}, Lh5/n;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v9

    .line 381
    iput-object v9, v8, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 382
    .line 383
    iget-object v9, v0, Lflix/com/vision/models/hindi/PlaylistItem;->language:Ljava/lang/String;

    .line 384
    .line 385
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 386
    .line 387
    .line 388
    move-result v9

    .line 389
    if-nez v9, :cond_7

    .line 390
    .line 391
    iput-boolean v2, v8, Lflix/com/vision/models/VideoSource;->isHindiDirect:Z

    .line 392
    .line 393
    goto :goto_6

    .line 394
    :catch_5
    move-exception v0

    .line 395
    goto :goto_7

    .line 396
    :cond_7
    iput-boolean v2, v8, Lflix/com/vision/models/VideoSource;->isFvDirectStream:Z

    .line 397
    .line 398
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-object v7, v0, Lflix/com/vision/models/hindi/PlaylistItem;->language:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    iput-object v2, v8, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 413
    .line 414
    iget-object v2, v3, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 415
    .line 416
    invoke-interface {v2, v8}, LU4/f;->OnSuccess(Lflix/com/vision/models/VideoSource;)V

    .line 417
    .line 418
    .line 419
    iget-object v0, v0, Lflix/com/vision/models/hindi/PlaylistItem;->language:Ljava/lang/String;

    .line 420
    .line 421
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    if-eqz v0, :cond_8

    .line 426
    .line 427
    new-instance v0, LY4/c;

    .line 428
    .line 429
    iget-object v2, v3, Ld5/f;->a:Landroid/content/Context;

    .line 430
    .line 431
    iget-object v3, v3, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 432
    .line 433
    invoke-direct {v0, v2, v3}, LY4/c;-><init>(Landroid/content/Context;LU4/f;)V

    .line 434
    .line 435
    .line 436
    iget-object v2, v8, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 437
    .line 438
    invoke-virtual {v0, v8, v2}, LY4/c;->process(Lflix/com/vision/models/VideoSource;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 439
    .line 440
    .line 441
    goto :goto_8

    .line 442
    :goto_7
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 447
    .line 448
    .line 449
    goto :goto_8

    .line 450
    :catch_6
    move-exception v0

    .line 451
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .line 457
    .line 458
    :cond_8
    :goto_8
    return-void

    .line 459
    :sswitch_2
    move-object/from16 v0, p1

    .line 460
    .line 461
    check-cast v0, Ljava/lang/String;

    .line 462
    .line 463
    iget-object v2, v1, LX4/a;->f:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast v2, La5/x;

    .line 466
    .line 467
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    new-instance v3, La5/w;

    .line 475
    .line 476
    iget-object v4, v1, LX4/a;->e:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v4, Ljava/lang/String;

    .line 479
    .line 480
    invoke-direct {v3, v2, v0, v4}, La5/w;-><init>(La5/x;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 484
    .line 485
    const/4 v2, 0x0

    .line 486
    new-array v2, v2, [Ljava/lang/Void;

    .line 487
    .line 488
    invoke-virtual {v3, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 489
    .line 490
    .line 491
    return-void

    .line 492
    :sswitch_3
    move-object/from16 v0, p1

    .line 493
    .line 494
    check-cast v0, Ljava/lang/String;

    .line 495
    .line 496
    iget-object v2, v1, LX4/a;->f:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast v2, La5/t;

    .line 499
    .line 500
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    .line 502
    .line 503
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    new-instance v3, La5/s;

    .line 508
    .line 509
    iget-object v4, v1, LX4/a;->e:Ljava/lang/Object;

    .line 510
    .line 511
    check-cast v4, Ljava/lang/String;

    .line 512
    .line 513
    invoke-direct {v3, v2, v0, v4}, La5/s;-><init>(La5/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 517
    .line 518
    const/4 v2, 0x0

    .line 519
    new-array v2, v2, [Ljava/lang/Void;

    .line 520
    .line 521
    invoke-virtual {v3, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 522
    .line 523
    .line 524
    return-void

    .line 525
    :sswitch_4
    move-object/from16 v0, p1

    .line 526
    .line 527
    check-cast v0, Ljava/lang/String;

    .line 528
    .line 529
    iget-object v2, v1, LX4/a;->f:Ljava/lang/Object;

    .line 530
    .line 531
    check-cast v2, La5/p;

    .line 532
    .line 533
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    .line 535
    .line 536
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    new-instance v3, La5/o;

    .line 541
    .line 542
    iget-object v4, v1, LX4/a;->e:Ljava/lang/Object;

    .line 543
    .line 544
    check-cast v4, Ljava/lang/String;

    .line 545
    .line 546
    invoke-direct {v3, v2, v0, v4}, La5/o;-><init>(La5/p;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 550
    .line 551
    const/4 v2, 0x0

    .line 552
    new-array v2, v2, [Ljava/lang/Void;

    .line 553
    .line 554
    invoke-virtual {v3, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 555
    .line 556
    .line 557
    return-void

    .line 558
    :sswitch_5
    move-object/from16 v0, p1

    .line 559
    .line 560
    check-cast v0, Ljava/lang/String;

    .line 561
    .line 562
    iget-object v2, v1, LX4/a;->f:Ljava/lang/Object;

    .line 563
    .line 564
    check-cast v2, La5/l;

    .line 565
    .line 566
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    new-instance v3, La5/k;

    .line 574
    .line 575
    iget-object v4, v1, LX4/a;->e:Ljava/lang/Object;

    .line 576
    .line 577
    check-cast v4, Ljava/lang/String;

    .line 578
    .line 579
    invoke-direct {v3, v2, v0, v4}, La5/k;-><init>(La5/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 583
    .line 584
    const/4 v2, 0x0

    .line 585
    new-array v2, v2, [Ljava/lang/Void;

    .line 586
    .line 587
    invoke-virtual {v3, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 588
    .line 589
    .line 590
    return-void

    .line 591
    :sswitch_6
    move-object/from16 v0, p1

    .line 592
    .line 593
    check-cast v0, Ljava/lang/String;

    .line 594
    .line 595
    iget-object v2, v1, LX4/a;->f:Ljava/lang/Object;

    .line 596
    .line 597
    check-cast v2, La5/h;

    .line 598
    .line 599
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    .line 601
    .line 602
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    new-instance v3, La5/g;

    .line 607
    .line 608
    iget-object v4, v1, LX4/a;->e:Ljava/lang/Object;

    .line 609
    .line 610
    check-cast v4, Ljava/lang/String;

    .line 611
    .line 612
    invoke-direct {v3, v2, v0, v4}, La5/g;-><init>(La5/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 616
    .line 617
    const/4 v2, 0x0

    .line 618
    new-array v2, v2, [Ljava/lang/Void;

    .line 619
    .line 620
    invoke-virtual {v3, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 621
    .line 622
    .line 623
    return-void

    .line 624
    :sswitch_7
    move-object/from16 v0, p1

    .line 625
    .line 626
    check-cast v0, Ljava/lang/String;

    .line 627
    .line 628
    iget-object v2, v1, LX4/a;->f:Ljava/lang/Object;

    .line 629
    .line 630
    check-cast v2, La5/d;

    .line 631
    .line 632
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    .line 634
    .line 635
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    new-instance v3, La5/c;

    .line 640
    .line 641
    iget-object v4, v1, LX4/a;->e:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast v4, Ljava/lang/String;

    .line 644
    .line 645
    invoke-direct {v3, v2, v0, v4}, La5/c;-><init>(La5/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 649
    .line 650
    const/4 v2, 0x0

    .line 651
    new-array v2, v2, [Ljava/lang/Void;

    .line 652
    .line 653
    invoke-virtual {v3, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 654
    .line 655
    .line 656
    return-void

    .line 657
    :sswitch_8
    move-object/from16 v0, p1

    .line 658
    .line 659
    check-cast v0, Ljava/lang/String;

    .line 660
    .line 661
    iget-object v2, v1, LX4/a;->f:Ljava/lang/Object;

    .line 662
    .line 663
    check-cast v2, LY4/b;

    .line 664
    .line 665
    const-string v3, "#EXT-X-STREAM-INF:"

    .line 666
    .line 667
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    array-length v3, v0

    .line 672
    const/4 v4, 0x0

    .line 673
    move v5, v4

    .line 674
    :goto_9
    iget-object v6, v2, LY4/b;->b:LY4/c;

    .line 675
    .line 676
    if-ge v5, v3, :cond_12

    .line 677
    .line 678
    aget-object v7, v0, v5

    .line 679
    .line 680
    const-string v8, "RESOLUTION="

    .line 681
    .line 682
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v7

    .line 686
    array-length v8, v7

    .line 687
    move v9, v4

    .line 688
    :goto_a
    if-ge v9, v8, :cond_11

    .line 689
    .line 690
    aget-object v10, v7, v9

    .line 691
    .line 692
    const-string v11, "1080"

    .line 693
    .line 694
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 695
    .line 696
    .line 697
    move-result v11

    .line 698
    iget-object v12, v1, LX4/a;->e:Ljava/lang/Object;

    .line 699
    .line 700
    check-cast v12, Ljava/lang/String;

    .line 701
    .line 702
    const-string v13, ".m3u8"

    .line 703
    .line 704
    const-string v14, "/index.m3u8"

    .line 705
    .line 706
    if-eqz v11, :cond_a

    .line 707
    .line 708
    iget-boolean v11, v6, LY4/c;->a:Z

    .line 709
    .line 710
    if-nez v11, :cond_9

    .line 711
    .line 712
    const-string v11, "/1080/index.m3u8"

    .line 713
    .line 714
    invoke-virtual {v12, v14, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v11

    .line 718
    goto :goto_b

    .line 719
    :cond_9
    const-string v11, ".1080.m3u8"

    .line 720
    .line 721
    invoke-virtual {v12, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v11

    .line 725
    :goto_b
    const-string v13, "1080p"

    .line 726
    .line 727
    iget-object v15, v6, LY4/c;->f:Ljava/lang/String;

    .line 728
    .line 729
    invoke-virtual {v6, v11, v13, v15}, LY4/c;->addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    goto :goto_e

    .line 733
    :cond_a
    const-string v11, "720"

    .line 734
    .line 735
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 736
    .line 737
    .line 738
    move-result v11

    .line 739
    if-eqz v11, :cond_c

    .line 740
    .line 741
    iget-boolean v11, v6, LY4/c;->a:Z

    .line 742
    .line 743
    if-nez v11, :cond_b

    .line 744
    .line 745
    const-string v11, "/720/index.m3u8"

    .line 746
    .line 747
    invoke-virtual {v12, v14, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v11

    .line 751
    goto :goto_c

    .line 752
    :cond_b
    const-string v11, ".720.m3u8"

    .line 753
    .line 754
    invoke-virtual {v12, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v11

    .line 758
    :goto_c
    const-string v13, "720p"

    .line 759
    .line 760
    iget-object v15, v6, LY4/c;->f:Ljava/lang/String;

    .line 761
    .line 762
    invoke-virtual {v6, v11, v13, v15}, LY4/c;->addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    goto :goto_e

    .line 766
    :cond_c
    const-string v11, "480"

    .line 767
    .line 768
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 769
    .line 770
    .line 771
    move-result v11

    .line 772
    if-eqz v11, :cond_e

    .line 773
    .line 774
    iget-boolean v11, v6, LY4/c;->a:Z

    .line 775
    .line 776
    if-nez v11, :cond_d

    .line 777
    .line 778
    const-string v11, "/480/index.m3u8"

    .line 779
    .line 780
    invoke-virtual {v12, v14, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v11

    .line 784
    goto :goto_d

    .line 785
    :cond_d
    const-string v11, ".480.m3u8"

    .line 786
    .line 787
    invoke-virtual {v12, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v11

    .line 791
    :goto_d
    const-string v13, "480p"

    .line 792
    .line 793
    iget-object v15, v6, LY4/c;->f:Ljava/lang/String;

    .line 794
    .line 795
    invoke-virtual {v6, v11, v13, v15}, LY4/c;->addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    :cond_e
    :goto_e
    iget-object v11, v6, LY4/c;->d:LU4/g;

    .line 799
    .line 800
    if-eqz v11, :cond_10

    .line 801
    .line 802
    const-string v11, "360"

    .line 803
    .line 804
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 805
    .line 806
    .line 807
    move-result v11

    .line 808
    if-eqz v11, :cond_f

    .line 809
    .line 810
    const-string v10, "/360/index.m3u8"

    .line 811
    .line 812
    invoke-virtual {v12, v14, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v10

    .line 816
    const-string v11, "360p"

    .line 817
    .line 818
    iget-object v12, v6, LY4/c;->f:Ljava/lang/String;

    .line 819
    .line 820
    invoke-virtual {v6, v10, v11, v12}, LY4/c;->addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    goto :goto_f

    .line 824
    :cond_f
    const-string v11, "250"

    .line 825
    .line 826
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 827
    .line 828
    .line 829
    move-result v10

    .line 830
    if-eqz v10, :cond_10

    .line 831
    .line 832
    const-string v10, "/250/index.m3u8"

    .line 833
    .line 834
    invoke-virtual {v12, v14, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v10

    .line 838
    const-string v11, "250p"

    .line 839
    .line 840
    iget-object v12, v6, LY4/c;->f:Ljava/lang/String;

    .line 841
    .line 842
    invoke-virtual {v6, v10, v11, v12}, LY4/c;->addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    :cond_10
    :goto_f
    add-int/lit8 v9, v9, 0x1

    .line 846
    .line 847
    goto/16 :goto_a

    .line 848
    .line 849
    :cond_11
    add-int/lit8 v5, v5, 0x1

    .line 850
    .line 851
    goto/16 :goto_9

    .line 852
    .line 853
    :cond_12
    iget-object v0, v6, LY4/c;->b:Ljava/util/ArrayList;

    .line 854
    .line 855
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 856
    .line 857
    .line 858
    move-result v0

    .line 859
    if-lez v0, :cond_15

    .line 860
    .line 861
    iget-object v0, v6, LY4/c;->b:Ljava/util/ArrayList;

    .line 862
    .line 863
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 864
    .line 865
    .line 866
    iget-object v2, v6, LY4/c;->d:LU4/g;

    .line 867
    .line 868
    if-eqz v2, :cond_14

    .line 869
    .line 870
    iget-object v2, v6, LY4/c;->e:Lflix/com/vision/models/VideoSource;

    .line 871
    .line 872
    if-eqz v2, :cond_13

    .line 873
    .line 874
    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 875
    .line 876
    .line 877
    :cond_13
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 878
    .line 879
    .line 880
    iget-object v2, v6, LY4/c;->d:LU4/g;

    .line 881
    .line 882
    invoke-interface {v2, v0}, LU4/g;->OnM3USuccess(Ljava/util/ArrayList;)V

    .line 883
    .line 884
    .line 885
    goto :goto_10

    .line 886
    :cond_14
    iget-object v2, v6, LY4/c;->c:LU4/f;

    .line 887
    .line 888
    invoke-interface {v2, v0}, LU4/f;->OnSuccess(Ljava/util/ArrayList;)V

    .line 889
    .line 890
    .line 891
    :cond_15
    :goto_10
    return-void

    .line 892
    :sswitch_9
    move-object/from16 v0, p1

    .line 893
    .line 894
    check-cast v0, Ljava/lang/String;

    .line 895
    .line 896
    iget-object v2, v1, LX4/a;->f:Ljava/lang/Object;

    .line 897
    .line 898
    check-cast v2, LX4/b;

    .line 899
    .line 900
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 901
    .line 902
    .line 903
    const-string v3, "\\?"

    .line 904
    .line 905
    iget-object v4, v1, LX4/a;->e:Ljava/lang/Object;

    .line 906
    .line 907
    check-cast v4, Ljava/lang/String;

    .line 908
    .line 909
    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v3

    .line 913
    const-string v4, "#EXT-X-STREAM-INF:"

    .line 914
    .line 915
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v0

    .line 919
    array-length v4, v0

    .line 920
    const/4 v6, 0x0

    .line 921
    :goto_11
    iget-object v7, v2, LX4/b;->b:LX4/c;

    .line 922
    .line 923
    if-ge v6, v4, :cond_1c

    .line 924
    .line 925
    aget-object v8, v0, v6

    .line 926
    .line 927
    const-string v9, "NAME="

    .line 928
    .line 929
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v8

    .line 933
    array-length v9, v8

    .line 934
    const/4 v10, 0x0

    .line 935
    :goto_12
    if-ge v10, v9, :cond_1b

    .line 936
    .line 937
    aget-object v11, v8, v10

    .line 938
    .line 939
    const-string v12, "1080p"

    .line 940
    .line 941
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 942
    .line 943
    .line 944
    move-result v13

    .line 945
    const-string v14, " "

    .line 946
    .line 947
    const-string v15, "\n"

    .line 948
    .line 949
    const/16 p1, 0x0

    .line 950
    .line 951
    const-string v5, "hls.m3u8"

    .line 952
    .line 953
    move-object/from16 v16, v0

    .line 954
    .line 955
    const-string v0, ""

    .line 956
    .line 957
    if-eqz v13, :cond_16

    .line 958
    .line 959
    aget-object v13, v3, p1

    .line 960
    .line 961
    const-string v1, "\"1080p\""

    .line 962
    .line 963
    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v1

    .line 967
    invoke-virtual {v13, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    invoke-virtual {v1, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v1

    .line 975
    invoke-virtual {v1, v14, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v0

    .line 979
    invoke-virtual {v7, v0, v12}, LX4/c;->addLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    goto/16 :goto_13

    .line 983
    .line 984
    :cond_16
    const-string v1, "720p"

    .line 985
    .line 986
    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 987
    .line 988
    .line 989
    move-result v12

    .line 990
    if-eqz v12, :cond_17

    .line 991
    .line 992
    aget-object v12, v3, p1

    .line 993
    .line 994
    const-string v13, "\"720p\""

    .line 995
    .line 996
    invoke-virtual {v11, v13, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v11

    .line 1000
    invoke-virtual {v12, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v5

    .line 1004
    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v5

    .line 1008
    invoke-virtual {v5, v14, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    invoke-virtual {v7, v0, v1}, LX4/c;->addLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .line 1014
    .line 1015
    goto :goto_13

    .line 1016
    :cond_17
    const-string v1, "480p"

    .line 1017
    .line 1018
    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v12

    .line 1022
    if-eqz v12, :cond_18

    .line 1023
    .line 1024
    aget-object v12, v3, p1

    .line 1025
    .line 1026
    const-string v13, "\"480p\""

    .line 1027
    .line 1028
    invoke-virtual {v11, v13, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v11

    .line 1032
    invoke-virtual {v12, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v5

    .line 1036
    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v5

    .line 1040
    invoke-virtual {v5, v14, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    invoke-virtual {v7, v0, v1}, LX4/c;->addLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    .line 1046
    .line 1047
    goto :goto_13

    .line 1048
    :cond_18
    const-string v1, "360p"

    .line 1049
    .line 1050
    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1051
    .line 1052
    .line 1053
    move-result v12

    .line 1054
    if-eqz v12, :cond_19

    .line 1055
    .line 1056
    aget-object v12, v3, p1

    .line 1057
    .line 1058
    const-string v13, "\"360p\""

    .line 1059
    .line 1060
    invoke-virtual {v11, v13, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v11

    .line 1064
    invoke-virtual {v12, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v5

    .line 1068
    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v5

    .line 1072
    invoke-virtual {v5, v14, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    invoke-virtual {v7, v0, v1}, LX4/c;->addLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    goto :goto_13

    .line 1080
    :cond_19
    const-string v1, "250p"

    .line 1081
    .line 1082
    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1083
    .line 1084
    .line 1085
    move-result v12

    .line 1086
    if-eqz v12, :cond_1a

    .line 1087
    .line 1088
    aget-object v12, v3, p1

    .line 1089
    .line 1090
    const-string v13, "\"250p\""

    .line 1091
    .line 1092
    invoke-virtual {v11, v13, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v11

    .line 1096
    invoke-virtual {v12, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v5

    .line 1100
    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v5

    .line 1104
    invoke-virtual {v5, v14, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    invoke-virtual {v7, v0, v1}, LX4/c;->addLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    .line 1110
    .line 1111
    :cond_1a
    :goto_13
    add-int/lit8 v10, v10, 0x1

    .line 1112
    .line 1113
    move-object/from16 v1, p0

    .line 1114
    .line 1115
    move-object/from16 v0, v16

    .line 1116
    .line 1117
    goto/16 :goto_12

    .line 1118
    .line 1119
    :cond_1b
    move-object/from16 v16, v0

    .line 1120
    .line 1121
    const/16 p1, 0x0

    .line 1122
    .line 1123
    add-int/lit8 v6, v6, 0x1

    .line 1124
    .line 1125
    move-object/from16 v1, p0

    .line 1126
    .line 1127
    goto/16 :goto_11

    .line 1128
    .line 1129
    :cond_1c
    const/16 p1, 0x0

    .line 1130
    .line 1131
    iget-object v0, v7, LX4/c;->a:Ljava/util/ArrayList;

    .line 1132
    .line 1133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1134
    .line 1135
    .line 1136
    move-result v0

    .line 1137
    if-lez v0, :cond_1e

    .line 1138
    .line 1139
    iget-object v0, v7, LX4/c;->a:Ljava/util/ArrayList;

    .line 1140
    .line 1141
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1142
    .line 1143
    .line 1144
    iget-object v1, v7, LX4/c;->c:Lflix/com/vision/models/adult/AdultLink;

    .line 1145
    .line 1146
    if-eqz v1, :cond_1d

    .line 1147
    .line 1148
    move/from16 v2, p1

    .line 1149
    .line 1150
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1151
    .line 1152
    .line 1153
    :cond_1d
    iget-object v1, v7, LX4/c;->b:LU4/a;

    .line 1154
    .line 1155
    invoke-interface {v1, v0}, LU4/a;->OnStreamResolvedSuccess(Ljava/util/ArrayList;)V

    .line 1156
    .line 1157
    .line 1158
    :cond_1e
    return-void

    .line 1159
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_8
        0x5 -> :sswitch_7
        0x6 -> :sswitch_6
        0x7 -> :sswitch_5
        0x8 -> :sswitch_4
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x19 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, LX4/a;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->a(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->d(Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Ljava/util/HashMap;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, LX4/a;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    iget-object v1, p0, LX4/a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/Date;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->c(Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Ljava/util/Date;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
