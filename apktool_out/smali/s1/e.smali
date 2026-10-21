.class public final synthetic Ls1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# instance fields
.field public final synthetic a:Lr1/h;

.field public final synthetic b:Ls1/d;


# direct methods
.method public synthetic constructor <init>(Lr1/h;Ls1/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/e;->a:Lr1/h;

    iput-object p2, p0, Ls1/e;->b:Ls1/d;

    return-void
.end method


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1
    const-string v0, "$callback"

    .line 2
    .line 3
    iget-object v1, p0, Ls1/e;->a:Lr1/h;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "$dbRef"

    .line 9
    .line 10
    iget-object v2, p0, Ls1/e;->b:Ls1/d;

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "dbObj"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Landroidx/sqlite/db/framework/a;->q:Ls1/f;

    .line 21
    .line 22
    invoke-virtual {v0, v2, p1}, Ls1/f;->getWrappedDb(Ls1/d;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1}, Lr1/h;->onCorruption(Lr1/f;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
