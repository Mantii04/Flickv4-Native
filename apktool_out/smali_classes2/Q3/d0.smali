.class public final synthetic LQ3/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ3/O;


# instance fields
.field public final synthetic a:LQ3/e0;


# direct methods
.method public synthetic constructor <init>(LQ3/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ3/d0;->a:LQ3/e0;

    return-void
.end method


# virtual methods
.method public final transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/util/Collection;

    .line 2
    .line 3
    iget-object v0, p0, LQ3/d0;->a:LQ3/e0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast v0, LQ3/c0;

    .line 9
    .line 10
    check-cast p2, Ljava/util/List;

    .line 11
    .line 12
    iget-object v0, v0, LQ3/e0;->n:LQ3/O;

    .line 13
    .line 14
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    new-instance v1, LQ3/H;

    .line 18
    .line 19
    invoke-direct {v1, v0, p1}, LQ3/H;-><init>(LQ3/O;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v1}, Lcom/google/common/collect/B;->transform(Ljava/util/List;LP3/p;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method
