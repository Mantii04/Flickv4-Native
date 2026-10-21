.class public final LL1/b;
.super LL1/d;
.source "SourceFile"


# instance fields
.field public final synthetic e:LC1/G;

.field public final synthetic f:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;LC1/G;)V
    .locals 0

    .line 1
    iput-object p2, p0, LL1/b;->e:LC1/G;

    .line 2
    .line 3
    iput-object p1, p0, LL1/b;->f:Ljava/util/UUID;

    .line 4
    .line 5
    invoke-direct {p0}, LL1/d;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, LL1/b;->e:LC1/G;

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
    iget-object v2, p0, LL1/b;->f:Ljava/util/UUID;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v0, v2}, LL1/d;->a(LC1/G;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, LC1/G;->getConfiguration()LB1/c;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0}, LC1/G;->getSchedulers()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v2, v0}, LC1/u;->schedule(LB1/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 43
    .line 44
    .line 45
    throw v0
.end method
