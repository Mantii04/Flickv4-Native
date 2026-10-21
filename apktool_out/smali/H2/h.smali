.class public abstract LH2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LH2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LH2/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LH2/h;->a:LH2/a;

    .line 7
    .line 8
    return-void
.end method

.method public static threadSafe(ILH2/d;)LL/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LH2/f;",
            ">(I",
            "LH2/d;",
            ")",
            "LL/e;"
        }
    .end annotation

    .line 1
    new-instance v0, LL/g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LL/g;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sget-object p0, LH2/h;->a:LH2/a;

    .line 7
    .line 8
    new-instance v1, LH2/e;

    .line 9
    .line 10
    invoke-direct {v1, v0, p1, p0}, LH2/e;-><init>(LL/g;LH2/d;LH2/g;)V

    .line 11
    .line 12
    .line 13
    return-object v1
.end method

.method public static threadSafeList()LL/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LL/e;"
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-static {v0}, LH2/h;->threadSafeList(I)LL/e;

    move-result-object v0

    return-object v0
.end method

.method public static threadSafeList(I)LL/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "LL/e;"
        }
    .end annotation

    .line 2
    new-instance v0, LL/g;

    invoke-direct {v0, p0}, LL/g;-><init>(I)V

    new-instance p0, LH2/b;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v1, LH2/c;

    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v2, LH2/e;

    invoke-direct {v2, v0, p0, v1}, LH2/e;-><init>(LL/g;LH2/d;LH2/g;)V

    return-object v2
.end method
