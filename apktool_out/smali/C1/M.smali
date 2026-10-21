.class public final LC1/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LJ1/a;

.field public final c:LN1/c;

.field public final d:LB1/c;

.field public final e:Landroidx/work/impl/WorkDatabase;

.field public final f:LK1/E;

.field public g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public i:LB1/Q;


# direct methods
.method public constructor <init>(Landroid/content/Context;LB1/c;LN1/c;LJ1/a;Landroidx/work/impl/WorkDatabase;LK1/E;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LB1/c;",
            "LN1/c;",
            "LJ1/a;",
            "Landroidx/work/impl/WorkDatabase;",
            "LK1/E;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LB1/Q;

    .line 5
    .line 6
    invoke-direct {v0}, LB1/Q;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LC1/M;->i:LB1/Q;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, LC1/M;->a:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p3, p0, LC1/M;->c:LN1/c;

    .line 18
    .line 19
    iput-object p4, p0, LC1/M;->b:LJ1/a;

    .line 20
    .line 21
    iput-object p2, p0, LC1/M;->d:LB1/c;

    .line 22
    .line 23
    iput-object p5, p0, LC1/M;->e:Landroidx/work/impl/WorkDatabase;

    .line 24
    .line 25
    iput-object p6, p0, LC1/M;->f:LK1/E;

    .line 26
    .line 27
    iput-object p7, p0, LC1/M;->h:Ljava/util/List;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public build()LC1/N;
    .locals 1

    .line 1
    new-instance v0, LC1/N;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LC1/N;-><init>(LC1/M;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public withRuntimeExtras(LB1/Q;)LC1/M;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, LC1/M;->i:LB1/Q;

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method public withSchedulers(Ljava/util/List;)LC1/M;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC1/t;",
            ">;)",
            "LC1/M;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, LC1/M;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
