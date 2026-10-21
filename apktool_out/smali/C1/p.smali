.class public final synthetic LC1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:LC1/r;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LC1/r;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/p;->b:LC1/r;

    iput-object p2, p0, LC1/p;->e:Ljava/util/ArrayList;

    iput-object p3, p0, LC1/p;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, LC1/p;->b:LC1/r;

    .line 2
    .line 3
    iget-object v0, v0, LC1/r;->m:Landroidx/work/impl/WorkDatabase;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workTagDao()LK1/Y;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, LK1/b0;

    .line 10
    .line 11
    iget-object v2, p0, LC1/p;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, LK1/b0;->getTagsForWorkSpecId(Ljava/lang/String;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v3, p0, LC1/p;->e:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, LK1/U;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, LK1/U;->getWorkSpec(Ljava/lang/String;)LK1/E;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
