.class final Lcom/google/android/gms/measurement/internal/zzat;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzan;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzan;Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzat;->b:Lcom/google/android/gms/measurement/internal/zzan;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    const-string v1, "google_app_measurement.db"

    .line 6
    .line 7
    invoke-direct {p0, p2, v1, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->b:Lcom/google/android/gms/measurement/internal/zzan;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzan;->e:Lcom/google/android/gms/measurement/internal/zzms;

    .line 4
    .line 5
    const-wide/32 v2, 0x36ee80

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzms;->zza(J)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object v0

    .line 19
    :catch_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzan;->e:Lcom/google/android/gms/measurement/internal/zzms;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzms;->zzb()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "Opening the database failed, dropping and recreating it"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zza()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "google_app_measurement.db"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v3, "Failed to delete corrupted db file"

    .line 62
    .line 63
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzan;->e:Lcom/google/android/gms/measurement/internal/zzms;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzms;->zza()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .line 74
    .line 75
    return-object v1

    .line 76
    :catch_1
    move-exception v1

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v2, "Failed to open freshly created database"

    .line 86
    .line 87
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    throw v1

    .line 91
    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    .line 92
    .line 93
    const-string v1, "Database open failed"

    .line 94
    .line 95
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->b:Lcom/google/android/gms/measurement/internal/zzan;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzas;->b(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->b:Lcom/google/android/gms/measurement/internal/zzan;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzan;->f:[Ljava/lang/String;

    .line 8
    .line 9
    const-string v3, "events"

    .line 10
    .line 11
    const-string v4, "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;"

    .line 12
    .line 13
    const-string v5, "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp"

    .line 14
    .line 15
    move-object v2, p1

    .line 16
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzas;->c(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v8, v2

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    const-string v11, "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event"

    .line 25
    .line 26
    const/4 v12, 0x0

    .line 27
    const-string v9, "conditional_properties"

    .line 28
    .line 29
    const-string v10, "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;"

    .line 30
    .line 31
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzas;->c(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzan;->g:[Ljava/lang/String;

    .line 39
    .line 40
    const-string v9, "user_attributes"

    .line 41
    .line 42
    const-string v10, "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;"

    .line 43
    .line 44
    const-string v11, "app_id,name,set_timestamp,value"

    .line 45
    .line 46
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzas;->c(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzan;->h:[Ljava/lang/String;

    .line 54
    .line 55
    const-string v9, "apps"

    .line 56
    .line 57
    const-string v10, "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;"

    .line 58
    .line 59
    const-string v11, "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp"

    .line 60
    .line 61
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzas;->c(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzan;->j:[Ljava/lang/String;

    .line 69
    .line 70
    const-string v9, "queue"

    .line 71
    .line 72
    const-string v10, "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);"

    .line 73
    .line 74
    const-string v11, "app_id,bundle_end_timestamp,data"

    .line 75
    .line 76
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzas;->c(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    const-string v11, "app_id,metadata_fingerprint,metadata"

    .line 84
    .line 85
    const/4 v12, 0x0

    .line 86
    const-string v9, "raw_events_metadata"

    .line 87
    .line 88
    const-string v10, "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));"

    .line 89
    .line 90
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzas;->c(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzan;->i:[Ljava/lang/String;

    .line 98
    .line 99
    const-string v9, "raw_events"

    .line 100
    .line 101
    const-string v10, "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);"

    .line 102
    .line 103
    const-string v11, "app_id,name,timestamp,metadata_fingerprint,data"

    .line 104
    .line 105
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzas;->c(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzan;->k:[Ljava/lang/String;

    .line 113
    .line 114
    const-string v9, "event_filters"

    .line 115
    .line 116
    const-string v10, "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));"

    .line 117
    .line 118
    const-string v11, "app_id,audience_id,filter_id,event_name,data"

    .line 119
    .line 120
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzas;->c(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzan;->l:[Ljava/lang/String;

    .line 128
    .line 129
    const-string v9, "property_filters"

    .line 130
    .line 131
    const-string v10, "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));"

    .line 132
    .line 133
    const-string v11, "app_id,audience_id,filter_id,property_name,data"

    .line 134
    .line 135
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzas;->c(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    const-string v11, "app_id,audience_id,current_results"

    .line 143
    .line 144
    const/4 v12, 0x0

    .line 145
    const-string v9, "audience_filter_values"

    .line 146
    .line 147
    const-string v10, "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));"

    .line 148
    .line 149
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzas;->c(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzan;->m:[Ljava/lang/String;

    .line 157
    .line 158
    const-string v9, "app2"

    .line 159
    .line 160
    const-string v10, "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));"

    .line 161
    .line 162
    const-string v11, "app_id,first_open_count"

    .line 163
    .line 164
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzas;->c(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    const-string v11, "app_id,event_id,children_to_process,main_event"

    .line 172
    .line 173
    const/4 v12, 0x0

    .line 174
    const-string v9, "main_event_params"

    .line 175
    .line 176
    const-string v10, "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));"

    .line 177
    .line 178
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzas;->c(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    const-string v11, "app_id,parameters"

    .line 186
    .line 187
    const-string v9, "default_event_params"

    .line 188
    .line 189
    const-string v10, "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));"

    .line 190
    .line 191
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzas;->c(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzon;->zza()Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_0

    .line 203
    .line 204
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzan;->n:[Ljava/lang/String;

    .line 205
    .line 206
    :goto_0
    move-object v12, p1

    .line 207
    goto :goto_1

    .line 208
    :cond_0
    const/4 p1, 0x0

    .line 209
    goto :goto_0

    .line 210
    :goto_1
    const-string v9, "consent_settings"

    .line 211
    .line 212
    const-string v10, "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));"

    .line 213
    .line 214
    const-string v11, "app_id,consent_state"

    .line 215
    .line 216
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzas;->c(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpy;->zza()Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_1

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzan;->o:[Ljava/lang/String;

    .line 230
    .line 231
    const-string v9, "trigger_uris"

    .line 232
    .line 233
    const-string v10, "CREATE TABLE IF NOT EXISTS trigger_uris ( app_id TEXT NOT NULL, trigger_uri TEXT NOT NULL, timestamp_millis INTEGER NOT NULL, source INTEGER NOT NULL);"

    .line 234
    .line 235
    const-string v11, "app_id,trigger_uri,source,timestamp_millis"

    .line 236
    .line 237
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzas;->c(Lcom/google/android/gms/measurement/internal/zzgb;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :cond_1
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
