.class public final LL1/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB1/j;


# instance fields
.field public final a:LN1/c;

.field public final b:LJ1/a;

.field public final c:LK1/F;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WMFgUpdater"

    .line 2
    .line 3
    invoke-static {v0}, LB1/t;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;LJ1/a;LN1/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LL1/C;->b:LJ1/a;

    .line 5
    .line 6
    iput-object p3, p0, LL1/C;->a:LN1/c;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, LL1/C;->c:LK1/F;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public setForegroundAsync(Landroid/content/Context;Ljava/util/UUID;LB1/i;)LV3/F;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "LB1/i;",
            ")",
            "LV3/F;"
        }
    .end annotation

    .line 1
    invoke-static {}, LM1/g;->create()LM1/g;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    new-instance v0, LL1/B;

    .line 6
    .line 7
    move-object v1, p0

    .line 8
    move-object v5, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p3

    .line 11
    invoke-direct/range {v0 .. v5}, LL1/B;-><init>(LL1/C;LM1/g;Ljava/util/UUID;LB1/i;Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v1, LL1/C;->a:LN1/c;

    .line 15
    .line 16
    check-cast p1, LN1/e;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, LN1/b;->a(LN1/c;Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-object v2
.end method
