.class public final LL1/c;
.super LL1/d;
.source "SourceFile"


# instance fields
.field public final synthetic e:LC1/G;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LC1/G;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, LL1/c;->e:LC1/G;

    .line 2
    .line 3
    iput-object p1, p0, LL1/c;->f:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, LL1/c;->j:Z

    .line 6
    .line 7
    invoke-direct {p0}, LL1/d;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, LL1/c;->e:LC1/G;

    .line 2
    .line 3
    invoke-virtual {v0}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v3, p0, LL1/c;->f:Ljava/lang/String;

    .line 15
    .line 16
    check-cast v2, LK1/U;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, LK1/U;->getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, v3}, LL1/d;->a(LC1/G;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 48
    .line 49
    .line 50
    iget-boolean v1, p0, LL1/c;->j:Z

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, LC1/G;->getConfiguration()LB1/c;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0}, LC1/G;->getSchedulers()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v1, v2, v0}, LC1/u;->schedule(LB1/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void

    .line 70
    :goto_1
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 71
    .line 72
    .line 73
    throw v0
.end method
