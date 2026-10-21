.class Lflix/com/vision/materialsearchview/MaterialSearchView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# instance fields
.field public final synthetic a:Lflix/com/vision/materialsearchview/MaterialSearchView;


# direct methods
.method public constructor <init>(Lflix/com/vision/materialsearchview/MaterialSearchView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView$5;->a:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lflix/com/vision/materialsearchview/MaterialSearchView$5;->a:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->a(Lflix/com/vision/materialsearchview/MaterialSearchView;)Landroid/database/Cursor;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    iget-object v0, v1, Lflix/com/vision/materialsearchview/MaterialSearchView;->e:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lflix/com/vision/materialsearchview/db/HistoryContract$HistoryEntry;->a:Landroid/net/Uri;

    .line 25
    .line 26
    const-string v0, "%"

    .line 27
    .line 28
    invoke-static {v0, p1, v0}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    filled-new-array {p1}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const/4 v3, 0x0

    .line 37
    const-string v4, "query LIKE ?"

    .line 38
    .line 39
    const-string v6, "is_history DESC, query"

    .line 40
    .line 41
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method
