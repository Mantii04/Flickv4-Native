.class final Lcom/google/android/gms/measurement/internal/zzs;
.super Lcom/google/android/gms/measurement/internal/zzmy;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/util/HashSet;

.field public f:Lp/g;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;


# virtual methods
.method public final a(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzu;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzs;->f:Lp/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lp/g;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzs;->f:Lp/g;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzu;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzu;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzu;-><init>(Lcom/google/android/gms/measurement/internal/zzs;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzs;->f:Lp/g;

    .line 26
    .line 27
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 45

    move-object/from16 v1, p0

    .line 1
    const-string v8, "current_results"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    .line 4
    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->e:Ljava/util/HashSet;

    .line 6
    new-instance v0, Lp/g;

    invoke-direct {v0}, Lp/g;-><init>()V

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->f:Lp/g;

    move-object/from16 v0, p4

    .line 7
    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->g:Ljava/lang/Long;

    move-object/from16 v0, p5

    .line 8
    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->h:Ljava/lang/Long;

    .line 9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzft$zze;

    .line 10
    const-string v3, "_s"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzft$zze;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v9

    goto :goto_0

    :cond_1
    move v2, v10

    .line 11
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzou;->zza()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->i0:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 13
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v11, v9

    goto :goto_1

    :cond_2
    move v11, v10

    .line 14
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzou;->zza()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->h0:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 16
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v12, v9

    goto :goto_2

    :cond_3
    move v12, v10

    :goto_2
    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmz;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzmy;->zzak()V

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 20
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 22
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "current_session_count"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzan;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 24
    const-string v6, "events"

    const-string v7, "app_id = ?"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v6, v0, v7, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v3

    const-string v5, "Error resetting session-scoped event counts. appId"

    .line 27
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 28
    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    :cond_4
    :goto_3
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 30
    const-string v13, "audience_id"

    if-eqz v12, :cond_8

    if-eqz v11, :cond_8

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmz;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    new-instance v5, Lp/g;

    invoke-direct {v5}, Lp/g;-><init>()V

    .line 34
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzan;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 35
    :try_start_1
    const-string v16, "event_filters"

    const-string v6, "data"

    filled-new-array {v13, v6}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "app_id=?"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 36
    invoke-virtual/range {v15 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_5

    .line 38
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    .line 39
    :cond_5
    :try_start_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh$zzb;->zzc()Lcom/google/android/gms/internal/measurement/zzfh$zzb$zza;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/google/android/gms/measurement/internal/zznm;->g(Lcom/google/android/gms/internal/measurement/zzjt$zza;[B)Lcom/google/android/gms/internal/measurement/zzlf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfh$zzb$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfh$zzb;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 41
    :try_start_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfh$zzb;->zzk()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 42
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    if-nez v15, :cond_6

    .line 44
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v14, v6

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_6

    .line 46
    :cond_6
    :goto_4
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_2
    move-exception v0

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v7

    .line 48
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v7

    const-string v15, "Failed to merge filter. appId"

    .line 49
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v15, v14, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    :cond_7
    :goto_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_5

    .line 51
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    goto :goto_7

    :catchall_1
    move-exception v0

    const/4 v14, 0x0

    goto :goto_8

    :catch_3
    move-exception v0

    const/4 v6, 0x0

    .line 52
    :goto_6
    :try_start_6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v3

    const-string v5, "Database error querying filters. appId"

    .line 54
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_8

    .line 56
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_7
    move-object v14, v0

    goto :goto_9

    :goto_8
    if-eqz v14, :cond_9

    .line 57
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 58
    :cond_9
    throw v0

    .line 59
    :goto_9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmz;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzmy;->zzak()V

    .line 61
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 62
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzan;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 64
    :try_start_7
    const-string v16, "audience_filter_values"

    filled-new-array {v13, v8}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "app_id=?"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 65
    invoke-virtual/range {v15 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 66
    :try_start_8
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_b

    .line 67
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 68
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_a
    move-object v9, v0

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    move-object v14, v5

    goto/16 :goto_48

    :catch_4
    move-exception v0

    goto :goto_d

    .line 69
    :cond_b
    :try_start_9
    new-instance v6, Lp/g;

    invoke-direct {v6}, Lp/g;-><init>()V

    .line 70
    :goto_b
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 71
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 72
    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft$zzl;->zze()Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    move-result-object v15

    invoke-static {v15, v0}, Lcom/google/android/gms/measurement/internal/zznm;->g(Lcom/google/android/gms/internal/measurement/zzjt$zza;[B)Lcom/google/android/gms/internal/measurement/zzlf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzft$zzl;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 73
    :try_start_b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :catch_5
    move-exception v0

    .line 74
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v15

    .line 75
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v15

    const-string v9, "Failed to merge filter results. appId, audienceId, error"

    .line 76
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 77
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 78
    invoke-virtual {v15, v9, v10, v7, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-nez v0, :cond_c

    .line 80
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v9, v6

    goto :goto_e

    :cond_c
    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_b

    :catchall_3
    move-exception v0

    const/4 v14, 0x0

    goto/16 :goto_48

    :catch_6
    move-exception v0

    const/4 v5, 0x0

    .line 81
    :goto_d
    :try_start_c
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v3

    const-string v6, "Database error querying filter results. appId"

    .line 83
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v5, :cond_a

    .line 85
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 86
    :goto_e
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 87
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v2, :cond_19

    .line 88
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmz;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    .line 90
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzmy;->zzak()V

    .line 91
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 92
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    new-instance v0, Lp/g;

    invoke-direct {v0}, Lp/g;-><init>()V

    .line 94
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzan;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 95
    :try_start_d
    const-string v7, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    filled-new-array {v5, v5}, [Ljava/lang/String;

    move-result-object v10

    .line 96
    invoke-virtual {v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 97
    :try_start_e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_d

    .line 98
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_10

    :catchall_4
    move-exception v0

    move-object v14, v6

    goto/16 :goto_16

    :catch_7
    move-exception v0

    goto :goto_f

    :cond_d
    const/4 v7, 0x0

    .line 100
    :try_start_f
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 101
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_e

    .line 102
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const/4 v10, 0x1

    .line 104
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 105
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-nez v7, :cond_d

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_10

    :catchall_5
    move-exception v0

    const/4 v14, 0x0

    goto/16 :goto_16

    :catch_8
    move-exception v0

    const/4 v6, 0x0

    .line 108
    :goto_f
    :try_start_10
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    .line 109
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v4

    const-string v7, "Database error querying scoped filters. appId"

    .line 110
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-eqz v6, :cond_f

    .line 112
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_f
    :goto_10
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v2, Lp/g;

    invoke-direct {v2}, Lp/g;-><init>()V

    .line 116
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    .line 117
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzft$zzl;

    .line 119
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_11

    .line 120
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_11
    move-object/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    goto/16 :goto_15

    .line 121
    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmz;->g_()Lcom/google/android/gms/measurement/internal/zznm;

    move-result-object v10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzft$zzl;->zzi()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v10, v15, v7}, Lcom/google/android/gms/measurement/internal/zznm;->o(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 122
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_10

    .line 123
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzjt;->zzby()Lcom/google/android/gms/internal/measurement/zzjt$zza;

    move-result-object v15

    .line 124
    check-cast v15, Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    move-result-object v15

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    move-result-object v10

    .line 125
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmz;->g_()Lcom/google/android/gms/measurement/internal/zznm;

    move-result-object v15

    move-object/from16 v16, v0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzft$zzl;->zzk()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v15, v0, v7}, Lcom/google/android/gms/measurement/internal/zznm;->o(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;->zzd()Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    move-result-object v15

    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzft$zzl;->zzh()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_12
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzft$zzd;

    .line 129
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzft$zzd;->zza()I

    move-result v17

    move-object/from16 v19, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 130
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto :goto_12

    :cond_14
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 131
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;->zza()Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    move-result-object v3

    .line 132
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzft$zzl;->zzj()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzft$zzm;

    .line 135
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzft$zzm;->zzb()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 136
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 137
    :cond_16
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    move-result-object v3

    .line 138
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    .line 139
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzft$zzl;

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    move-object/from16 v0, v16

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_11

    .line 140
    :goto_15
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_17
    move-object/from16 v18, v3

    move-object v10, v2

    goto :goto_17

    :goto_16
    if-eqz v14, :cond_18

    .line 141
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_18
    throw v0

    :cond_19
    move-object/from16 v18, v3

    move-object v10, v9

    .line 143
    :goto_17
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_18
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzft$zzl;

    .line 145
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 146
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 147
    new-instance v6, Lp/g;

    invoke-direct {v6}, Lp/g;-><init>()V

    if-eqz v2, :cond_1d

    .line 148
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzft$zzl;->zza()I

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_1c

    .line 149
    :cond_1a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzft$zzl;->zzh()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzft$zzd;

    .line 150
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzft$zzd;->zzf()Z

    move-result v16

    if-eqz v16, :cond_1c

    .line 151
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzft$zzd;->zza()I

    move-result v16

    move-object/from16 v17, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 152
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzft$zzd;->zze()Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 153
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzft$zzd;->zzb()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_1a

    :cond_1b
    const/4 v7, 0x0

    .line 154
    :goto_1a
    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_1c
    move-object/from16 v17, v2

    :goto_1b
    move-object/from16 v2, v17

    goto :goto_19

    :cond_1d
    :goto_1c
    move-object/from16 v17, v2

    .line 155
    new-instance v7, Lp/g;

    invoke-direct {v7}, Lp/g;-><init>()V

    if-eqz v17, :cond_20

    .line 156
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzft$zzl;->zzc()I

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_1f

    .line 157
    :cond_1e
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzft$zzl;->zzj()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzft$zzm;

    .line 158
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzft$zzm;->zzf()Z

    move-result v16

    if-eqz v16, :cond_1f

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzft$zzm;->zza()I

    move-result v16

    if-lez v16, :cond_1f

    .line 159
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzft$zzm;->zzb()I

    move-result v16

    move-object/from16 v18, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 160
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzft$zzm;->zza()I

    move-result v16

    move-object/from16 v20, v10

    const/16 v19, 0x1

    add-int/lit8 v10, v16, -0x1

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/measurement/zzft$zzm;->zza(I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 161
    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_1f
    move-object/from16 v18, v2

    move-object/from16 v20, v10

    :goto_1e
    move-object/from16 v2, v18

    move-object/from16 v10, v20

    goto :goto_1d

    :cond_20
    :goto_1f
    move-object/from16 v20, v10

    if-eqz v17, :cond_23

    const/4 v2, 0x0

    .line 162
    :goto_20
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzft$zzl;->zzd()I

    move-result v3

    shl-int/lit8 v3, v3, 0x6

    if-ge v2, v3, :cond_23

    .line 163
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzft$zzl;->zzk()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zznm;->B(ILjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 164
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v3

    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move/from16 v16, v11

    const-string v11, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v3, v11, v0, v10}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    .line 168
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzft$zzl;->zzi()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zznm;->B(ILjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 169
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_21

    :cond_21
    move/from16 v16, v11

    .line 170
    :cond_22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_21
    add-int/lit8 v2, v2, 0x1

    move/from16 v11, v16

    goto :goto_20

    :cond_23
    move/from16 v16, v11

    .line 171
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzft$zzl;

    if-eqz v12, :cond_28

    if-eqz v16, :cond_28

    .line 172
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_28

    .line 173
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzs;->h:Ljava/lang/Long;

    if-eqz v10, :cond_28

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzs;->g:Ljava/lang/Long;

    if-nez v10, :cond_24

    goto :goto_23

    .line 174
    :cond_24
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfh$zzb;

    .line 175
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zzb;->zzb()I

    move-result v11

    move-object/from16 v17, v0

    .line 176
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v21, 0x3e8

    div-long v18, v18, v21

    .line 177
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zzb;->zzi()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 178
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    div-long v18, v18, v21

    .line 179
    :cond_25
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lp/g;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 180
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v6, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_26
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lp/g;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 182
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v7, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    move-object/from16 v0, v17

    goto :goto_22

    :cond_28
    :goto_23
    move-object/from16 v17, v0

    .line 183
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzu;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    move-object/from16 v10, v17

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzu;-><init>(Lcom/google/android/gms/measurement/internal/zzs;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzft$zzl;Ljava/util/BitSet;Ljava/util/BitSet;Lp/g;Lp/g;)V

    .line 184
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzs;->f:Lp/g;

    invoke-interface {v2, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v11, v16

    move-object/from16 v10, v20

    goto/16 :goto_18

    .line 185
    :cond_29
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v2, "Skipping failed audience ID"

    if-nez v0, :cond_40

    .line 186
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzw;

    invoke-direct {v3, v1}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzs;)V

    .line 187
    new-instance v4, Lp/g;

    invoke-direct {v4}, Lp/g;-><init>()V

    .line 188
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzft$zze;

    .line 189
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    .line 190
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzft$zze;->zzg()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzft$zze;->zzh()Ljava/util/List;

    move-result-object v7

    .line 192
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzw;->d:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzmz;->g_()Lcom/google/android/gms/measurement/internal/zznm;

    const-string v10, "_eid"

    invoke-static {v6, v10}, Lcom/google/android/gms/measurement/internal/zznm;->E(Lcom/google/android/gms/internal/measurement/zzft$zze;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-eqz v11, :cond_2a

    const/4 v12, 0x1

    goto :goto_25

    :cond_2a
    const/4 v12, 0x0

    :goto_25
    const-wide/16 v20, 0x1

    const-wide/16 v16, 0x0

    if-eqz v12, :cond_34

    .line 193
    const-string v14, "_ep"

    .line 194
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_34

    .line 195
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzmz;->g_()Lcom/google/android/gms/measurement/internal/zznm;

    const-string v0, "_en"

    invoke-static {v6, v0}, Lcom/google/android/gms/measurement/internal/zznm;->E(Lcom/google/android/gms/internal/measurement/zzft$zze;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 197
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 198
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v7, "Extra parameter without an event name. eventId"

    invoke-virtual {v0, v7, v11}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v19, v6

    move-object/from16 v22, v8

    :goto_26
    const/16 v26, 0x0

    goto/16 :goto_2f

    .line 199
    :cond_2b
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzw;->a:Lcom/google/android/gms/internal/measurement/zzft$zze;

    if-eqz v0, :cond_2d

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzw;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2d

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzw;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v0, v18, v22

    if-eqz v0, :cond_2c

    goto :goto_27

    :cond_2c
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    goto :goto_28

    .line 200
    :cond_2d
    :goto_27
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzmz;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0, v15, v11}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 201
    iget-object v14, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v14, :cond_2f

    :cond_2e
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    goto/16 :goto_2c

    .line 202
    :cond_2f
    check-cast v14, Lcom/google/android/gms/internal/measurement/zzft$zze;

    iput-object v14, v3, Lcom/google/android/gms/measurement/internal/zzw;->a:Lcom/google/android/gms/internal/measurement/zzft$zze;

    .line 203
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzw;->c:J

    .line 204
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzmz;->g_()Lcom/google/android/gms/measurement/internal/zznm;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzw;->a:Lcom/google/android/gms/internal/measurement/zzft$zze;

    invoke-static {v0, v10}, Lcom/google/android/gms/measurement/internal/zznm;->E(Lcom/google/android/gms/internal/measurement/zzft$zze;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v3, Lcom/google/android/gms/measurement/internal/zzw;->b:Ljava/lang/Long;

    .line 205
    :goto_28
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzw;->c:J

    sub-long v8, v8, v20

    iput-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzw;->c:J

    cmp-long v0, v8, v16

    if-gtz v0, :cond_30

    .line 206
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzmz;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v8

    .line 207
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 208
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v9, "Clearing complex main event info. appId"

    invoke-virtual {v0, v9, v15}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    :try_start_11
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzan;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    const-string v9, "delete from main_event_params where app_id=?"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_29

    :catch_9
    move-exception v0

    .line 211
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v8

    const-string v9, "Error clearing complex main event"

    invoke-virtual {v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_29

    .line 212
    :cond_30
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzmz;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v14

    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzw;->c:J

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzw;->a:Lcom/google/android/gms/internal/measurement/zzft$zze;

    move-object/from16 v19, v0

    move-wide/from16 v17, v8

    move-object/from16 v16, v11

    invoke-virtual/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzft$zze;)Z

    .line 213
    :goto_29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzw;->a:Lcom/google/android/gms/internal/measurement/zzft$zze;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzft$zze;->zzh()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_31
    :goto_2a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_32

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzft$zzg;

    .line 215
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzmz;->g_()Lcom/google/android/gms/measurement/internal/zznm;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzft$zzg;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/google/android/gms/measurement/internal/zznm;->f(Lcom/google/android/gms/internal/measurement/zzft$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzft$zzg;

    move-result-object v10

    if-nez v10, :cond_31

    .line 216
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 217
    :cond_32
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_33

    .line 218
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v7, v0

    :goto_2b
    move-object/from16 v19, v6

    move-object v0, v12

    goto/16 :goto_2e

    .line 219
    :cond_33
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v8, "No unique parameters in main event. eventName"

    .line 221
    invoke-virtual {v0, v8, v12}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2b

    .line 222
    :goto_2c
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v7, "Extra parameter without existing main event. eventName, eventId"

    .line 224
    invoke-virtual {v0, v7, v12, v11}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v19, v6

    goto/16 :goto_26

    :cond_34
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    if-eqz v12, :cond_36

    .line 225
    iput-object v11, v3, Lcom/google/android/gms/measurement/internal/zzw;->b:Ljava/lang/Long;

    .line 226
    iput-object v6, v3, Lcom/google/android/gms/measurement/internal/zzw;->a:Lcom/google/android/gms/internal/measurement/zzft$zze;

    .line 227
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzmz;->g_()Lcom/google/android/gms/measurement/internal/zznm;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 228
    const-string v9, "_epc"

    invoke-static {v6, v9}, Lcom/google/android/gms/measurement/internal/zznm;->E(Lcom/google/android/gms/internal/measurement/zzft$zze;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    if-nez v9, :cond_35

    goto :goto_2d

    :cond_35
    move-object v8, v9

    .line 229
    :goto_2d
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzw;->c:J

    cmp-long v8, v8, v16

    if-gtz v8, :cond_37

    .line 230
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v8

    .line 231
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v8

    const-string v9, "Complex event with zero extra param count. eventName"

    .line 232
    invoke-virtual {v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_36
    move-object/from16 v19, v6

    goto :goto_2e

    .line 233
    :cond_37
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzmz;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v14

    .line 234
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/Long;

    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzw;->c:J

    move-object/from16 v19, v6

    move-wide/from16 v17, v8

    .line 235
    invoke-virtual/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzft$zze;)Z

    .line 236
    :goto_2e
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/zzjt;->zzby()Lcom/google/android/gms/internal/measurement/zzjt$zza;

    move-result-object v6

    .line 237
    check-cast v6, Lcom/google/android/gms/internal/measurement/zzft$zze$zza;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzft$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzft$zze$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzft$zze$zza;->zzd()Lcom/google/android/gms/internal/measurement/zzft$zze$zza;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/zzft$zze$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzft$zze$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzft$zze;

    move-object/from16 v26, v0

    :goto_2f
    if-eqz v26, :cond_3f

    .line 238
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmz;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/measurement/zzft$zze;->zzg()Ljava/lang/String;

    move-result-object v7

    .line 239
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/zzft$zze;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lcom/google/android/gms/measurement/internal/zzan;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v8

    if-nez v8, :cond_38

    .line 240
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v8

    .line 241
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v8

    .line 242
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 243
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzi()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string v7, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-virtual {v8, v7, v9, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    new-instance v27, Lcom/google/android/gms/measurement/internal/zzbb;

    .line 246
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/zzft$zze;->zzg()Ljava/lang/String;

    move-result-object v29

    .line 247
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/zzft$zze;->zzd()J

    move-result-wide v36

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v30, 0x1

    const-wide/16 v32, 0x1

    const-wide/16 v34, 0x1

    const-wide/16 v38, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v28, v6

    invoke-direct/range {v27 .. v43}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v0, v27

    goto :goto_30

    .line 248
    :cond_38
    new-instance v28, Lcom/google/android/gms/measurement/internal/zzbb;

    iget-wide v6, v8, Lcom/google/android/gms/measurement/internal/zzbb;->c:J

    add-long v31, v6, v20

    iget-wide v6, v8, Lcom/google/android/gms/measurement/internal/zzbb;->d:J

    add-long v33, v6, v20

    iget-wide v6, v8, Lcom/google/android/gms/measurement/internal/zzbb;->e:J

    add-long v35, v6, v20

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzbb;->h:Ljava/lang/Long;

    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/zzbb;->i:Ljava/lang/Long;

    iget-object v7, v8, Lcom/google/android/gms/measurement/internal/zzbb;->a:Ljava/lang/String;

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzbb;->b:Ljava/lang/String;

    iget-wide v10, v8, Lcom/google/android/gms/measurement/internal/zzbb;->f:J

    iget-wide v14, v8, Lcom/google/android/gms/measurement/internal/zzbb;->g:J

    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/zzbb;->j:Ljava/lang/Long;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzbb;->k:Ljava/lang/Boolean;

    move-object/from16 v41, v0

    move-object/from16 v42, v6

    move-object/from16 v29, v7

    move-object/from16 v44, v8

    move-object/from16 v30, v9

    move-wide/from16 v37, v10

    move-object/from16 v43, v12

    move-wide/from16 v39, v14

    invoke-direct/range {v28 .. v44}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v0, v28

    .line 249
    :goto_30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmz;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 250
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/measurement/zzft$zze;->zzg()Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-virtual {v4, v6}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-nez v7, :cond_39

    .line 252
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmz;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzan;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 253
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_39
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 255
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzs;->e:Ljava/util/HashSet;

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 256
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v9

    invoke-virtual {v9, v2, v8}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_31

    .line 257
    :cond_3a
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 258
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x1

    :goto_32
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfh$zzb;

    .line 259
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    invoke-direct {v12, v1, v14, v9, v11}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzs;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfh$zzb;)V

    .line 260
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzs;->g:Ljava/lang/Long;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzs;->h:Ljava/lang/Long;

    .line 261
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfh$zzb;->zzb()I

    move-result v11

    move-object/from16 v16, v3

    .line 262
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzs;->f:Lp/g;

    invoke-virtual {v3, v8}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzu;

    if-nez v3, :cond_3b

    const/16 v30, 0x0

    :goto_33
    move-object/from16 v17, v4

    goto :goto_34

    .line 263
    :cond_3b
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzu;->d:Ljava/util/BitSet;

    invoke-virtual {v3, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    move/from16 v30, v3

    goto :goto_33

    .line 264
    :goto_34
    iget-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzbb;->c:J

    move-object/from16 v29, v0

    move-wide/from16 v27, v3

    move-object/from16 v23, v12

    move-object/from16 v24, v14

    move-object/from16 v25, v15

    invoke-virtual/range {v23 .. v30}, Lcom/google/android/gms/measurement/internal/zzy;->h(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzft$zze;JLcom/google/android/gms/measurement/internal/zzbb;Z)Z

    move-result v11

    move-object/from16 v0, v23

    if-eqz v11, :cond_3c

    .line 265
    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzs;->a(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v3

    .line 266
    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzu;->a(Lcom/google/android/gms/measurement/internal/zzab;)V

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v0, v29

    goto :goto_32

    .line 267
    :cond_3c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->e:Ljava/util/HashSet;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_3d
    move-object/from16 v29, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    :goto_35
    if-nez v11, :cond_3e

    .line 268
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->e:Ljava/util/HashSet;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3e
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v0, v29

    goto/16 :goto_31

    :cond_3f
    move-object/from16 v8, v22

    goto/16 :goto_24

    :cond_40
    move-object/from16 v22, v8

    .line 269
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 270
    new-instance v0, Lp/g;

    invoke-direct {v0}, Lp/g;-><init>()V

    .line 271
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_41
    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzft$zzn;

    .line 272
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzft$zzn;->zzg()Ljava/lang/String;

    move-result-object v5

    .line 273
    invoke-virtual {v0, v5}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_42

    .line 274
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmz;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzan;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 275
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_42
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_37
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 277
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzs;->e:Ljava/util/HashSet;

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    .line 278
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v4

    invoke-virtual {v4, v2, v7}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_36

    .line 279
    :cond_43
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 280
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x1

    :goto_38
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfh$zze;

    .line 281
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(I)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 282
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v11

    .line 283
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v11

    .line 284
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzi()Z

    move-result v12

    if-eqz v12, :cond_44

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zza()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_39

    :cond_44
    const/4 v12, 0x0

    .line 285
    :goto_39
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzi()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v14

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zze()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 286
    const-string v15, "Evaluating filter. audience, filter, property"

    invoke-virtual {v11, v15, v7, v12, v14}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v11

    .line 288
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v11

    .line 289
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmz;->g_()Lcom/google/android/gms/measurement/internal/zznm;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    const-string v15, "\nproperty_filter {\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzi()Z

    move-result v15

    if-eqz v15, :cond_45

    .line 293
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zza()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 p2, v0

    const-string v0, "filter_id"

    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-static {v14, v2, v0, v15}, Lcom/google/android/gms/measurement/internal/zznm;->y(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_3a

    :cond_45
    move-object/from16 p2, v0

    move-object/from16 v16, v2

    const/4 v2, 0x0

    .line 294
    :goto_3a
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zznm;->zzi()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zze()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    const-string v15, "property_name"

    invoke-static {v14, v2, v15, v0}, Lcom/google/android/gms/measurement/internal/zznm;->y(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 296
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzf()Z

    move-result v0

    .line 297
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzg()Z

    move-result v15

    .line 298
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzh()Z

    move-result v2

    .line 299
    invoke-static {v0, v15, v2}, Lcom/google/android/gms/measurement/internal/zznm;->l(ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_46

    .line 301
    const-string v2, "filter_type"

    const/4 v15, 0x0

    invoke-static {v14, v15, v2, v0}, Lcom/google/android/gms/measurement/internal/zznm;->y(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_3b

    :cond_46
    const/4 v15, 0x0

    .line 302
    :goto_3b
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzb()Lcom/google/android/gms/internal/measurement/zzfh$zzc;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v12, v14, v2, v0}, Lcom/google/android/gms/measurement/internal/zznm;->w(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfh$zzc;)V

    .line 303
    const-string v0, "}\n"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    const-string v12, "Filter definition"

    invoke-virtual {v11, v12, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3c

    :cond_47
    move-object/from16 p2, v0

    move-object/from16 v16, v2

    const/4 v2, 0x1

    const/4 v15, 0x0

    .line 306
    :goto_3c
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzi()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zza()I

    move-result v0

    const/16 v11, 0x100

    if-le v0, v11, :cond_48

    goto :goto_3e

    .line 307
    :cond_48
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v11, v8, v10}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzs;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfh$zze;)V

    .line 308
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzs;->g:Ljava/lang/Long;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzs;->h:Ljava/lang/Long;

    .line 309
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zza()I

    move-result v10

    .line 310
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzs;->f:Lp/g;

    invoke-virtual {v14, v7}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzu;

    if-nez v14, :cond_49

    move v10, v15

    goto :goto_3d

    .line 311
    :cond_49
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzu;->d:Ljava/util/BitSet;

    invoke-virtual {v14, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    .line 312
    :goto_3d
    invoke-virtual {v0, v11, v12, v4, v10}, Lcom/google/android/gms/measurement/internal/zzaa;->h(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzft$zzn;Z)Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 313
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzs;->a(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v11

    .line 314
    invoke-virtual {v11, v0}, Lcom/google/android/gms/measurement/internal/zzu;->a(Lcom/google/android/gms/measurement/internal/zzab;)V

    move-object/from16 v0, p2

    move-object/from16 v2, v16

    goto/16 :goto_38

    .line 315
    :cond_4a
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->e:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 316
    :cond_4b
    :goto_3e
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    .line 318
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 319
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zzi()Z

    move-result v9

    if-eqz v9, :cond_4c

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh$zze;->zza()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3f

    :cond_4c
    const/4 v9, 0x0

    :goto_3f
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 320
    const-string v10, "Invalid property filter ID. appId, id"

    invoke-virtual {v0, v10, v8, v9}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v10, v15

    goto :goto_40

    :cond_4d
    move-object/from16 p2, v0

    move-object/from16 v16, v2

    const/4 v2, 0x1

    const/4 v15, 0x0

    :goto_40
    if-nez v10, :cond_4e

    .line 321
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->e:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4e
    move-object/from16 v0, p2

    move-object/from16 v2, v16

    goto/16 :goto_37

    .line 322
    :cond_4f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 323
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->f:Lp/g;

    invoke-virtual {v0}, Lp/g;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 324
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzs;->e:Ljava/util/HashSet;

    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 325
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 326
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzs;->f:Lp/g;

    invoke-virtual {v5, v0}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzu;

    .line 327
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft$zzc;->zzb()Lcom/google/android/gms/internal/measurement/zzft$zzc$zza;

    move-result-object v6

    .line 330
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/measurement/zzft$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzft$zzc$zza;

    .line 331
    iget-boolean v4, v5, Lcom/google/android/gms/measurement/internal/zzu;->b:Z

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/measurement/zzft$zzc$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzft$zzc$zza;

    .line 332
    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzu;->c:Lcom/google/android/gms/internal/measurement/zzft$zzl;

    if-eqz v4, :cond_50

    .line 333
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/measurement/zzft$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzft$zzl;)Lcom/google/android/gms/internal/measurement/zzft$zzc$zza;

    .line 334
    :cond_50
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft$zzl;->zze()Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    move-result-object v4

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzu;->d:Ljava/util/BitSet;

    .line 335
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zznm;->m(Ljava/util/BitSet;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    move-result-object v4

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzu;->e:Ljava/util/BitSet;

    .line 336
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zznm;->m(Ljava/util/BitSet;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    move-result-object v4

    .line 337
    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzu;->f:Lp/g;

    if-nez v7, :cond_51

    const/4 v7, 0x0

    goto :goto_43

    .line 338
    :cond_51
    new-instance v8, Ljava/util/ArrayList;

    .line 339
    invoke-virtual {v7}, Lp/q;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    invoke-virtual {v7}, Lp/g;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_52
    :goto_42
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_53

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 341
    invoke-virtual {v7, v10}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-eqz v10, :cond_52

    .line 342
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft$zzd;->zzc()Lcom/google/android/gms/internal/measurement/zzft$zzd$zza;

    move-result-object v12

    .line 343
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/measurement/zzft$zzd$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzft$zzd$zza;

    move-result-object v11

    .line 344
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Lcom/google/android/gms/internal/measurement/zzft$zzd$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzft$zzd$zza;

    move-result-object v10

    .line 345
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzft$zzd;

    .line 346
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_53
    move-object v7, v8

    :goto_43
    if-eqz v7, :cond_54

    .line 347
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    .line 348
    :cond_54
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzu;->g:Lp/g;

    if-nez v5, :cond_55

    .line 349
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_45

    .line 350
    :cond_55
    new-instance v7, Ljava/util/ArrayList;

    .line 351
    invoke-virtual {v5}, Lp/q;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    invoke-virtual {v5}, Lp/g;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_44
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_57

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 353
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft$zzm;->zzc()Lcom/google/android/gms/internal/measurement/zzft$zzm$zza;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzft$zzm$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzft$zzm$zza;

    move-result-object v10

    .line 354
    invoke-virtual {v5, v9}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_56

    .line 355
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 356
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/measurement/zzft$zzm$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzft$zzm$zza;

    .line 357
    :cond_56
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzft$zzm;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_57
    move-object v5, v7

    .line 358
    :goto_45
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;

    .line 359
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/measurement/zzft$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzft$zzl$zza;)Lcom/google/android/gms/internal/measurement/zzft$zzc$zza;

    .line 360
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzjt$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzft$zzc;

    .line 361
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzmz;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzs;->d:Ljava/lang/String;

    .line 363
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzft$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzft$zzl;

    move-result-object v4

    .line 364
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzmy;->zzak()V

    .line 365
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 366
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhz;->zzbv()[B

    move-result-object v4

    .line 369
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 370
    const-string v8, "app_id"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v7, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v8, v22

    .line 372
    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 373
    :try_start_12
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzan;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 374
    const-string v4, "audience_filter_values"
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_b

    const/4 v9, 0x5

    const/4 v10, 0x0

    .line 375
    :try_start_13
    invoke-virtual {v0, v4, v10, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v11

    const-wide/16 v14, -0x1

    cmp-long v0, v11, v14

    if-nez v0, :cond_58

    .line 376
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v4, "Failed to insert filter results (got -1). appId"

    .line 378
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_46

    :catch_a
    move-exception v0

    goto :goto_47

    :cond_58
    :goto_46
    move-object/from16 v22, v8

    goto/16 :goto_41

    :catch_b
    move-exception v0

    const/4 v10, 0x0

    .line 379
    :goto_47
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    .line 380
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v4

    const-string v5, "Error storing filter results. appId"

    .line 381
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_46

    :cond_59
    return-object v2

    :goto_48
    if-eqz v14, :cond_5a

    .line 382
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_5a
    throw v0
.end method

.method public final zzc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
