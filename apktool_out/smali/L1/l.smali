.class public abstract LL1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final access$nextId(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()LK1/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, LK1/h;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, LK1/h;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    long-to-int v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    const v2, 0x7fffffff

    .line 22
    .line 23
    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 28
    .line 29
    :goto_1
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()LK1/f;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance v2, LK1/e;

    .line 34
    .line 35
    int-to-long v3, v1

    .line 36
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v2, p1, v1}, LK1/e;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 41
    .line 42
    .line 43
    check-cast p0, LK1/h;

    .line 44
    .line 45
    invoke-virtual {p0, v2}, LK1/h;->insertPreference(LK1/e;)V

    .line 46
    .line 47
    .line 48
    return v0
.end method

.method public static final access$updatePreference(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()LK1/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, LK1/e;

    .line 6
    .line 7
    int-to-long v1, p2

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-direct {v0, p1, p2}, LK1/e;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    .line 14
    .line 15
    check-cast p0, LK1/h;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, LK1/h;->insertPreference(LK1/e;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final migrateLegacyIdGenerator(Landroid/content/Context;Lr1/f;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    .line 4
    .line 5
    const-string v3, "context"

    .line 6
    .line 7
    invoke-static {p0, v3}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v3, "sqLiteDatabase"

    .line 11
    .line 12
    invoke-static {p1, v3}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v3, "androidx.work.util.id"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v3, "next_job_scheduler_id"

    .line 23
    .line 24
    invoke-interface {p0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_1

    .line 29
    .line 30
    invoke-interface {p0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void

    .line 38
    :cond_1
    :goto_0
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const-string v6, "next_alarm_manager_id"

    .line 43
    .line 44
    invoke-interface {p0, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-interface {p1}, Lr1/f;->beginTransaction()V

    .line 49
    .line 50
    .line 51
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    new-array v8, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object v3, v8, v4

    .line 58
    .line 59
    aput-object v5, v8, v0

    .line 60
    .line 61
    invoke-interface {p1, v2, v8}, Lr1/f;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object v6, v1, v4

    .line 71
    .line 72
    aput-object v3, v1, v0

    .line 73
    .line 74
    invoke-interface {p1, v2, v1}, Lr1/f;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    .line 87
    .line 88
    invoke-interface {p1}, Lr1/f;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    invoke-interface {p1}, Lr1/f;->endTransaction()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    invoke-interface {p1}, Lr1/f;->endTransaction()V

    .line 97
    .line 98
    .line 99
    throw p0
.end method
