.class public final LY/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU5/b;


# instance fields
.field public final synthetic b:LU5/b;


# direct methods
.method public constructor <init>(LU5/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, LY/o;->b:LU5/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public collect(LU5/c;Ly5/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/datastore/core/SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2;-><init>(LU5/c;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LY/o;->b:LU5/b;

    .line 7
    .line 8
    invoke-interface {p1, v0, p2}, LU5/b;->collect(LU5/c;Ly5/c;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    sget-object p1, Lu5/j;->a:Lu5/j;

    .line 20
    .line 21
    return-object p1
.end method
