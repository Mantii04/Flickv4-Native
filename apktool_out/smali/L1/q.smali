.class public final LL1/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LL1/q;->a:Landroidx/work/impl/WorkDatabase;

    .line 5
    .line 6
    return-void
.end method

.method public static migrateLegacyPreferences(Landroid/content/Context;Lr1/f;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    .line 4
    .line 5
    const-string v3, "androidx.work.util.preferences"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v3, "reschedule_needed"

    .line 13
    .line 14
    invoke-interface {p0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    const-string v6, "last_cancel_all_time_ms"

    .line 19
    .line 20
    if-nez v5, :cond_1

    .line 21
    .line 22
    invoke-interface {p0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    :goto_0
    const-wide/16 v7, 0x0

    .line 31
    .line 32
    invoke-interface {p0, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v9

    .line 36
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    const-wide/16 v7, 0x1

    .line 43
    .line 44
    :cond_2
    invoke-interface {p1}, Lr1/f;->beginTransaction()V

    .line 45
    .line 46
    .line 47
    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    new-array v9, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object v6, v9, v4

    .line 54
    .line 55
    aput-object v5, v9, v0

    .line 56
    .line 57
    invoke-interface {p1, v2, v9}, Lr1/f;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object v3, v1, v4

    .line 67
    .line 68
    aput-object v5, v1, v0

    .line 69
    .line 70
    invoke-interface {p1, v2, v1}, Lr1/f;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1}, Lr1/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Lr1/f;->endTransaction()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    invoke-interface {p1}, Lr1/f;->endTransaction()V

    .line 93
    .line 94
    .line 95
    throw p0
.end method


# virtual methods
.method public getLastForceStopEventMillis()J
    .locals 2

    .line 1
    iget-object v0, p0, LL1/q;->a:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()LK1/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "last_force_stop_ms"

    .line 8
    .line 9
    check-cast v0, LK1/h;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, LK1/h;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_0
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    return-wide v0
.end method

.method public getNeedsReschedule()Z
    .locals 4

    .line 1
    iget-object v0, p0, LL1/q;->a:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()LK1/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "reschedule_needed"

    .line 8
    .line 9
    check-cast v0, LK1/h;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, LK1/h;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide/16 v2, 0x1

    .line 22
    .line 23
    cmp-long v0, v0, v2

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public setLastForceStopEventMillis(J)V
    .locals 1

    .line 1
    new-instance v0, LK1/e;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "last_force_stop_ms"

    .line 8
    .line 9
    invoke-direct {v0, p2, p1}, LK1/e;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, LL1/q;->a:Landroidx/work/impl/WorkDatabase;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->preferenceDao()LK1/f;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, LK1/h;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, LK1/h;->insertPreference(LK1/e;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setNeedsReschedule(Z)V
    .locals 2

    .line 1
    new-instance v0, LK1/e;

    .line 2
    .line 3
    const-string v1, "reschedule_needed"

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, LK1/e;-><init>(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, LL1/q;->a:Landroidx/work/impl/WorkDatabase;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->preferenceDao()LK1/f;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, LK1/h;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, LK1/h;->insertPreference(LK1/e;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
