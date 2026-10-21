.class public final LK1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK1/l;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:LK1/m;

.field public final c:LK1/n;

.field public final d:LK1/o;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK1/p;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v0, LK1/m;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ln1/g;-><init>(Landroidx/room/RoomDatabase;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LK1/p;->b:LK1/m;

    .line 12
    .line 13
    new-instance v0, LK1/n;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, LK1/p;->c:LK1/n;

    .line 19
    .line 20
    new-instance v0, LK1/o;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, LK1/p;->d:LK1/o;

    .line 26
    .line 27
    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getSystemIdInfo(LK1/r;)LK1/j;
    .locals 0

    .line 21
    invoke-static {p0, p1}, LK1/k;->getSystemIdInfo(LK1/l;LK1/r;)LK1/j;

    move-result-object p1

    return-object p1
.end method

.method public getSystemIdInfo(Ljava/lang/String;I)LK1/j;
    .locals 5

    .line 1
    const-string v0, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ln1/O;->acquire(Ljava/lang/String;I)Ln1/O;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Ln1/O;->bindNull(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v2, p1}, Ln1/O;->bindString(ILjava/lang/String;)V

    :goto_0
    int-to-long p1, p2

    .line 4
    invoke-virtual {v0, v1, p1, p2}, Ln1/O;->bindLong(IJ)V

    .line 5
    iget-object p1, p0, LK1/p;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, p2, v1}, Lp1/b;->query(Landroidx/room/RoomDatabase;Lr1/o;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 7
    :try_start_0
    const-string p2, "work_spec_id"

    invoke-static {p1, p2}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    .line 8
    const-string v2, "generation"

    invoke-static {p1, v2}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 9
    const-string v3, "system_id"

    invoke-static {p1, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    :goto_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 14
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 15
    new-instance v3, LK1/j;

    invoke-direct {v3, v1, p2, v2}, LK1/j;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    .line 16
    :cond_2
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 17
    invoke-virtual {v0}, Ln1/O;->release()V

    return-object v1

    .line 18
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 19
    invoke-virtual {v0}, Ln1/O;->release()V

    .line 20
    throw p2
.end method

.method public getWorkSpecIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ln1/O;->acquire(Ljava/lang/String;I)Ln1/O;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v2, p0, LK1/p;->a:Landroidx/room/RoomDatabase;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v2, v0, v1, v3}, Lp1/b;->query(Landroidx/room/RoomDatabase;Lr1/o;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    move-object v5, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ln1/O;->release()V

    .line 55
    .line 56
    .line 57
    return-object v4

    .line 58
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ln1/O;->release()V

    .line 62
    .line 63
    .line 64
    throw v1
.end method

.method public insertSystemIdInfo(LK1/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, LK1/p;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, LK1/p;->b:LK1/m;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ln1/g;->insert(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public removeSystemIdInfo(LK1/r;)V
    .locals 0

    .line 26
    invoke-static {p0, p1}, LK1/k;->removeSystemIdInfo(LK1/l;LK1/r;)V

    return-void
.end method

.method public removeSystemIdInfo(Ljava/lang/String;)V
    .locals 4

    .line 14
    iget-object v0, p0, LK1/p;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 15
    iget-object v1, p0, LK1/p;->d:LK1/o;

    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Lr1/p;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 16
    invoke-interface {v2, v3}, Lr1/n;->bindNull(I)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v2, v3, p1}, Lr1/n;->bindString(ILjava/lang/String;)V

    .line 18
    :goto_0
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 19
    :try_start_0
    invoke-interface {v2}, Lr1/p;->executeUpdateDelete()I

    .line 20
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 22
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    return-void

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 24
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 25
    throw p1
.end method

.method public removeSystemIdInfo(Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-object v0, p0, LK1/p;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v1, p0, LK1/p;->c:LK1/n;

    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Lr1/p;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v2, v3}, Lr1/n;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v2, v3, p1}, Lr1/n;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    int-to-long v3, p2

    .line 5
    invoke-interface {v2, p1, v3, v4}, Lr1/n;->bindLong(IJ)V

    .line 6
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 7
    :try_start_0
    invoke-interface {v2}, Lr1/p;->executeUpdateDelete()I

    .line 8
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 10
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 12
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 13
    throw p1
.end method
