.class public abstract LQ3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ3/l;

.field public static final b:LQ3/m;

.field public static final c:LQ3/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LQ3/l;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LQ3/n;->a:LQ3/l;

    .line 7
    .line 8
    new-instance v0, LQ3/m;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-direct {v0, v1}, LQ3/m;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, LQ3/n;->b:LQ3/m;

    .line 15
    .line 16
    new-instance v0, LQ3/m;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1}, LQ3/m;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, LQ3/n;->c:LQ3/m;

    .line 23
    .line 24
    return-void
.end method

.method public static start()LQ3/n;
    .locals 1

    .line 1
    sget-object v0, LQ3/n;->a:LQ3/l;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public abstract compare(II)LQ3/n;
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)LQ3/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "LQ3/n;"
        }
    .end annotation
.end method

.method public abstract compareFalseFirst(ZZ)LQ3/n;
.end method

.method public abstract compareTrueFirst(ZZ)LQ3/n;
.end method

.method public abstract result()I
.end method
