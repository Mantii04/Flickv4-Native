.class public final Ls1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public create(Lr1/k;)Lr1/m;
    .locals 7

    .line 1
    const-string v0, "configuration"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    .line 7
    .line 8
    iget-object v2, p1, Lr1/k;->a:Landroid/content/Context;

    .line 9
    .line 10
    iget-boolean v5, p1, Lr1/k;->d:Z

    .line 11
    .line 12
    iget-boolean v6, p1, Lr1/k;->e:Z

    .line 13
    .line 14
    iget-object v3, p1, Lr1/k;->b:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v4, p1, Lr1/k;->c:Lr1/h;

    .line 17
    .line 18
    invoke-direct/range {v1 .. v6}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lr1/h;ZZ)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method
